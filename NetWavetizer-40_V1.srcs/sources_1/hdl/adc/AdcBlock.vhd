library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;
use ieee.std_logic_misc.all; -- to use or_reduce()

library UNISIM;
use UNISIM.VComponents.all;

library mylib;
use mylib.defAdcRO.all;
use mylib.defAD9637Adc.all;
use mylib.defAdcBlock.all;
use mylib.defBCT.all;

entity AdcBlock is
  generic(
    initCh                     : integer := 0;
    magicWord                  : std_logic_vector(3 downto 0) := X"a" -- for ADC I'll use X"aa" (10101010) considering humming distance (ff, cc)
    );
  port(
    rst                        : in  std_logic;
    clkSys                     : in  std_logic; -- 100 MHz
    clkIdelayRef               : in  std_logic;
    clkAdc                     : out std_logic_vector(kNumADCBlock-1 downto 0);

    -- control registers --
    busyAdc                    : out std_logic;
    readyAdc                   : out std_logic;
    
    -- data input --
    ADC_DATA_P                 : in  std_logic_vector(kNumAdcInputBlock-1 downto 0);
    ADC_DATA_N                 : in  std_logic_vector(kNumAdcInputBlock-1 downto 0);
    ADC_DFRAME_P               : in  std_logic_vector(kNumADCBlock-1 downto 0);
    ADC_DFRAME_N               : in  std_logic_vector(kNumADCBlock-1 downto 0);
    ADC_DCLK_P                 : in  std_logic_vector(kNumADCBlock-1 downto 0);
    ADC_DCLK_N                 : in  std_logic_vector(kNumADCBlock-1 downto 0);
    --cStop                      : in  std_logic;
    
    -- Local bus --
    addrLocalBus               : in  LocalAddressType;
    dataLocalBusIn             : in  LocalBusInType;
    dataLocalBusOut            : out LocalBusOutType;
    reLocalBus                 : in  std_logic;
    weLocalBus                 : in  std_logic;
    readyLocalBus              : out std_logic

  );
end AdcBlock;

architecture RTL of AdcBlock is
  --attribute mark_debug                   : string;
  --attribute keep                         : string;

  -- internal signal --------------------------------------------------------
  signal busy_adc                        : std_logic;

  -- Local bus control ------------------------------------------------------
  signal state_lbus                      : BusProcessType;
  signal reg_adc                         : regAdc;
  signal reg_adc_ro_reset                : std_logic;

  signal rb_in                           : std_logic_vector(kNumAdcBit*kNumAdcInputBlock-1 downto 0);

  -- ADC --------------------------------------------------------------------
  signal adc_ro_reset                    : std_logic;
  signal adc_ro_reset_vio                : std_logic_vector(0 downto 0);
  signal tap_value_in                    : std_logic_vector(kNumTapBit-1 downto 0);
  signal tap_value_frame_in              : std_logic_vector(kNumTapBit-1 downto 0);
  signal en_ext_tapin                    : std_logic_vector(0 downto 0);
  signal adcro_is_ready                  : std_logic_vector(kNumADCBlock-1 downto 0);
  --signal clk_adc                         : std_logic_vector(kNumADC-1 downto 0);
  --signal gclk_adc                        : std_logic_vector(kNumADC-1 downto 0);
  signal adc_data                        : AdcDataBlockArray; -- 32 * 12


  COMPONENT vio_adc
  PORT (
    clk         : IN  STD_LOGIC;
    probe_out0  : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    probe_out1  : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
    probe_out2  : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
    probe_out3  : OUT STD_LOGIC_VECTOR(0 DOWNTO 0)
  );
  END COMPONENT;

  
  -- debug ------------------------------------------------------------------
  --attribute mark_debug of full_flag           : signal is "true";
  --attribute mark_debug of pgfull_flag         : signal is "true";
  --attribute mark_debug of busy_fifo           : signal is "true";
  --attribute mark_debug of full_block          : signal is "true";
  --attribute mark_debug of afull_block         : signal is "true";
  --attribute mark_debug of busy_process        : signal is "true";
  --attribute mark_debug of busyAdc             : signal is "true";
  --attribute mark_debug of we_ringbuf          : signal is "true";
  --attribute mark_debug of re_ringbuf          : signal is "true";
  --attribute mark_debug of rv_ringbuf          : signal is "true";
  --attribute mark_debug of we_chfifo           : signal is "true";
  --attribute mark_debug of bufwe_ring2chfifo   : signal is "true";
  --attribute mark_debug of re_chfifo           : signal is "true";
  --attribute mark_debug of rv_raw_chfifo       : signal is "true";
  --attribute mark_debug of n_of_word           : signal is "true";
  --attribute mark_debug of coarse_counter      : signal is "true";
  --attribute mark_debug of cstop_issed         : signal is "true";
  --attribute mark_debug of pgfull_fifo         : signal is "true";
  --attribute mark_debug of data_bit            : signal is "true";
  --attribute mark_debug of state_search        : signal is "true";
  --attribute mark_debug of state_build         : signal is "true";
  --attribute maek_debug of state_build         : signal is "true";
  --attribute mark_debug of empty_fifo          : signal is "true";
  --attribute mark_debug of empty_bbuffer       : signal is "true";
  --attribute mark_debug of empty_block         : signal is "true";
  --attribute mark_debug of local_index         : signal is "true";
  
