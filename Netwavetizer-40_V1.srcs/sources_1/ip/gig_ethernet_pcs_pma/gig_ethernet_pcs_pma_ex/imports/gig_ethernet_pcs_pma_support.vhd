--------------------------------------------------------------------------------
-- File       : gig_ethernet_pcs_pma_support.vhd
-- Author     : Xilinx Inc.
--------------------------------------------------------------------------------
-- (c) Copyright 2011 Xilinx, Inc. All rights reserved.
--
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
--
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
--
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
--
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES. 
-- 
-- 
--------------------------------------------------------------------------------
-- Description: This module holds the support level for the pcs/pma core
--              This can be used as-is in a single core design, or adapted
--              for use with multi-core implementations
--
--
--
library unisim;
use unisim.vcomponents.all;

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


--------------------------------------------------------------------------------
-- The Entity declaration for the Core Block wrapper.
--------------------------------------------------------------------------------

entity gig_ethernet_pcs_pma_support is
   port (

      gtrefclk_p               : in  std_logic;                         
      gtrefclk_n               : in  std_logic;                         

      gtrefclk_out             : out std_logic;                         
      gtrefclk_bufg_out        : out std_logic; 
      txp                      : out std_logic;                    -- Differential +ve of serial transmission from PMA to PMD.
      txn                      : out std_logic;                    -- Differential -ve of serial transmission from PMA to PMD.
      rxp                      : in std_logic;                     -- Differential +ve for serial reception from PMD to PMA.
      rxn                      : in std_logic;                     -- Differential -ve for serial reception from PMD to PMA.
      userclk_out              : out std_logic;                        
      userclk2_out             : out std_logic;                        
      rxuserclk_out            : out std_logic;                        
      rxuserclk2_out           : out std_logic;                        
      pma_reset_out            : out std_logic;                           -- transceiver PMA reset signal
      mmcm_locked_out          : out std_logic;                           -- MMCM Locked
      
      resetdone                : out std_logic;

      independent_clock_bufg   : in std_logic;                 
      -- GMII Interface
      -----------------
      gmii_txd                 : in std_logic_vector(7 downto 0);  -- Transmit data from client MAC.
      gmii_tx_en               : in std_logic;                     -- Transmit control signal from client MAC.
      gmii_tx_er               : in std_logic;                     -- Transmit control signal from client MAC.
      gmii_rxd                 : out std_logic_vector(7 downto 0); -- Received Data to client MAC.
      gmii_rx_dv               : out std_logic;                    -- Received control signal to client MAC.
      gmii_rx_er               : out std_logic;                    -- Received control signal to client MAC.
      gmii_isolate             : out std_logic;                    -- Tristate control to electrically isolate GMII.

      -- Management: MDIO Interface
      -----------------------------

      mdc                      : in std_logic;                     -- Management Data Clock
      mdio_i                   : in std_logic;                     -- Management Data In
      mdio_o                   : out std_logic;                    -- Management Data Out
      mdio_t                   : out std_logic;                    -- Management Data Tristate
      phyaddr                  : in std_logic_vector(4 downto 0);  
      configuration_vector     : in std_logic_vector(4 downto 0);  -- Alternative to MDIO interface.
      configuration_valid      : in std_logic;                     -- Validation signal for Config vector.

      -- General IO's
      ---------------
      status_vector            : out std_logic_vector(15 downto 0); -- Core status.
      reset                    : in std_logic;                     -- Asynchronous reset for entire core.

      
      signal_detect            : in std_logic;                      -- Input from PMD to indicate presence of optical input.
      gt0_pll0outclk_out       : out std_logic;
      gt0_pll0outrefclk_out    : out std_logic;
      gt0_pll1outclk_out       : out std_logic;
      gt0_pll1outrefclk_out    : out std_logic;
      gt0_pll0refclklost_out   : out std_logic;
      gt0_pll0lock_out         : out std_logic

   );
end gig_ethernet_pcs_pma_support;

