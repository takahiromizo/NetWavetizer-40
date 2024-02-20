library ieee, UNISIM,mylib;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
use UNISIM.vcomponents.all;
use mylib.defA9C.all;
use mylib.defBCT.all;



entity AD9637SPI is
  port (
    -- System --
    CLK              : in    std_logic;
    RST              : in    std_logic;
    
    -- Module output --
    ADC_SYNC         : out   std_logic;
    ADC_SCK          : out   std_logic_vector(kNumADC-1 downto 0);
    ADC_CSB          : out   std_logic_vector(kNumADC-1 downto 0);
    ADC_SDIO         : inout std_logic_vector(kNumADC-1 downto 0);
    
    rd               : out std_logic_vector(kNumADC-1 downto 0);
    
    -- Local bus --
    addrLocalBus     : in    LocalAddressType;
    dataLocalBusIn   : in    LocalBusInType;
    dataLocalBusOut  : out   LocalBusOutType;
    reLocalBus       : in    std_logic;
    weLocalBus       : in    std_logic;
    readyLocalBus    : out   std_logic
  );
end AD9637SPI;

architecture RTL of AD9637SPI is
  -- internal signal declaration ------------------------------
  -- sequencer signals --
  signal state_lbus                 : A9CBusProcessType;
  signal state_sbus                 : SubBusProcessType;
  signal exec_subseq, ack_subseq    : std_logic;
  signal en_write, en_read, exec_write, exec_read, ack_spi  : std_logic_vector(kNumADC-1 downto 0);
  
  -- spi signals --
  signal addr_AD9637     : std_logic_vector(15 downto 0);
  signal reg_to_AD9637   : std_logic_vector(7 downto 0);
  signal reg_from_AD9637 : RegDataArray;
  signal out_tim         : std_logic;
  signal sdout           : std_logic;
  signal sddir           : std_logic_vector(kNumADC-1 downto 0);
  signal in_sdin         : std_logic_vector(kNumADC-1 downto 0);
  signal out_sck, out_csb, out_sddir, out_sdout : std_logic_vector(kNumADC-1 downto 0);
  
  component AD_ADC_SPI
  port(
    -- System --
    CLK            : in  std_logic;
    RST            : in  std_logic;
    TIM            : in  std_logic;
    
    -- SPI registers --
    addrAD9637     : in  std_logic_vector(12 downto 0);
    execWRITE      : in  std_logic;
    regToAD9637    : in  std_logic_vector(7 downto 0);
    execREAD       : in  std_logic;
    regfromAD9637  : out std_logic_vector(7 downto 0);
    ACK            : out std_logic;
    
    -- ADC SPI --
    SCK            : out std_logic;
    CSB            : out std_logic;
    SDDIR          : out std_logic;
    SDIN           : in  std_logic;
    SDOUT          : out std_logic
  );
  end component;
  
  component Selector_SPI_Port
  port(
    csbIn     : in  std_logic_vector(kNumADC-1 downto 0);
    sckIn     : in  std_logic_vector(kNumADC-1 downto 0);
    sddirIn   : in  std_logic_vector(kNumADC-1 downto 0);
    sdoIn     : in  std_logic_vector(kNumADC-1 downto 0);
    sckOut    : out std_logic_vector(kNumADC-1 downto 0);
    sddirOut  : out std_logic_vector(kNumADC-1 downto 0);
    sdoOut    : out std_logic
  );
  end component;
  
  component JKFF
    port(
    arst  : in  std_logic;
	J	  : in  std_logic;
	K     : in  std_logic;
	clk   : in  std_logic;
	Q     : out std_logic
    );
  end component;
  
  -- ======================== body ============================