begin
  -- ========================================================================
  -- body
  -- ========================================================================
  readyAdc  <= adcro_is_ready(0) and adcro_is_ready(1) and adcro_is_ready(2) and adcro_is_ready(3); 

  -- signal connection ------------------------------------------------------
  u_VIO : vio_adc
    PORT MAP (
      clk         => clkSys,
      probe_out0  => adc_ro_reset_vio,
      probe_out1  => tap_value_in,
      probe_out2  => tap_value_frame_in,
      probe_out3  => en_ext_tapin
      );
  
  adc_ro_reset       <= reg_adc_ro_reset or adc_ro_reset_vio(0);
  u_ADC : entity mylib.AdcRO
    generic map
    (
      enDEBUG     => TRUE
    )
    port map
    (
      -- SYSTEM port --
      rst             => adc_ro_reset,
      clkSys          => clkSys,
      clkIdelayRef    => clkIdelayRef,
      tapValueIn      => tap_value_in,
      tapValueFrameIn => tap_value_frame_in,
      enExtTapIn      => en_ext_tapin(0),
      enBitslip       => '1',
      frameRefPatt1   => "111111",
      frameRefPatt2   => "000000",
      fcoRefPatt      => "111111000000",

      -- Status --
      isReady         => adcro_is_ready,
      bitslipErr      => open,
      clkAdc          => open, -- clk_adc (later gclk_adc)

      -- Data Out --
      validOut        => open,
      adcDataOut      => adc_data,
      adcFrameOut     => open,

      -- ADC in --
      adcDClkP        => ADC_DCLK_P,
      adcDClkN        => ADC_DCLK_N,
      adcDataP        => ADC_DATA_P,
      adcDataN        => ADC_DATA_N,
      adcFrameP       => ADC_DFRAME_P,
      adcFrameN       => ADC_DFRAME_N

    );

  -- For debug --
  --BUFG_inst : BUFG
  --port map (
  --  O    => gclk_adc,
  --  I    => clk_adc
  --);
  
  gen_vectorizeAdcData : for i in 0 to kNumAdcInputBlock-1 generate -- 32
    -- zero suppression before this
    rb_in(kNumAdcBit*(i+1)-1 downto kNumAdcBit*i) <= adc_data(i);
  end generate;

  -- Local bus process ------------------------------------------------------
  u_BusProcess : process(clkSys, rst)
  begin
    if(rst = '1') then
      dataLocalBusOut       <= x"00";
      readyLocalBus         <= '0';
      reg_adc.offset_ptr    <= (others => '0');
      reg_adc.window_max    <= (others => '0');
      reg_adc.window_min    <= (others => '0');
      reg_adc_ro_reset      <= '1';
      state_lbus            <= Init;
    elsif(clkSys'event and clkSys = '1') then
      case state_lbus is
        when Init =>
	  state_lbus        <= Idle;
	
	when Idle =>
	  readyLocalBus     <= '0';
	  if(weLocalBus = '1' or reLocalBus = '1') then
	    state_lbus      <= Connect;
          end if;
	
	when Connect =>
          if(weLocalBus = '1') then
	    state_lbus       <= Write;
	  else
            state_lbus       <= Read;
	  end if;
	
	when Write =>
	  case addrLocalBus(kNonMultiByte'range) is
	    when kAdcRoReset(kNonMultiByte'range) =>
	      reg_adc_ro_reset <= dataLocalBusIn(0);

	    when others => null;
      end case;
	  state_lbus         <= Done;

	when Read =>
      case addrLocalBus(kNonMultiByte'range) is
	    when kAdcRoReset(kNonMultiByte'range) =>
	      dataLocalBusOut <= "0000000" & reg_adc_ro_reset;

	    when kIsReady(kNonMultiByte'range) =>
	      dataLocalBusOut <= "0000" & adcro_is_ready;

        when others =>
	      dataLocalBusOut <= x"ff";
      end case;
	  state_lbus         <= Done;

	when Done =>
	  readyLocalBus      <= '1';
	  if(weLocalBus = '0' and reLocalBus = '0') then
	    state_lbus       <= Idle;
	  end if;

	-- probably this is error --
	when others =>
	  state_lbus         <= Init;
      end case;
    end if;
  end process u_BusProcess;

end RTL;
