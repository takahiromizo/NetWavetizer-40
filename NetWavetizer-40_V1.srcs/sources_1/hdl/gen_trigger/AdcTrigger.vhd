library IEEE, mylib;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.STD_LOGIC_UNSIGNED.ALL;
use ieee.std_logic_misc.all;

use mylib.defBCT.all;
use mylib.defAdcTrigger.all;
use mylib.defAdcBlock.all;
use mylib.defAdcRO.all;
use mylib.defAD9637Adc.all;

entity AdcTrigger is
  port(
    -- System --
    rst             : in  std_logic;
    clkSys          : in  std_logic;
    clkAdc          : in  std_logic;
    DaqGate         : in  std_logic;
    
    -- ADC data --
    AdcData         : in  std_logic_vector(kNumAdcBit*kNumAdcInputBlock-1 downto 0);
    
    -- Level 1 trigger --
    L1Trig          : out std_logic;
    
    -- Local bus --
    addrLocalBus    : in  LocalAddressType;
    dataLocalBusIn  : in  LocalBusInType;
    dataLocalBusOut : out LocalBusOutType;
    reLocalBus      : in  std_logic;
    weLocalBus      : in  std_logic;
    readyLocalBus   : out std_logic
    );
end AdcTrigger;

architecture RTL of AdcTrigger is
  --attribute mark_debug            : string;

  signal daq_gate                 : std_logic;
  -- Discriminator ------------------------------------------------
  signal gate                     : std_logic_vector(kNumADCInputBlock-1 downto 0);
  signal adc_threshold            : AdcDataBlockArray;
  
  -- Self VETO ----------------------------------------------------
  signal hit_sign                 : std_logic_vector(kNumADCInputBlock-1 downto 0);
  
  -- Trigger (common stop) ----------------------------------------
  signal pre_delay_trigger        : std_logic;
  signal level1_trigger           : std_logic;
  
  -- Hit count ----------------------------------------------------
  signal pulse                    : std_logic;
  signal count                    : std_logic_vector(kHitCountBit-1 downto 0);

  -- Local bus controll -------------------------------------------
  signal state_lbus               : BusProcessType;
  signal sel_ch                   : std_logic_vector(4 downto 0);
  signal veto_period              : std_logic_vector(kWidthVETO-1 downto 0);
  signal trigger_delay            : std_logic_vector(kWidthTriggerDelay-1 downto 0);
  signal discri_period            : std_logic_vector(kWidthDiscriPeriod-1 downto 0);
  signal hit_count                : std_logic_vector(4 downto 0);
  signal active_ch                : std_logic_vector(kNumAdcInputBlock-1 downto 0);


  -- debug ---------------------------------------------------------
  --attribute mark_debug of pre_delay_trigger : signal is "TRUE";
  --attribute mark_debug of level1_trigger    : signal is "TRUE"; 