architecture wrapper of gig_ethernet_pcs_pma_support is

   attribute DowngradeIPIdentifiedWarnings: string;
   attribute DowngradeIPIdentifiedWarnings of wrapper : architecture is "yes";

   component gig_ethernet_pcs_pma
 
   port (
      -- Transceiver Interface
      ---------------------
      gtrefclk             : in std_logic;                    
      gtrefclk_bufg        : in std_logic; 
      txp                  : out std_logic;                    -- Differential +ve of serial transmission from PMA to PMD.
      txn                  : out std_logic;                    -- Differential -ve of serial transmission from PMA to PMD.
      rxp                  : in std_logic;                     -- Differential +ve for serial reception from PMD to PMA.
      rxn                  : in std_logic;                     -- Differential -ve for serial reception from PMD to PMA.

      txoutclk             : out std_logic;                   
      rxoutclk             : out std_logic;                   
      resetdone            : out std_logic;                    -- The GT transceiver has completed its reset cycle
      cplllock             : out std_logic;                    
      mmcm_reset           : out std_logic;                    
      mmcm_locked          : in std_logic;                     -- Locked indication from MMCM
      userclk              : in std_logic;                    
      userclk2             : in std_logic;                    
      rxuserclk              : in std_logic;                  
      rxuserclk2             : in std_logic;                  
      independent_clock_bufg : in std_logic;                  
      pma_reset            : in std_logic;                     -- transceiver PMA reset signal
      -- GMII Interface
      -----------------
      gmii_txd             : in std_logic_vector(7 downto 0);  -- Transmit data from client MAC.
      gmii_tx_en           : in std_logic;                     -- Transmit control signal from client MAC.
      gmii_tx_er           : in std_logic;                     -- Transmit control signal from client MAC.
      gmii_rxd             : out std_logic_vector(7 downto 0); -- Received Data to client MAC.
      gmii_rx_dv           : out std_logic;                    -- Received control signal to client MAC.
      gmii_rx_er           : out std_logic;                    -- Received control signal to client MAC.
      gmii_isolate         : out std_logic;                    -- Tristate control to electrically isolate GMII.

      -- Management: MDIO Interface
      -----------------------------

      mdc                  : in std_logic;                     -- Management Data Clock
      mdio_i               : in std_logic;                     -- Management Data In
      mdio_o               : out std_logic;                    -- Management Data Out
      mdio_t               : out std_logic;                    -- Management Data Tristate
      phyaddr              : in std_logic_vector(4 downto 0);  
      configuration_vector : in std_logic_vector(4 downto 0);  -- Alternative to MDIO interface.
      configuration_valid  : in std_logic;                     -- Validation signal for Config vector.



      -- General IO's
      ---------------
      status_vector        : out std_logic_vector(15 downto 0); -- Core status.
      reset                : in std_logic;                     -- Asynchronous reset for entire core.
      
      signal_detect             : in std_logic;                      -- Input from PMD to indicate presence of optical input.

    gt0_pll0outclk_in                          : in std_logic;  
    gt0_pll0outrefclk_in                       : in std_logic; 
    gt0_pll1outclk_in                          : in std_logic;  
    gt0_pll1outrefclk_in                       : in std_logic; 
    gt0_pll0refclklost_in                      : in std_logic;
    gt0_pll0lock_in                            : in  std_logic;
    gt0_pll0reset_out                          : out std_logic
   );
end component;


component gig_ethernet_pcs_pma_clocking
   port (
      gtrefclk_p              : in  std_logic;                -- Differential +ve of reference clock for MGT
      gtrefclk_n              : in  std_logic;                -- Differential -ve of reference clock for MGT
      txoutclk                : in  std_logic;                -- txoutclk from GT transceiver.
      rxoutclk                : in  std_logic;                -- txoutclk from GT transceiver.
      mmcm_reset              : in  std_logic;                -- MMCM Reset
      gtrefclk                : out std_logic;                -- gtrefclk routed through an IBUFDS.
      gtrefclk_bufg           : out std_logic;
      mmcm_locked             : out std_logic;                -- MMCM locked
      userclk                 : out std_logic;                -- for GT PMA reference clock
      userclk2                : out std_logic;                 
      rxuserclk               : out std_logic;                -- for GT PMA reference clock
      rxuserclk2              : out std_logic                 
   );
