library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;

Library UNISIM;
use UNISIM.vcomponents.all;

library mylib;
use mylib.defAD9637Adc.all;

-- ----------------------------------------------------
-- == Clock network
-- Forwarded fast clock ---> BUFIO     ---> clk_fast
--                      |--> BUFR(1/3) ---> clk_slow
-- ----------------------------------------------------


entity AD9637Adc is
  generic
  (
    genIDELAYCTRL        : boolean; -- If TRUE, IDELAYCTRL is instantiated.
    kDiffTerm            : boolean; -- IBUF DIFF_TERM 
    kIoStandard          : string;  -- IOSTANDARD of IBUFDS
    kIoDelayGroup        : string;  -- IODELAY_GROUP for IDELAYCTRL and IDELAY
    --kFreqFastClk         : real;    -- Frequency of SERDES fast clock(MHz).
    kFreqRefClk          : real;    -- Frequency of refclk for IDELAYCTRL (MHz).
    enDEBUG              : boolean := false
  );
  port
  (
    -- SYSTEM port --
    rst                  : in  std_logic;    -- Asynchronous reset (active high)
    invPolarity          : in  std_logic_vector(kNumAdcCh+kNumFrame-1 downto 0);
    clkIdelayRef         : in  std_logic;      -- 200 MHz ref. clock
    tapValueIn           : in  TapArray;       -- TAP number input
    tapValueOut          : out TapArray;       -- TAP number output
    enBitslip            : in  std_logic;      -- Enable bitslip sequence
    frameRefPatt1        : in  AdcDataSubType; -- ADC FRAME reference bit pattern - No.1
    frameRefPatt2        : in  AdcDataSubType; -- ADC FRAME reference bit pattern - No.2
    fcoRefPatt           : in  FcoDataType;    -- FCO FRAME reference bit pattern
    
    -- Status --
    isReady              : out std_logic;      -- If high, data outputs are valid
    bitslipErr           : out std_logic;      -- Indicate bitslip failure
    
    -- Data Out --
    adcClk               : out std_logic;      -- Regional clock: clk_slow
    adcDataOut           : out AdcDataArray;   -- De-serialized ADC data
    adcFrameOut          : out AdcDataType;    -- De-serialized frame bit pattern
    
    -- ADC In --
    adcDClkP             : in  std_logic;                              -- ADC DCLK(forwarded fast clock)
    adcDClkN             : in  std_logic;
    adcDataP             : in  std_logic_vector(kNumAdcCh-1 downto 0); -- ADC DATA
    adcDataN             : in  std_logic_vector(kNumAdcCh-1 downto 0);
    adcFrameP            : in  std_logic;                              -- ADC FRAME
    adcFrameN            : in  std_logic

  );
end AD9637Adc;