begin
  -- ==============================================================
  -- body
  -- ==============================================================

  L1Trig          <= '0' when daq_gate = '0' else level1_trigger;
  daq_gate        <= DaqGate;
  
  gen_discri : for i in 0 to kNumADCInputBlock-1 generate
  begin
    
    u_discri : entity mylib.Discriminator
    port map(
      -- System --
      rst            => rst,
      clk            => clkAdc,
      ActiveCh       => active_ch(i),
      
      -- ADC Data --
      AdcData        => AdcData((i+1)*kNumAdcBit-1 downto i*kNumAdcBit+0),
      -- ADC Threshold --
      AdcThreshold   => adc_threshold(i),
      -- Gate Pulse --
      GatePulse      => gate(i)
      );
  end generate;
  
  
  gen_selfveto : for i in 0 to kNumADCInputBlock-1 generate
  begin
    
    u_selfveto : entity mylib.SelfVETO
    port map(
      -- System --
      rst            => rst,
      clk            => clkAdc,
      
      VetoPeriod     => veto_period,
      ActivePeriod   => discri_period,

      -- Gate --
      GatePulseIn    => gate(i),
      GatePulseOut   => hit_sign(i)
      );
  end generate;
  
  u_gen_trigger : entity mylib.GenTrigger
    port map(
      -- System --
      clk            => clkAdc,
      
      Hit            => hit_sign,
      HitCount       => hit_count,
      Trigger        => pre_delay_trigger
      );
  
  u_trigger_delay : entity mylib.TriggerDelay
    port map(
      clk            => clkAdc,
      sigIn          => pre_delay_trigger,
      NumDelay       => trigger_delay,
      delayOut       => level1_trigger,
      dummyOut       => open
      );

  pulse  <= '0' when daq_gate = '0' else level1_trigger;
  
  u_hitcounter : entity mylib.HitCounter
    port map(
      -- System --
      rst           => rst,
      clk           => clkAdc,
      
      -- input --
      Pulse         => pulse,
      --output --
      HitCount      => count
      );
  
  
  -- Local bus process --------------------------------------------
  u_BusProcess : process(clkSys, rst)
  begin
    if(rst = '1') then
      dataLocalBusOut      <= x"00";
      readyLocalBus        <= '0';
      sel_ch               <= (others => '0');
      adc_threshold        <= (others => "000000000000");
      veto_period          <= x"0c8";                      -- 200 clock (default)
      trigger_delay        <= x"3e8";                      -- 1000 clock(default)
      discri_period        <= x"064";                      -- 100 clock (default)
      active_ch            <= (others => '0');
      hit_count            <= (others => '0');
      state_lbus           <= Init;
    elsif(clkSys'event and clkSys = '1') then
      case state_lbus is
        when Init =>
          state_lbus       <= Idle;
        
        when Idle =>
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
            when kChSelection(kNonMultiByte'range) =>
              sel_ch          <= dataLocalBusIn(kNumChBit-1 downto 0);
              
            when kAdcThreshold(kNonMultiByte'range) =>
              if(addrLocalBus(kMultiByte'range) = k1stbyte) then
                adc_threshold(conv_integer(sel_ch))(7 downto 0)    <= dataLocalBusIn;
              elsif(addrLocalBus(kMultiByte'range) = k2ndbyte) then
                adc_threshold(conv_integer(sel_ch))(kNumThreshBit-1 downto 8)    <= dataLocalBusIn(kNumThreshBit-1-8 downto 0);
              else
              end if;
              
            when kVETOPeriod(kNonMultiByte'range) =>
              if(addrLocalBus(kMultiByte'range) = k1stbyte) then
                veto_period(7 downto 0)               <= dataLocalBusIn;
              elsif(addrLocalBus(kMultiByte'range) = k2ndbyte) then
                veto_period(kWidthVETO-1 downto 8)    <= dataLocalBusIn(kWidthVETO-1-8 downto 0);
              else
              end if;
            
            when kTriggerDelay(kNonMultiByte'range) =>
              if(addrLocalBus(kMultiByte'range) = k1stbyte) then
                trigger_delay(7 downto 0)                     <= dataLocalBusIn;
              elsif(addrLocalBus(kMultiByte'range) = k2ndbyte) then
                trigger_delay(kWidthTriggerDelay-1 downto 8)  <= dataLocalBusIn(kWidthTriggerDelay-1-8 downto 0);
              else
              end if;
              
            when kActiveDiscri(kNonMultiByte'range) =>
              if(addrLocalBus(kMultiByte'range) = k1stbyte) then
                discri_period(7 downto 0)                     <= dataLocalBusIn;
              elsif(addrLocalBus(kMultiByte'range) = k2ndbyte) then
                discri_period(kWidthDiscriPeriod-1 downto 8)  <= dataLocalBusIn(kWidthDiscriPeriod-1-8 downto 0);
              else
              end if;
            
            when kHitCount(kNonMultiByte'range) =>
              hit_count       <= dataLocalBusIn(kNumChBit-1 downto 0);
              
            when kActiveCh(knonMultiByte'range) =>
              if(addrLocalBus(kMultiByte'range) = k1stbyte) then
                active_ch(7 downto 0)       <= dataLocalBusIn;
              elsif(addrLocalBus(kMultiByte'range) = k2ndbyte) then
                active_ch(15 downto 8)      <= dataLocalBusIn;
              elsif(addrLocalBus(kMultiByte'range) = k3rdbyte) then
                active_ch(23 downto 16)     <= dataLocalBusIn;
              elsif(addrLocalBus(kMultiByte'range) = k4thbyte) then
                active_ch(31 downto 24)     <= dataLocalBusIn;
              else
              end if;
              
            when others => null;
          end case;
          state_lbus       <= Done;
        
        when Read =>
          case addrLocalBus(kNonMultiByte'range) is
            when kChSelection(kNonMultiByte'range) =>
              dataLocalBusOut  <= "000" & sel_ch(kNumChBit-1 downto 0);
              
            when kAdcThreshold(kNonMultiByte'range) =>
              if(addrLocalBus(kMultiByte'range) = k1stbyte) then
                dataLocalBusOut  <= adc_threshold(conv_integer(sel_ch))(7 downto 0);
              elsif(addrLocalBus(kMultiByte'range) = k2ndbyte) then
                dataLocalBusOut  <= "0000" & adc_threshold(conv_integer(sel_ch))(kNumThreshBit-1 downto 8);
              else
              end if;
            
            when kVETOPeriod(kNonMultiByte'range) =>
              if(addrLocalBus(kMultiByte'range) = k1stbyte) then
                dataLocalBusOut     <= veto_period(7 downto 0);
              elsif(addrLocalBus(kMultiByte'range) = k2ndbyte) then
                dataLocalBusOut     <= "0000" & veto_period(kWidthVETO-1 downto 8);
              else
              end if;
            
            when kTriggerDelay(kNonMultiByte'range) =>
              if(addrLocalBus(kMultiByte'range) = k1stbyte) then
                dataLocalBusOut     <= trigger_delay(7 downto 0);
              elsif(addrLocalBus(kMultiByte'range) = k2ndbyte) then
                dataLocalBusOut     <= "0000" & trigger_delay(kWidthTriggerDelay-1 downto 8);
              else
              end if;
              
            when kActiveDiscri(kNonMultiByte'range) =>
              if(addrLocalBus(kMultiByte'range) = k1stbyte) then
                dataLocalBusOut     <= discri_period(7 downto 0);
              elsif(addrLocalBus(kMultiByte'range) = k2ndbyte) then
                dataLocalBusOut     <= "0000" & discri_period(kWidthDiscriPeriod-1 downto 8);
              else
              end if;
            
            when kHitCount(kNonMultiByte'range) =>
              dataLocalBusOut  <= "000" & hit_count(kNumChBit-1 downto 0);
              
            when kActiveCh(kNonMultiByte'range) =>
              if(addrLocalBus(kMultiByte'range) = k1stbyte) then
                dataLocalBusOut         <= active_ch(7 downto 0);
              elsif(addrLocalBus(kMultiByte'range) = k2ndbyte) then
                dataLocalBusOut         <= active_ch(15 downto 8);
              elsif(addrLocalBus(kMultiByte'range) = k3rdbyte) then
                dataLocalBusOut         <= active_ch(23 downto 16);
              elsif(addrLocalBus(kMultiByte'range) = k4thbyte) then
                dataLocalBusOut         <= active_ch(31 downto 24);
              else
              end if;
            
            when kTotalHit(kNonMultiByte'range) =>
              if(addrLocalBus(kMultiByte'range) = k1stbyte) then
                dataLocalBusOut         <= count(7 downto 0);
              elsif(addrLocalBus(kMultiByte'range) = k2ndbyte) then
                dataLocalBusOut         <= count(15 downto 8);
              elsif(addrLocalBus(kMultiByte'range) = k3rdbyte) then
                dataLocalBusOut         <= count(23 downto 16);
              elsif(addrLocalBus(kMultiByte'range) = k4thbyte) then
                dataLocalBusOut         <= count(kHitCountBit-1 downto 24);
              else
              end if;
              
            when others =>
	          dataLocalBusOut <= x"ff";
              
          end case;
          state_lbus       <= Done;
          
        when Done =>
          readyLocalBus    <= '1';
          if(weLocalBus = '0' or reLocalBus = '0') then
            state_lbus     <= Idle;
          end if;  
      
        -- probably this is error --
        when others =>
          state_lbus       <= Init;
      end case;
    end if;
  end process u_BusProcess; 

end RTL;