end component;

component gig_ethernet_pcs_pma_resets
   port (
    reset                    : in  std_logic;                -- Asynchronous reset for entire core.
    independent_clock_bufg   : in  std_logic;                -- System clock 
    pma_reset                : out std_logic                 -- Synchronous transcevier PMA reset
   );
end component;
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
    PLL0OUTCLK_OUT       : out std_logic;
    PLL0OUTREFCLK_OUT    : out std_logic;
    PLL0LOCK_OUT         : out std_logic;
    PLL0LOCKDETCLK_IN    : in std_logic;
    PLL0REFCLKLOST_OUT   : out std_logic;    
    PLL0RESET_IN         : in std_logic;
    PLL1OUTCLK_OUT       : out std_logic;
    PLL1OUTREFCLK_OUT    : out std_logic;
    GTREFCLK0_BUFG_IN    : in std_logic;
    GTREFCLK0_IN         : in std_logic
  );
end component;


   -- GT Interface
   ----------------
   SIGNAL gt0_pll0outclk     : std_logic;
   SIGNAL gt0_pll0outrefclk  : std_logic;
   SIGNAL gt0_pll1outclk     : std_logic;
   SIGNAL gt0_pll1outrefclk  : std_logic;
   SIGNAL gt0_pll0lock       : std_logic;
   SIGNAL gt0_pll0refclklost : std_logic;
   SIGNAL gt0_pll0reset      : std_logic;
   SIGNAL gt0_pll0reset_t       : std_logic;
   SIGNAL commonreset_i         : std_logic;
   SIGNAL cplllock              : std_logic;
   SIGNAL mmcm_reset            : std_logic;
   SIGNAL txoutclk              : std_logic;
   SIGNAL rxoutclk              : std_logic;
   SIGNAL gtrefclk              : std_logic;
   SIGNAL gtrefclk_bufg         : std_logic;
   SIGNAL mmcm_locked           : std_logic;
   SIGNAL userclk               : std_logic;
   SIGNAL userclk2              : std_logic;
   SIGNAL rxuserclk             : std_logic;
   SIGNAL rxuserclk2            : std_logic;
   SIGNAL pma_reset             : std_logic;
