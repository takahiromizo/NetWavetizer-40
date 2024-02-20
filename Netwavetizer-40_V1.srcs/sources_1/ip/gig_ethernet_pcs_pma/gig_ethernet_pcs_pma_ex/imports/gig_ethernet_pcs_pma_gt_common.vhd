------------------------------------------------------------------------------/
--   ____  ____ 
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version : 3.6
--  \   \         Application : 7 Series FPGAs Transceivers Wizard
--  /   /         Filename : gtwizard_common.vhd
-- /___/   /\     
-- \   \  /  \ 
--  \___\/\___\
--
--
-- Module GTWIZARD_common 
-- Generated by Xilinx 7 Series FPGAs Transceivers Wizard
-- 
-- 
-- (c) Copyright 2010-2012 Xilinx, Inc. All rights reserved.
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

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;


--***********************************Entity Declaration************************

entity gig_ethernet_pcs_pma_gt_common is
generic
(
    -- Simulation attributes
    WRAPPER_SIM_GTRESET_SPEEDUP     : string     :=  "FALSE"        -- Set to "true" to speed up sim reset 
);

port
(
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

end gig_ethernet_pcs_pma_gt_common;
architecture RTL of gig_ethernet_pcs_pma_gt_common is



--*************************Logic to set Attribute PLL_FB_DIV*****************************
    constant PLL0_FBDIV_IN      :   integer := 4;
            
    constant PLL1_FBDIV_IN      :   integer := 1;
    constant PLL0_FBDIV_45_IN   :   integer := 5;
    constant PLL1_FBDIV_45_IN   :   integer := 4;
    constant PLL0_REFCLK_DIV_IN :   integer := 1;
    constant PLL1_REFCLK_DIV_IN :   integer := 1;
 
    -- ground and tied_to_vcc_i signals
    signal  tied_to_ground_i                :   std_logic;
    signal  tied_to_ground_vec_i            :   std_logic_vector(63 downto 0);
    signal  tied_to_vcc_i                   :   std_logic;
    signal  tied_to_vcc_vec_i               :   std_logic_vector(63 downto 0);


attribute equivalent_register_removal: string; 
signal cpllpd_wait    :   std_logic_vector(95 downto 0)  := x"FFFFFFFFFFFFFFFFFFFFFFFF";
signal cpllreset_wait :   std_logic_vector(127 downto 0) := x"000000000000000000000000000000FF";
attribute equivalent_register_removal of cpllpd_wait : signal is "no";
attribute equivalent_register_removal of cpllreset_wait : signal is "no";

signal cpll_pd_i : std_logic;
signal cpll_reset_i : std_logic;
signal PLL0RESET_I : std_logic;
begin


    process(GTREFCLK0_BUFG_IN  )
    begin
        if(GTREFCLK0_BUFG_IN'event and GTREFCLK0_BUFG_IN = '1') then 
           cpllpd_wait <= cpllpd_wait(94 downto 0) & '0';
           cpllreset_wait <= cpllreset_wait(126 downto 0) & '0';
         end if;
    end process;

cpll_pd_i <= cpllpd_wait(95);
cpll_reset_i <= cpllreset_wait(127);
PLL0RESET_I <= PLL0RESET_IN or cpll_reset_i;



    tied_to_ground_i                    <= '0';
    tied_to_ground_vec_i(63 downto 0)   <= (others => '0');
    tied_to_vcc_i                       <= '1';
    tied_to_vcc_vec_i(63 downto 0)      <= (others => '1');

    --_________________________________________________________________________
    --_________________________________________________________________________
    --_________________________GTXE2_COMMON____________________________________

    gtpe2_common_i : GTPE2_COMMON
    generic map
    (
            -- Simulation attributes
            SIM_RESET_SPEEDUP    => WRAPPER_SIM_GTRESET_SPEEDUP,
            SIM_PLL0REFCLK_SEL   => ("001"),
            SIM_PLL1REFCLK_SEL   => ("001"),
            SIM_VERSION          => ("2.0"),

            PLL0_FBDIV           => PLL0_FBDIV_IN     ,	
	         PLL0_FBDIV_45        => PLL0_FBDIV_45_IN  ,	
	         PLL0_REFCLK_DIV      => PLL0_REFCLK_DIV_IN,	
	         PLL1_FBDIV           => PLL1_FBDIV_IN     ,	
	         PLL1_FBDIV_45        => PLL1_FBDIV_45_IN  ,	
	         PLL1_REFCLK_DIV      => PLL1_REFCLK_DIV_IN,	            


       ------------------COMMON BLOCK Attributes---------------
        BIAS_CFG                                =>     (x"0000000000050001"),
        COMMON_CFG                              =>     (x"00000000"),

       ----------------------------PLL Attributes----------------------------
        PLL0_CFG                                =>     (x"01F03DC"),
        PLL0_DMON_CFG                           =>     ('0'),
        PLL0_INIT_CFG                           =>     (x"00001E"),
        PLL0_LOCK_CFG                           =>     (x"1E8"),
        PLL1_CFG                                =>     (x"01F03DC"),
        PLL1_DMON_CFG                           =>     ('0'),
        PLL1_INIT_CFG                           =>     (x"00001E"),
        PLL1_LOCK_CFG                           =>     (x"1E8"),
        PLL_CLKOUT_CFG                          =>     (x"00"),

       ----------------------------Reserved Attributes----------------------------
        RSVD_ATTR0                              =>     (x"0000"),
        RSVD_ATTR1                              =>     (x"0000")

        
    )
    port map
    (
        DMONITOROUT             => open,	
        ------------- Common Block  - Dynamic Reconfiguration Port (DRP) -----------
        DRPADDR                         =>      tied_to_ground_vec_i(7 downto 0),
        DRPCLK                          =>      tied_to_ground_i,
        DRPDI                           =>      tied_to_ground_vec_i(15 downto 0),
        DRPDO                           =>      open,
        DRPEN                           =>      tied_to_ground_i,
        DRPRDY                          =>      open,
        DRPWE                           =>      tied_to_ground_i,
        ----------------- Common Block - GTPE2_COMMON Clocking Ports ---------------
        GTEASTREFCLK0                   =>      tied_to_ground_i,
        GTEASTREFCLK1                   =>      tied_to_ground_i,
        GTGREFCLK1                      =>      tied_to_ground_i,
        GTREFCLK0                       =>      GTREFCLK0_IN,
        GTREFCLK1                       =>      tied_to_ground_i,
        GTWESTREFCLK0                   =>      tied_to_ground_i,
        GTWESTREFCLK1                   =>      tied_to_ground_i,
        PLL0OUTCLK                      =>      PLL0OUTCLK_OUT,
        PLL0OUTREFCLK                   =>      PLL0OUTREFCLK_OUT,
        PLL1OUTCLK                      =>      PLL1OUTCLK_OUT,
        PLL1OUTREFCLK                   =>      PLL1OUTREFCLK_OUT,
        -------------------------- Common Block - PLL Ports ------------------------
        PLL0FBCLKLOST                   =>      open,
        PLL0LOCK                        =>      PLL0LOCK_OUT,
        PLL0LOCKDETCLK                  =>      PLL0LOCKDETCLK_IN,
        PLL0LOCKEN                      =>      tied_to_vcc_i,
        PLL0PD                          =>      cpll_pd_i,
        PLL0REFCLKLOST                  =>      PLL0REFCLKLOST_OUT,
        PLL0REFCLKSEL                   =>      "001",
        PLL0RESET                       =>      PLL0RESET_I,
        PLL1FBCLKLOST                   =>      open,
        PLL1LOCK                        =>      open,
        PLL1LOCKDETCLK                  =>      tied_to_ground_i,
        PLL1LOCKEN                      =>      tied_to_vcc_i,
        PLL1PD                          =>      '1',
        PLL1REFCLKLOST                  =>      open,
        PLL1REFCLKSEL                   =>      "001",
        PLL1RESET                       =>      tied_to_ground_i,
        ---------------------------- Common Block - Ports --------------------------
        BGRCALOVRDENB                   =>      tied_to_vcc_i,
        GTGREFCLK0                      =>      tied_to_ground_i,
        PLLRSVD1                        =>      "0000000000000000",
        PLLRSVD2                        =>      "00000",
        REFCLKOUTMONITOR0               =>      open,
        REFCLKOUTMONITOR1               =>      open,
        ------------------------ Common Block - RX AFE Ports -----------------------
        PMARSVDOUT                      =>      open,
        --------------------------------- QPLL Ports -------------------------------
        BGBYPASSB                       =>      tied_to_vcc_i,
        BGMONITORENB                    =>      tied_to_vcc_i,
        BGPDB                           =>      tied_to_vcc_i,
        BGRCALOVRD                      =>      "11111",
        PMARSVD                         =>      "00000000",
        RCALENB                         =>      tied_to_vcc_i

    );
end RTL;
