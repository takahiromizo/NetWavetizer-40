library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_MISC.ALL;

library UNISIM;
use UNISIM.VComponents.all;

library mylib;

entity GtClockDistributer2 is
  port(
    -- GTX refclk --
    GT_REFCLK_P   : in  std_logic;
    GT_REFCLK_N   : in  std_logic;

    gtRefClk      : out std_logic;
    gtRefClkBufg  : out std_logic;

    -- USERCLK2 --
    mmcmReset     : in  std_logic;
    mmcmLocked    : out std_logic;
    txOutClk      : in  std_logic;
    rxOutClk      : in  std_logic;

    userClk       : out std_logic;
    userClk2      : out std_logic;
    rxuserClk     : out std_logic;
    rxuserClk2    : out std_logic;

    -- GTPE_COMMON --
    reset         : in  std_logic;
    clkIndep      : in  std_logic;
    clkPLL0       : out std_logic;
    refclkPLL0    : out std_logic;
    clkPLL1       : out std_logic;
    refclkPLL1    : out std_logic;
    commonLock    : out std_logic;
    refclklost    : out std_logic;
    gt0_pll0reset : in  std_logic

);
end GtClockDistributer2;

architecture tool_wrapper of GtClockDistributer2 is
   attribute DowngradeIPIdentifiedWarnings: string;
   attribute DowngradeIPIdentifiedWarnings of tool_wrapper : architecture is "yes";

  -- GTP_REF --
  signal gtrefclk_i      : std_logic;
  signal gtrefclk_bufg_i : std_logic;

  component gig_ethernet_pcs_pma_clocking is
    port (
      gtrefclk_p     : in  std_logic;  -- Differential +ve of reference clock for MGT: 125MHz, very high quality.
      gtrefclk_n     : in  std_logic;  -- Differential -ve of reference clock for MGT: 125MHz, very high quality.
      txoutclk       : in  std_logic;  -- txoutclk from GT transceiver.
      rxoutclk       : in  std_logic;  -- rxoutclk from GT transceiver.
      mmcm_reset     : in  std_logic;  -- MMCM Reset

      gtrefclk       : out std_logic;  -- gtrefclk routed through an IBUFG.
      gtrefclk_bufg  : out std_logic;  -- gtrefclk routed through a BUFG for driving logic.
      mmcm_locked    : out std_logic;  -- MMCM locked
      userclk        : out std_logic;  -- for GT PMA reference clock
      userclk2       : out std_logic;  -- 125MHz clock for core reference clock.
      rxuserclk      : out std_logic;  -- for GT PMA reference clock
      rxuserclk2     : out std_logic   -- 125MHz clock for core reference clock.
      );
  end component;

  -- GTPE COMMON --
  signal pma_reset        : std_logic;


  component gig_ethernet_pcs_pma_resets
    port (
      reset                    : in  std_logic;  -- Asynchronous reset for entire core.
      independent_clock_bufg   : in  std_logic;  -- System clock
      pma_reset                : out std_logic   -- Synchronous transcevier PMA reset
      );
  end component;
  
  
  signal commonreset_i         : std_logic;
  signal gt0_pll0reset_t       : std_logic;
  
  component gig_ethernet_pcs_pma_common_reset
    generic
    (
      STABLE_CLOCK_PERIOD      : integer                      -- Period of the stable clock driving this state-machine, unit is [ns]
    );
    port
    (    
      STABLE_CLOCK             : in std_logic;                --Stable Clock, either a stable clock from the PCB
      SOFT_RESET               : in std_logic;                --User Reset, can be pulled any time
      COMMON_RESET             : out std_logic                --Reset QPLL
    );
  end component;


  component gig_ethernet_pcs_pma_gt_common
    port(
      GTREFCLK0_IN         : in std_logic;
      GTREFCLK0_BUFG_IN    : in std_logic;
      PLL0LOCK_OUT         : out std_logic;
      PLL0LOCKDETCLK_IN    : in std_logic;
      PLL0OUTCLK_OUT       : out std_logic;
      PLL0OUTREFCLK_OUT    : out std_logic;
      PLL0REFCLKLOST_OUT   : out std_logic;
      PLL1OUTCLK_OUT       : out std_logic;
      PLL1OUTREFCLK_OUT    : out std_logic;
      PLL0RESET_IN         : in std_logic
      );
  end component;

begin

  core_clocking_i : gig_ethernet_pcs_pma_clocking
    port map(
      gtrefclk_p     => GT_REFCLK_P,
      gtrefclk_n     => GT_REFCLK_N,
      txoutclk       => txOutClk,
      rxoutclk       => rxOutClk,
      mmcm_reset     => mmcmReset,

      gtrefclk       => gtrefclk_i,
      gtrefclk_bufg  => gtrefclk_bufg_i,
      mmcm_locked    => mmcmLocked,
      userclk        => userClk,
      userclk2       => userClk2,
      rxuserclk      => rxuserClk,
      rxuserclk2     => rxuserClk2
      );

  gtRefClk     <= gtrefclk_i;
  gtRefClkBufg <= gtrefclk_bufg_i;

  core_resets_i : gig_ethernet_pcs_pma_resets
    port map (
      reset                     => reset,
      independent_clock_bufg    => clkIndep,
      pma_reset                 => pma_reset
      );

  gt0_pll0reset_t <= gt0_pll0reset OR commonreset_i;
  core_gt_common_reset_i : gig_ethernet_pcs_pma_common_reset
   generic map
   (
      STABLE_CLOCK_PERIOD        => 5
   )
   port map
   (    
      STABLE_CLOCK               => clkIndep,
      SOFT_RESET                 => pma_reset,
      COMMON_RESET               => commonreset_i
   );

  core_gt_common_i : gig_ethernet_pcs_pma_gt_common
    port map(
      GTREFCLK0_IN              => gtrefclk_i,
      GTREFCLK0_BUFG_IN         => gtrefclk_bufg_i,
      PLL0LOCKDETCLK_IN         => clkIndep,
      PLL0OUTCLK_OUT            => clkPLL0,
      PLL0OUTREFCLK_OUT         => refclkPLL0,
      PLL1OUTCLK_OUT            => clkPLL1,
      PLL1OUTREFCLK_OUT         => refclkPLL1,
      PLL0LOCK_OUT              => commonLock,
      PLL0REFCLKLOST_OUT        => refclklost,
      PLL0RESET_IN              => gt0_pll0reset_t
      );

end tool_wrapper;