begin

   -----------------------------------------------------------------------------
   -- Component Instantiation for the SGMII adaptation module
   -----------------------------------------------------------------------------


   pcs_pma_i : gig_ethernet_pcs_pma 
      port map(
      -- Transceiver Interface
      ---------------------

 
      gtrefclk        => gtrefclk,
      gtrefclk_bufg   => gtrefclk_bufg,
      txp             => txp  ,           
      txn             => txn  ,           
      rxp             => rxp  ,           
      rxn             => rxn  ,           

      txoutclk            =>  txoutclk    ,        
      rxoutclk            =>  rxoutclk    ,        
      resetdone           =>  resetdone   ,        
      cplllock            =>  cplllock   ,        
      mmcm_reset          =>  mmcm_reset ,        
      mmcm_locked         =>  mmcm_locked ,        
      userclk             =>  userclk     ,        
      userclk2            =>  userclk2    ,        
      rxuserclk             =>  rxuserclk     ,        
      rxuserclk2            =>  rxuserclk2    ,        
      independent_clock_bufg => independent_clock_bufg,
      pma_reset           =>    pma_reset,
      -- GMII Interface
      -----------------
      gmii_txd           =>  gmii_txd    ,       
      gmii_tx_en         =>  gmii_tx_en  ,       
      gmii_tx_er         =>  gmii_tx_er  ,       
      gmii_rxd           =>  gmii_rxd    ,       
      gmii_rx_dv         =>  gmii_rx_dv  ,       
      gmii_rx_er         =>  gmii_rx_er  ,       
      gmii_isolate       =>  gmii_isolate,       

      -- Management: MDIO Interface
      -----------------------------

      mdc                 =>mdc                 , 
      mdio_i              =>mdio_i              , 
      mdio_o              =>mdio_o              , 
      mdio_t              =>mdio_t              , 
      phyaddr             =>phyaddr             ,
      configuration_vector=>configuration_vector,
      configuration_valid =>configuration_valid , 


      -- General IO's
      ---------------
      status_vector          =>  status_vector   ,  
      reset                  =>  pma_reset           , 
      
      signal_detect       =>  signal_detect   , 

    gt0_pll0outclk_in     =>  gt0_pll0outclk,                
    gt0_pll0outrefclk_in  =>  gt0_pll0outrefclk,                 
    gt0_pll1outclk_in     =>  gt0_pll1outclk,                
    gt0_pll1outrefclk_in  =>  gt0_pll1outrefclk,                 
    gt0_pll0refclklost_in =>  gt0_pll0refclklost,
    gt0_pll0lock_in       =>  gt0_pll0lock,
    gt0_pll0reset_out     =>  gt0_pll0reset

   );


   core_clocking_i : gig_ethernet_pcs_pma_clocking
   port map(
      gtrefclk_p                => gtrefclk_p,
      gtrefclk_n                => gtrefclk_n,
      txoutclk                  => txoutclk,
      rxoutclk                  => rxoutclk,
      mmcm_reset                => mmcm_reset,
      gtrefclk                   =>  gtrefclk,
      gtrefclk_bufg              =>  gtrefclk_bufg,
      mmcm_locked                =>  mmcm_locked,
      userclk                    =>  userclk,
      userclk2                   =>  userclk2,
      rxuserclk                  =>  rxuserclk,
      rxuserclk2                 =>  rxuserclk2
   );

   gtrefclk_out        <= gtrefclk;
   gtrefclk_bufg_out   <= gtrefclk_bufg;
   userclk_out         <= userclk;
   userclk2_out        <= userclk2;

   rxuserclk_out       <= rxuserclk;
   rxuserclk2_out      <= rxuserclk2;
   pma_reset_out       <= pma_reset;
   
   core_resets_i : gig_ethernet_pcs_pma_resets
   port map (
      reset                     => reset, 
      independent_clock_bufg    => independent_clock_bufg,
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
      STABLE_CLOCK               => independent_clock_bufg,
      SOFT_RESET                 => pma_reset,
      COMMON_RESET               => commonreset_i
   );

  core_gt_common_i : gig_ethernet_pcs_pma_gt_common
  port map(
    GTREFCLK0_IN                => gtrefclk,
    GTREFCLK0_BUFG_IN           => gtrefclk_bufg,
    PLL0OUTCLK_OUT              => gt0_pll0outclk,
    PLL0OUTREFCLK_OUT           => gt0_pll0outrefclk,
    PLL1OUTCLK_OUT              => gt0_pll1outclk, 
    PLL1OUTREFCLK_OUT           => gt0_pll1outrefclk,
    PLL0LOCK_OUT                => gt0_pll0lock,
    PLL0LOCKDETCLK_IN           => independent_clock_bufg,
    PLL0REFCLKLOST_OUT          => gt0_pll0refclklost,
    PLL0RESET_IN                => gt0_pll0reset_t 
  );

   gt0_pll0outclk_out        <=  gt0_pll0outclk;
   gt0_pll0outrefclk_out     <=  gt0_pll0outrefclk;
   gt0_pll1outclk_out        <=  gt0_pll1outclk;
   gt0_pll1outrefclk_out     <=  gt0_pll1outrefclk;
   gt0_pll0refclklost_out    <=  gt0_pll0refclklost;
   gt0_pll0lock_out          <=  gt0_pll0lock;
   mmcm_locked_out           <= mmcm_locked;
end wrapper;