architecture RTL of AD9637Adc is
  -- System --
  signal adc_dclk               : std_logic;
  signal clk_fast, clk_slow     : std_logic;
  signal clk_dclk               : std_logic;
  signal clk_smp                : std_logic;
  signal clk_div                : std_logic;
  signal clk_shift              : std_logic;
  signal clk_reg                : std_logic;

  signal rst_all                : std_logic;
  signal semi_sync_reset        : std_logic;
  signal sync_reset             : std_logic_vector(kSyncLength-1 downto 0);
  signal sync_en_bitslip        : std_logic_vector(kSyncLength-1 downto 0);

  signal is_ready               : std_logic;
  signal bitslip_error          : std_logic;

  signal adc_din_p              : std_logic_vector(kNumAdcCh+kNumFrame-1 downto 0);
  signal adc_din_n              : std_logic_vector(kNumAdcCh+kNumFrame-1 downto 0);

  signal tap_value_in           : TapArray;
  signal tap_value_out          : TapArray;

  -- IDELAY --
  signal ready_ctrl             : std_logic;

  signal serdes_reset           : std_logic;
  signal idelay_reset           : std_logic;
  signal idelay_tap_load        : std_logic;

  signal idelay_is_adjusted     : std_logic;
  signal state_idelay           : IdelayControlProcessType;

  -- ISERDES --
  subtype SerDesType is std_logic_vector(kWidthDev-1 downto 0);
  type SerDesOutType is array (integer range kNumAdcCh+kNumFrame-1 downto 0) of SerDesType;
  signal dout_serdes            : SerDesOutType;
  signal rx_data                : DataFrameArray;
  signal reg_adc_data           : AdcDataArray;
  signal reg_adc_frame          : AdcDataType;

  signal en_bitslip             : std_logic;
  signal en_patt_check          : std_logic;
  signal frame_patt_count       : integer range 0 to kMaxPattCheck;
  signal bit_aligned            : std_logic;
  signal bitslip_failure        : std_logic;
  signal state_bitslip          : BitslipControlProcessType;
  
  signal en_fco_check           : std_logic;
  signal en_shift               : std_logic;
  signal fco_patt_count         : integer range 0 to kMaxPattCheck;
  signal state_clkadjust        : ClkSmpControlProcessType;

  -- IODELAY_GROUP --
  attribute IODELAY_GROUP                 : string;

  --attribute mark_debug                    : boolean;
  --attribute mark_debug of state_bitslip   : signal is enDEBUG;
  --attribute mark_debug of state_idelay    : signal is enDEBUG;
  --attribute mark_debug of state_clkadjust : signal is enDEBUG;
  --attribute mark_debug of dout_serdes   : signal is enDEBUG;

  -- Async reg --
  attribute async_reg                   : boolean;
  attribute async_reg of u_sys_to_adc   : label is true;

  -- debug ---------------------------------------------------------------
  
  component JKFF
    port(
      arst  : in  std_logic;
	  J	    : in  std_logic;
	  K     : in  std_logic;
	  clk   : in  std_logic;
	  Q     : out std_logic     
    );
  end component;

  begin
    -- ===================================================================
    --                                body
    -- ===================================================================
    
    adc_din_p    <= adcFrameP & adcDataP;
    adc_din_n    <= adcFrameN & adcDataN;

    tapValueOut  <= tap_value_out;
    adcClk       <= clk_slow;
    adcDataOut   <= reg_adc_data;
    adcFrameOut  <= reg_adc_frame;

    -- Clock definition --------------------------------------------------
    IBUFDS_inst : IBUFDS
      generic map(
        DIFF_TERM    => kDiffTerm,  -- Differential Termination
	    IBUF_LOW_PWR => FALSE,      -- Low power (TRUE) vs. performance (FALSE) setting for reference I/O standards
	    IOSTANDARD   => kIoStandard
      )
      port map (
        O  => adc_dclk, -- Buffer output
	    I  => adcDClkP, -- Diff_p buffer input (connect directly to top_level port)
	    IB => adcDClkN  -- Diff_n buffer input (connect directly to top_level port)
      );

    u_BUFIO_inst : BUFIO
      port map (
        O  => clk_fast, -- 1-bit output: Clock output (connect to I/O clock loads).
	    I  => adc_dclk  -- 1-bit input : Clock input  (connect to an IBUF or BUFMR).
      );

    u_BUFR_inst : BUFR
      generic map (
        BUFR_DIVIDE  => "3",      -- Values: "BYPASS, 1, 2, 3, 4, 5, 6, 7, 8"
	    SIM_DEVICE   => "7SERIES" -- Must be set to "7SERIES"
      )
      port map (
        O   => clk_slow, -- 1-bit output: Clock output port
	    CE  => '1',      -- 1-bit input: Active high, clock enable (Divided modes only)
	    CLR => '0',      -- 1-bit input: Active high, asynchronous clear (Divided modes only)
	    I   => adc_dclk  -- 1-bit input: Clock buffer input driven by an IBUF, MMCM or local interconnect
      );
      
    u_BUFR_fast : BUFR
      generic map (
        BUFR_DIVIDE  => "1",      -- Values: "BYPASS, 1, 2, 3, 4, 5, 6, 7, 8"
	    SIM_DEVICE   => "7SERIES" -- Must be set to "7SERIES"
      )
      port map (
        O   => clk_dclk, -- 1-bit output: Clock output port
	    CE  => '1',      -- 1-bit input: Active high, clock enable (Divided modes only)
	    CLR => '0',      -- 1-bit input: Active high, asynchronous clear (Divided modes only)
	    I   => adc_dclk  -- 1-bit input: Clock buffer input driven by an IBUF, MMCM or local interconnect
      );
    
    u_JKFF_clkslow_div : JKFF
      port map(
        arst        => rst,
        J           => '1',
        K           => '1',
        clk         => clk_slow,
        Q           => clk_div
      );
    
    u_clk_shift : process(clk_slow)
    begin
      if(clk_slow'event and clk_slow = '1') then
        if(en_shift = '1') then
            clk_reg    <= clk_div;
            clk_shift  <= clk_reg;
        elsif(en_shift = '0') then
            clk_shift  <= clk_div;
        end if;
      end if;
    end process;
    
    u_clk_smp : process(clk_dclk)
    begin
      if(clk_dclk'event and clk_dclk = '1') then
        clk_smp        <= clk_shift;
      end if;
    end process;

    -- Clock domain crossing -----------------------------------------------
    u_sys_to_adc : process(clk_slow)
    begin
      if(clk_slow'event and clk_slow = '1') then
        sync_en_bitslip  <= sync_en_bitslip(kSyncLength-2 downto 0) & enBitslip;
        sync_reset       <= sync_reset(kSyncLength-2 downto 0) & semi_sync_reset;
      end if;
    end process;

    -- Reset sequence --
    u_reset_gen : entity mylib.ResetGen
      port map(rst_all, clk_slow, semi_sync_reset);

    -- ISerdes implementation -----------------------------------------------
    gen_idelayctrl : if genIDELAYCTRL = TRUE generate
      attribute IODELAY_GROUP of IDELAYCTRL_inst : label is kIoDelayGroup;
    begin
      IDELAYCTRL_inst : IDELAYCTRL
        port map (
          RDY    => ready_ctrl,
	      REFCLK => clkIdelayRef,
	      RST    => rst
	    );

	  rst_all  <= rst or (not ready_ctrl);
    end generate;

    ugen_idelayctrl : if genIDELAYCTRL = FALSE generate
      rst_all  <= rst;
    end generate;

    gen_serdes : for i in 0 to kNumAdcCh+kNumFrame-1 generate
      begin

        u_iserdes : entity mylib.IserdesImpl
          generic map
	      (
	        kSysW         => kWidthSys,
	        kDevW         => kWidthDev,
	        kDiffTerm     => kDiffTerm,
	        kIoStandard   => kIoStandard,
	        kIoDelayGroup => kIoDelayGroup,
	        kFreqRefClk   => kFreqRefClk
	      )
	      port map
	      (
	         -- SYSTEM --
	         invPolarity        => invPolarity(i),

	         -- IBUDS
	         dInFromPinP        => adc_din_p(i),
	         dInFromPinN        => adc_din_n(i),

	         -- IDELAY
	         rstIDelay          => idelay_reset,
	         ceIDelay           => '0',
	         incIDelay          => '1',
	         tapIn              => tap_value_in(i),
	         tapOut             => tap_value_out(i),

             -- ISERDES
             dOutToDevice       => dout_serdes(i),
             bitslip            => en_bitslip,

	         -- Clock and reset
	         clkIn              => clk_fast,
	         clkDivIn           => clk_slow,
	         ioReset            => serdes_reset
	         );
    end generate;
    
    u_combine : process(clk_slow)
    begin
      if(clk_slow'event and clk_slow = '1') then
        for i in 0 to kNumAdcCh loop
          rx_data(i)   <=  rx_data(i)(kWidthDev-1 downto 0) & dout_serdes(i);
        end loop;
      end if;
    end process;

    u_bufdout : process(clk_smp)
    begin
      if(clk_smp'event and clk_smp = '1') then
        for i in 0 to kNumAdcCh-1 loop
          reg_adc_data(i)   <= "000000000000" xor rx_data(i);
	    end loop;

	    reg_adc_frame  <= rx_data(kNumAdcCh);
      end if;
    end process;

    -- Idelay control -------------------------------------------
    serdes_reset   <= sync_reset(kSyncLength-1);
    idelay_reset   <= sync_reset(kSyncLength-1) or idelay_tap_load;

    u_idelay_sm : process(serdes_reset, clk_slow)
    begin
      if(clk_slow'event and clk_slow = '1') then
	    if(serdes_reset = '1') then
          idelay_tap_load      <= '0';
          idelay_is_adjusted   <= '0';
	      state_idelay         <= Init;
	    else
          case state_idelay is
            when Init =>
	          tap_value_in       <= tapValueIn;
	          state_idelay       <= TapLoad;

	        when TapLoad =>
	          idelay_tap_load    <= '1';
	          state_idelay       <= IdelayAdjusted;

	        when IdelayAdjusted =>
	          idelay_tap_load    <= '0';
	          idelay_is_adjusted <= '1';
	         
	        when others =>
	          state_idelay       <= Init;

          end case;
        end if;
      end if;
    end process;

    -- Bit Slip -------------------------------------------------
    u_check_idle : process(clk_slow)
    begin
      if(clk_slow'event and clk_slow = '1') then
        if(en_patt_check = '1') then
          if(frameRefPatt1 = dout_serdes(kNumAdcCh)) then
	        frame_patt_count  <= frame_patt_count + 1;
	      elsif(frameRefPatt2 = dout_serdes(kNumAdcCh)) then
	        frame_patt_count  <= frame_patt_count + 1;
	      else
	        frame_patt_count  <= 0;
          end if;
	    else
	      frame_patt_count    <= 0;
        end if;
      end if;
    end process;

    u_bitslip_sm : process(serdes_reset, clk_slow)
      variable num_patt_check     : integer range 0 to kWidthDev;
      variable elapsed_time       : integer range 0 to kMaxPattCheck;
    begin
      if(clk_slow'event and clk_slow = '1') then
        if(serdes_reset = '1') then
          elapsed_time   := 0;
	      num_patt_check := 0;
	      en_bitslip     <= '0';
	      bit_aligned    <= '0';

	      state_bitslip  <= Init;

        else
          case state_bitslip is
	        when Init =>
	          state_bitslip    <= WaitStart;

	        when WaitStart =>
	          if(idelay_is_adjusted = '1' and sync_en_bitslip(kSyncLength-1) = '1') then
	            en_patt_check   <= '1';
		        state_bitslip   <= CheckFramePatt;
	          end if;

	        when CheckFramePatt =>
              elapsed_time  := elapsed_time + 1;
	          if(frame_patt_count = kPattOkThreshold)then
	            en_patt_check   <= '0';
		        bit_aligned     <= '1';
		        state_bitslip   <= BitslipFinished;
	          elsif(elapsed_time = kMaxPattCheck-1) then
		        num_patt_check  := num_patt_check + 1;
		        en_bitslip      <= '1';
		        state_bitslip   <= BitSlip;
	          end if;

	        when BitSlip =>
	          en_bitslip        <= '0';
	          if(num_patt_check = kWidthDev) then
	            state_bitslip  <= BitslipFailure;
	          else
		        elapsed_time   := 0;
		        state_bitslip  <= CheckFramePatt;
	          end if;

            when BitslipFinished =>
	          null;

	        when BitslipFailure =>
	          elapsed_time   := 0;
	          en_patt_check  <= '0';
	          state_bitslip  <= Init;

	        when others =>
              state_bitslip  <= Init;
	      end case;

        end if;
      end if;

    end process;
    
    -- Clock adjustment(clk_smp) --------------------------------
    u_check_fco : process(clk_smp)
    begin
      if(clk_smp'event and clk_smp = '1') then
        if(en_fco_check = '1' and state_bitslip = BitslipFinished) then
         if(fcoRefPatt = reg_adc_frame) then
            fco_patt_count   <= fco_patt_count + 1;
          else
            fco_patt_count   <= 0;
          end if;
        else
          fco_patt_count     <= 0;
        end if;
      end if;
    end process;
    
    u_clksmp_sm : process(serdes_reset, clk_smp)
      constant kNumPatt         : integer := 2;
      variable frame_pattern    : integer range 0 to 1;
      variable elapsed_fco_time : integer range 0 to kMaxPattCheck;
    begin
      if(clk_smp'event and clk_smp = '1') then
        if(serdes_reset = '1') then
          elapsed_fco_time   := 0;
          frame_pattern      := 0;
          en_fco_check       <= '0';
          en_shift           <= '0';
          
          state_clkadjust    <= Init;
          
        else
          case state_clkadjust is
            when Init =>
              state_clkadjust  <= Waiting;
              
            when Waiting =>
              if(bit_aligned = '1') then
                en_fco_check      <= '1';
                state_clkadjust   <= CheckPatt;
              end if;
              
            when CheckPatt =>
              elapsed_fco_time  := elapsed_fco_time + 1;
              if(fco_patt_count = kPattOkThreshold) then
                en_fco_check        <= '0';
                state_clkadjust     <= ClkSmpAdjusted;
              elsif(elapsed_fco_time = kMaxPattCheck-1) then
                en_fco_check        <= '0';
                state_clkadjust     <= Shift;
              end if;
            
            when Shift =>
              if(frame_pattern = kNumPatt-1) then
                state_clkadjust     <= ClkSmpFailure;
              else
                en_shift            <= '1';
                en_fco_check        <= '1';
                elapsed_fco_time    := 0;
                frame_pattern       := frame_pattern+1;
                state_clkadjust     <= CheckPatt;
              end if;
            
            when ClkSmpAdjusted =>
              null;
            
            when ClkSmpFailure =>
              elapsed_fco_time    := 0;
              frame_pattern       := 0;
              en_fco_check        <= '0';
              en_shift            <= '0';
              state_clkadjust     <= Init;
              
            when others =>
              state_clkadjust     <= Init;
              
          end case; 
          
        end if;
      end if;
    end process;

    -- Status register ------------------------------------------
    -- For initialize process --
    isReady     <= is_ready;

    u_init_status : process(serdes_reset, clk_slow)
    begin
      if(clk_slow'event and clk_slow = '1') then
        if(serdes_reset = '1') then
	      is_ready   <= '0';
	    else
          if(state_idelay = IdelayAdjusted and state_bitslip = BitslipFinished and state_clkadjust = ClkSmpAdjusted) then
	        is_ready  <= '1';
          else
	        is_ready  <= '0';
          end if;
        end if;
      end if;
    end process;

    -- For error signal --
    bitslipErr  <= bitslip_error;

    u_error_sig : process(clk_slow)
    begin
      if(clk_slow'event and clk_slow = '1') then
        if(state_bitslip = BitslipFailure) then
	      bitslip_error  <= '1';
        else
	      bitslip_error  <= '0';
        end if;
      end if;
    end process;

end RTL;