begin
  -- signal connection ----------------------------------------
  ADC_CSB    <= out_csb;
  ack_subseq <= ack_spi(0) or ack_spi(1) or ack_spi(2) or ack_spi(3);
  rd         <= en_read;
  
  -- clock dividing 2 --
  u_Dividing2 : JKFF
    port map(
      arst        => RST,
      J           => '1',
      K           => '1',
      clk         => CLK,
      Q           => out_tim
    );
  
  -- IOBUF --
  gen_IOBUF : for i in 0 to kNumADC-1 generate
    u_iobuf : IOBUF
      generic map(
        DRIVE       => 12,
        IOSTANDARD  => "LVCMOS25",
        SLEW        => "SLOW")
      port map(
        O   => in_sdin(i),
        IO  => ADC_SDIO(i),
        I   => sdout,
        T   => sddir(i)
        );
  end generate;
  
  -- SPI instance --
  gen_ADC_SPI : for i in 0 to kNumADC-1 generate
    uAD_ADC_SPI : AD_ADC_SPI
     port map(
       RST           => RST,
       CLK           => CLK,
       TIM           => out_tim,
       -- SPI registers
       addrAD9637    => addr_AD9637(12 downto 0),
       execWRITE     => exec_write(i),
       regToAD9637   => reg_to_AD9637,
       execREAD      => exec_read(i),
       regFromAD9637 => reg_from_AD9637(i),
       ACK           => ack_spi(i),
       -- ADC SPI
       SCK           => out_sck(i),
       CSB           => out_csb(i),
       SDDIR         => out_sddir(i),
       SDIN          => in_sdin(i),
       SDOUT         => out_sdout(i)
     );
  end generate;
  
  
  -- Select SPI port --
  u_Selector_SPI_Port : Selector_SPI_Port
    port map(
      -- In --
      csbIn     => out_csb,
      sckIn     => out_sck,
      sddirIn   => out_sddir,
      sdoIn     => out_sdout,
      -- Out --
      sckOut    => ADC_SCK,
      sddirOut  => sddir,
      sdoOut    => sdout
    );
  
  -------------------------------------------------------------
  -- Sub sequence process
  -------------------------------------------------------------
  u_SubProcess : process(CLK, RST)
  begin
    if(RST ='1') then
      state_sbus     <= SubIdle;
      exec_write     <= (others => '0');
      exec_read      <= (others => '0');
    elsif(CLK'event and CLK = '1') then
      case state_sbus is
        when SubIdle =>
          if(exec_subseq = '1') then
            state_sbus  <= ExecModule;
          end if;
          
        when ExecModule =>
          if(weLocalBus = '1') then
            exec_write  <= en_write;
          else
            exec_read   <= en_read;
          end if;
          state_sbus    <= WaitAck;
        
        when WaitAck =>
          exec_write    <= (others => '0');
          exec_read     <= (others => '0');
          if(ack_subseq = '1') then
            state_sbus  <= SubDone;
          end if;
        
        when SubDone =>
          state_sbus    <= SubIdle;
          
      end case;
    end if;
  end process u_SubProcess;

  -------------------------------------------------------------
  -- Local bus process
  -------------------------------------------------------------
  u_BusProcess : process(CLK, RST)
  begin
    if(RST = '1') then
      state_lbus  <= Init;
    elsif(CLK'event and CLK = '1') then
      case state_lbus is
        when Init =>
          dataLocalBusOut  <= x"00";
          readyLocalBus    <= '0';
          addr_AD9637      <= (others => '0');
          reg_to_AD9637    <= (others => '0');
          exec_subseq      <= '0';
          en_write         <= (others => '0');
          en_read          <= (others => '0');
          ADC_SYNC         <= '0';
          state_lbus       <= Idle;
        
        when Idle =>
          ADC_SYNC         <= '0';
          readyLocalBus    <= '0';
          if(weLocalBus = '1' or reLocalBus = '1') then
            state_lbus     <= Connect;
          end if;
        
        when Connect =>
          if(weLocalBus = '1') then
            state_lbus     <= Write;
          else
            state_lbus     <= Read;
          end if;
        
        when Write =>
          case addrLocalBus(kNonMultiByte'range) is
            when kSPIExec(kNonMultiByte'range) =>
              -- Write register --
              if(addrLocalBus(kSpiCS'range) = "0000") then
                en_write  <= "0001";
              elsif(addrLocalBus(kSpiCS'range) = "0001") then
                en_write  <= "0010";
              elsif(addrLocalBus(kSpiCS'range) = "0010") then
                en_write  <= "0100";
              elsif(addrLocalBus(kSpiCS'range) = "0011") then
                en_write  <= "1000";
              end if;
              state_lbus  <= Execute;
            
            when kSetReg(kNonMultiByte'range) =>
              if(addrLocalBus(kMultiByte'range) = k1stByte) then
                addr_AD9637(15 downto 8) <= dataLocalBusIn;
              elsif(addrLocalBus(kMultiByte'range) = k2ndByte) then
                addr_AD9637(7 downto 0)  <= dataLocalBusIn;
              elsif(addrLocalBus(kMultiByte'range) = k3rdByte) then
                reg_to_AD9637            <= dataLocalBusIn;
              end if;
              state_lbus     <= Done;
              
            when kADCSync(kNonMultiByte'range) =>
              ADC_SYNC       <= '1';
              state_lbus     <= Done;
            
            when others =>
              state_lbus   <= Done;
            end case;
        
        when Read =>
          if(addrLocalBus(kNonMultiByte'range) = kSPIExec(kNonMultiByte'range)) then
            if(addrLocalBus(kSpiCS'range) = "0000") then
              en_read   <= "0001";
            elsif(addrLocalBus(kSpiCS'range) = "0001") then
              en_read   <= "0010";
            elsif(addrLocalBus(kSpiCS'range) = "0010") then
              en_read   <= "0100";
            elsif(addrLocalBus(kSpiCS'range) = "0011") then
              en_read   <= "1000";
            end if;
            state_lbus  <= Execute;
          else
            state_lbus  <= Done;
          end if;
        
        when Execute =>
          exec_subseq      <= '1';
          if(state_sbus = SubDone) then
            exec_subseq    <= '0';
            state_lbus     <= Finalize;
          end if;
        
        when Finalize =>
          if(reLocalBus = '1') then
            if(addrLocalBus(kSpiCS'range) = "0000") then
              dataLocalBusOut  <= reg_from_AD9637(0);
            elsif(addrLocalBus(kSpiCS'range) = "0001") then
              dataLocalBusOut  <= reg_from_AD9637(1);
            elsif(addrLocalBus(kSpiCS'range) = "0010") then
              dataLocalBusOut  <= reg_from_AD9637(2);
            elsif(addrLocalBus(kSpiCS'range) = "0011") then
              dataLocalBusOut  <= reg_from_AD9637(3);  
            end if;
          end if;
          state_lbus       <= Done;
        
        when Done =>
          readyLocalBus    <= '1';
          if(weLocalBus ='0' and reLocalBus = '0') then
            state_lbus     <= Idle;
          end if;
        
        when others =>
          state_lbus       <= Idle;
          
      end case;
    end if;
  end process u_BusProcess;

end RTL;
