#  ---------------------------------------------------------------------
# Pin assign --
#  ---------------------------------------------------------------------

# System ---------------------------------------------------------------
set_property PACKAGE_PIN J19 [get_ports CLK50M]
set_property PACKAGE_PIN L16 [get_ports {LED[0]}]
set_property PACKAGE_PIN M15 [get_ports {LED[1]}]
set_property PACKAGE_PIN K16 [get_ports {LED[2]}]
set_property PACKAGE_PIN M16 [get_ports {LED[3]}]
set_property PACKAGE_PIN M13 [get_ports {DIP[0]}]
set_property PACKAGE_PIN L13 [get_ports {DIP[1]}]
set_property PACKAGE_PIN J17 [get_ports {DIP[2]}]
set_property PACKAGE_PIN K17 [get_ports {DIP[3]}]
set_property PACKAGE_PIN L10 [get_ports VP]
set_property PACKAGE_PIN M9 [get_ports VN]

# GTP ------------------------------------------------------------------
set_property PACKAGE_PIN F6 [get_ports GTP_REFCLK_P]
set_property PACKAGE_PIN E6 [get_ports GTP_REFCLK_N]

# SFP port ------------------------------------------------------------
set_property PACKAGE_PIN K13 [get_ports SFP_SCL]
set_property PACKAGE_PIN J15 [get_ports SFP_SDA]
set_property PACKAGE_PIN J14 [get_ports SFP_TXFAULT]
set_property PACKAGE_PIN L14 [get_ports SFP_LOS]

# SFP port to AMANEQ ---------------------------------------------------
#set_property PACKAGE_PIN C18 [get_ports SFP_MZN_RXP]
#set_property PACKAGE_PIN C19 [get_ports SFP_MZN_RXN]
#set_property PACKAGE_PIN B21 [get_ports SFP_MZN_TXP]
#set_property PACKAGE_PIN A21 [get_ports SFP_MZN_TXN]
#set_property PACKAGE_PIN H13 [get_ports SFP_CLK_SCL]
#set_property PACKAGE_PIN G13 [get_ports SFP_CLK_SDA]

# SPI flash ------------------------------------------------------------
set_property PACKAGE_PIN P22 [get_ports MOSI]
set_property PACKAGE_PIN R22 [get_ports DIN]
set_property PACKAGE_PIN T19 [get_ports FCSB]

# Jumper ---------------------------------------------------------------
set_property PACKAGE_PIN J20 [get_ports {JUMPER[0]}]
set_property PACKAGE_PIN J21 [get_ports {JUMPER[1]}]
set_property PACKAGE_PIN G17 [get_ports {JUMPER[2]}]
set_property PACKAGE_PIN G18 [get_ports {JUMPER[3]}]
set_property PACKAGE_PIN G15 [get_ports {JUMPER[4]}]
set_property PACKAGE_PIN G16 [get_ports {JUMPER[5]}]
set_property PACKAGE_PIN H17 [get_ports {JUMPER[6]}]
set_property PACKAGE_PIN H18 [get_ports {JUMPER[7]}]

# EEPROM ---------------------------------------------------------------
set_property PACKAGE_PIN J22 [get_ports EEP_CS]
set_property PACKAGE_PIN H22 [get_ports EEP_SK]
set_property PACKAGE_PIN K21 [get_ports EEP_DI]
set_property PACKAGE_PIN K22 [get_ports EEP_DO]

# NIM-IO ---------------------------------------------------------------
set_property PACKAGE_PIN K18 [get_ports {NIM_IN[1]}]
set_property PACKAGE_PIN L19 [get_ports {NIM_IN[2]}]
set_property PACKAGE_PIN H15 [get_ports NIM_OUT]

# Pipeline ADC port -----------------------------------------------------
set_property PACKAGE_PIN P19 [get_ports {ADC_CLK_P[0]}]
set_property PACKAGE_PIN R19 [get_ports {ADC_CLK_N[0]}]
set_property PACKAGE_PIN W15 [get_ports {ADC_CLK_P[1]}]
set_property PACKAGE_PIN W16 [get_ports {ADC_CLK_N[1]}]
set_property PACKAGE_PIN W9 [get_ports {ADC_CLK_P[2]}]
set_property PACKAGE_PIN Y9 [get_ports {ADC_CLK_N[2]}]
set_property PACKAGE_PIN R1 [get_ports {ADC_CLK_P[3]}]
set_property PACKAGE_PIN P1 [get_ports {ADC_CLK_N[3]}]

set_property PACKAGE_PIN W19 [get_ports {ADC_DCO_P[0]}]
set_property PACKAGE_PIN W20 [get_ports {ADC_DCO_N[0]}]
set_property PACKAGE_PIN W11 [get_ports {ADC_DCO_P[1]}]
set_property PACKAGE_PIN W12 [get_ports {ADC_DCO_N[1]}]
set_property PACKAGE_PIN V4 [get_ports {ADC_DCO_P[2]}]
set_property PACKAGE_PIN W4 [get_ports {ADC_DCO_N[2]}]
set_property PACKAGE_PIN H4 [get_ports {ADC_DCO_P[3]}]
set_property PACKAGE_PIN G4 [get_ports {ADC_DCO_N[3]}]

set_property PACKAGE_PIN Y18 [get_ports {ADC_FCO_P[0]}]
set_property PACKAGE_PIN Y19 [get_ports {ADC_FCO_N[0]}]
set_property PACKAGE_PIN V13 [get_ports {ADC_FCO_P[1]}]
set_property PACKAGE_PIN V14 [get_ports {ADC_FCO_N[1]}]
set_property PACKAGE_PIN R4 [get_ports {ADC_FCO_P[2]}]
set_property PACKAGE_PIN T4 [get_ports {ADC_FCO_N[2]}]
set_property PACKAGE_PIN K4 [get_ports {ADC_FCO_P[3]}]
set_property PACKAGE_PIN J4 [get_ports {ADC_FCO_N[3]}]

set_property PACKAGE_PIN V18 [get_ports {ADC_SCLK[0]}]
set_property PACKAGE_PIN W14 [get_ports {ADC_SCLK[1]}]
set_property PACKAGE_PIN U3 [get_ports {ADC_SCLK[2]}]
set_property PACKAGE_PIN K2 [get_ports {ADC_SCLK[3]}]
set_property PACKAGE_PIN V17 [get_ports {ADC_CSB[0]}]
set_property PACKAGE_PIN V10 [get_ports {ADC_CSB[1]}]
set_property PACKAGE_PIN R3 [get_ports {ADC_CSB[2]}]
set_property PACKAGE_PIN E2 [get_ports {ADC_CSB[3]}]
set_property PACKAGE_PIN U17 [get_ports {ADC_SDIO[0]}]
set_property PACKAGE_PIN Y11 [get_ports {ADC_SDIO[1]}]
set_property PACKAGE_PIN U2 [get_ports {ADC_SDIO[2]}]
set_property PACKAGE_PIN H3 [get_ports {ADC_SDIO[3]}]

set_property PACKAGE_PIN R18 [get_ports {ADC_OUT_P[0]}]
set_property PACKAGE_PIN T18 [get_ports {ADC_OUT_N[0]}]
set_property PACKAGE_PIN T21 [get_ports {ADC_OUT_P[1]}]
set_property PACKAGE_PIN U21 [get_ports {ADC_OUT_N[1]}]
set_property PACKAGE_PIN U20 [get_ports {ADC_OUT_P[2]}]
set_property PACKAGE_PIN V20 [get_ports {ADC_OUT_N[2]}]
set_property PACKAGE_PIN W21 [get_ports {ADC_OUT_P[3]}]
set_property PACKAGE_PIN W22 [get_ports {ADC_OUT_N[3]}]
set_property PACKAGE_PIN Y21 [get_ports {ADC_OUT_P[4]}]
set_property PACKAGE_PIN Y22 [get_ports {ADC_OUT_N[4]}]
set_property PACKAGE_PIN AB21 [get_ports {ADC_OUT_P[5]}]
set_property PACKAGE_PIN AB22 [get_ports {ADC_OUT_N[5]}]
set_property PACKAGE_PIN AA19 [get_ports {ADC_OUT_P[6]}]
set_property PACKAGE_PIN AB20 [get_ports {ADC_OUT_N[6]}]
set_property PACKAGE_PIN AA18 [get_ports {ADC_OUT_P[7]}]
set_property PACKAGE_PIN AB18 [get_ports {ADC_OUT_N[7]}]
set_property PACKAGE_PIN AB16 [get_ports {ADC_OUT_P[8]}]
set_property PACKAGE_PIN AB17 [get_ports {ADC_OUT_N[8]}]
set_property PACKAGE_PIN Y16 [get_ports {ADC_OUT_P[9]}]
set_property PACKAGE_PIN AA16 [get_ports {ADC_OUT_N[9]}]
set_property PACKAGE_PIN AA15 [get_ports {ADC_OUT_P[10]}]
set_property PACKAGE_PIN AB15 [get_ports {ADC_OUT_N[10]}]
set_property PACKAGE_PIN Y13 [get_ports {ADC_OUT_P[11]}]
set_property PACKAGE_PIN AA14 [get_ports {ADC_OUT_N[11]}]
set_property PACKAGE_PIN AA13 [get_ports {ADC_OUT_P[12]}]
set_property PACKAGE_PIN AB13 [get_ports {ADC_OUT_N[12]}]
set_property PACKAGE_PIN AB11 [get_ports {ADC_OUT_P[13]}]
set_property PACKAGE_PIN AB12 [get_ports {ADC_OUT_N[13]}]
set_property PACKAGE_PIN AA10 [get_ports {ADC_OUT_P[14]}]
set_property PACKAGE_PIN AA11 [get_ports {ADC_OUT_N[14]}]
set_property PACKAGE_PIN AA9 [get_ports {ADC_OUT_P[15]}]
set_property PACKAGE_PIN AB10 [get_ports {ADC_OUT_N[15]}]
set_property PACKAGE_PIN AA8 [get_ports {ADC_OUT_P[16]}]
set_property PACKAGE_PIN AB8 [get_ports {ADC_OUT_N[16]}]
set_property PACKAGE_PIN Y6 [get_ports {ADC_OUT_P[17]}]
set_property PACKAGE_PIN AA6 [get_ports {ADC_OUT_N[17]}]
set_property PACKAGE_PIN Y3 [get_ports {ADC_OUT_P[18]}]
set_property PACKAGE_PIN AA3 [get_ports {ADC_OUT_N[18]}]
set_property PACKAGE_PIN AA5 [get_ports {ADC_OUT_P[19]}]
set_property PACKAGE_PIN AB5 [get_ports {ADC_OUT_N[19]}]
set_property PACKAGE_PIN AA1 [get_ports {ADC_OUT_P[20]}]
set_property PACKAGE_PIN AB1 [get_ports {ADC_OUT_N[20]}]
set_property PACKAGE_PIN W2 [get_ports {ADC_OUT_P[21]}]
set_property PACKAGE_PIN Y2 [get_ports {ADC_OUT_N[21]}]
set_property PACKAGE_PIN W1 [get_ports {ADC_OUT_P[22]}]
set_property PACKAGE_PIN Y1 [get_ports {ADC_OUT_N[22]}]
set_property PACKAGE_PIN T1 [get_ports {ADC_OUT_P[23]}]
set_property PACKAGE_PIN U1 [get_ports {ADC_OUT_N[23]}]
set_property PACKAGE_PIN P2 [get_ports {ADC_OUT_P[24]}]
set_property PACKAGE_PIN N2 [get_ports {ADC_OUT_N[24]}]
set_property PACKAGE_PIN M1 [get_ports {ADC_OUT_P[25]}]
set_property PACKAGE_PIN L1 [get_ports {ADC_OUT_N[25]}]
set_property PACKAGE_PIN K1 [get_ports {ADC_OUT_P[26]}]
set_property PACKAGE_PIN J1 [get_ports {ADC_OUT_N[26]}]
set_property PACKAGE_PIN H2 [get_ports {ADC_OUT_P[27]}]
set_property PACKAGE_PIN G2 [get_ports {ADC_OUT_N[27]}]
set_property PACKAGE_PIN G1 [get_ports {ADC_OUT_P[28]}]
set_property PACKAGE_PIN F1 [get_ports {ADC_OUT_N[28]}]
set_property PACKAGE_PIN E1 [get_ports {ADC_OUT_P[29]}]
set_property PACKAGE_PIN D1 [get_ports {ADC_OUT_N[29]}]
set_property PACKAGE_PIN C2 [get_ports {ADC_OUT_P[30]}]
set_property PACKAGE_PIN B2 [get_ports {ADC_OUT_N[30]}]
set_property PACKAGE_PIN B1 [get_ports {ADC_OUT_P[31]}]
set_property PACKAGE_PIN A1 [get_ports {ADC_OUT_N[31]}]



#  ---------------------------------------------------------------------
# Port attribute --
#  ---------------------------------------------------------------------

# System ---------------------------------------------------------------
set_property IOSTANDARD LVCMOS33 [get_ports CLK50M]
set_property IOSTANDARD LVCMOS33 [get_ports {LED[*]}]
set_property IOSTANDARD LVCMOS33 [get_ports {DIP[*]}]
set_property PULLUP true [get_ports {DIP[3]}]
set_property PULLUP true [get_ports {DIP[2]}]
set_property PULLUP true [get_ports {DIP[1]}]
set_property PULLUP true [get_ports {DIP[0]}]

# GTP ------------------------------------------------------------------

# SFP port -------------------------------------------------------------
set_property IOSTANDARD LVCMOS33 [get_ports SFP_SCL]
set_property IOSTANDARD LVCMOS33 [get_ports SFP_SDA]
set_property IOSTANDARD LVCMOS33 [get_ports SFP_TXFAULT]
set_property IOSTANDARD LVCMOS33 [get_ports SFP_LOS]

# SFP port to AMANEQ ---------------------------------------------------
#set_property IOSTANDARD LVDS_25 [get_ports SFP_MZN_RXP]
#set_property DIFF_TERM true [get_ports SFP_MZN_RXP]
#set_property IOSTANDARD LVDS_25 [get_ports SFP_MZN_TXP]
#set_property IOSTANDARD LVCMOS33 [get_ports SFP_CLK_SCL]
#set_property IOSTANDARD LVCMOS33 [get_ports SFP_CLK_SDA]

# SPI flash ------------------------------------------------------------
set_property IOSTANDARD LVCMOS25 [get_ports MOSI]
set_property IOB TRUE [get_ports MOSI]
set_property IOSTANDARD LVCMOS25 [get_ports DIN]
set_property IOB TRUE [get_ports DIN]
set_property IOSTANDARD LVCMOS25 [get_ports FCSB]
set_property IOB TRUE [get_ports FCSB]

# Jumper ---------------------------------------------------------------
set_property IOSTANDARD LVCMOS33 [get_ports {JUMPER[*]}]

# EEPROM ---------------------------------------------------------------
set_property IOSTANDARD LVCMOS33 [get_ports EEP_CS]
set_property IOSTANDARD LVCMOS33 [get_ports EEP_SK]
set_property IOSTANDARD LVCMOS33 [get_ports EEP_DI]
set_property IOSTANDARD LVCMOS33 [get_ports EEP_DO]

# NIM-IO ---------------------------------------------------------------
set_property IOSTANDARD LVTTL [get_ports {NIM_IN[*]}]
set_property IOSTANDARD LVTTL [get_ports NIM_OUT]

# Pipeline ADC port ----------------------------------------------------
set_property IOSTANDARD LVDS_25 [get_ports {ADC_CLK_P[0]}]
set_property IOSTANDARD LVDS_25 [get_ports {ADC_CLK_P[1]}]
set_property IOSTANDARD LVDS_25 [get_ports {ADC_CLK_P[2]}]
set_property IOSTANDARD LVDS_25 [get_ports {ADC_CLK_P[3]}]

set_property IOSTANDARD LVDS_25 [get_ports {ADC_DCO_P[0]}]
set_property IOSTANDARD LVDS_25 [get_ports {ADC_DCO_P[1]}]
set_property IOSTANDARD LVDS_25 [get_ports {ADC_DCO_P[2]}]
set_property IOSTANDARD LVDS_25 [get_ports {ADC_DCO_P[3]}]
set_property DIFF_TERM true [get_ports {ADC_DCO_P[*]}]

set_property IOSTANDARD LVDS_25 [get_ports {ADC_FCO_P[0]}]
set_property IOSTANDARD LVDS_25 [get_ports {ADC_FCO_P[1]}]
set_property IOSTANDARD LVDS_25 [get_ports {ADC_FCO_P[2]}]
set_property IOSTANDARD LVDS_25 [get_ports {ADC_FCO_P[3]}]
set_property DIFF_TERM true [get_ports {ADC_FCO_P[*]}]

set_property IOSTANDARD LVCMOS25 [get_ports {ADC_SCLK[0]}]
set_property IOSTANDARD LVCMOS25 [get_ports {ADC_SCLK[1]}]
set_property IOSTANDARD LVCMOS25 [get_ports {ADC_SCLK[2]}]
set_property IOSTANDARD LVCMOS25 [get_ports {ADC_SCLK[3]}]

set_property IOSTANDARD LVCMOS25 [get_ports {ADC_CSB[0]}]
set_property IOSTANDARD LVCMOS25 [get_ports {ADC_CSB[1]}]
set_property IOSTANDARD LVCMOS25 [get_ports {ADC_CSB[2]}]
set_property IOSTANDARD LVCMOS25 [get_ports {ADC_CSB[3]}]

set_property IOSTANDARD LVCMOS25 [get_ports {ADC_SDIO[0]}]
set_property IOSTANDARD LVCMOS25 [get_ports {ADC_SDIO[1]}]
set_property IOSTANDARD LVCMOS25 [get_ports {ADC_SDIO[2]}]
set_property IOSTANDARD LVCMOS25 [get_ports {ADC_SDIO[3]}]

set_property IOSTANDARD LVDS_25 [get_ports {ADC_OUT_P[0]}]
set_property IOSTANDARD LVDS_25 [get_ports {ADC_OUT_P[1]}]
set_property IOSTANDARD LVDS_25 [get_ports {ADC_OUT_P[2]}]
set_property IOSTANDARD LVDS_25 [get_ports {ADC_OUT_P[3]}]
set_property IOSTANDARD LVDS_25 [get_ports {ADC_OUT_P[4]}]
set_property IOSTANDARD LVDS_25 [get_ports {ADC_OUT_P[5]}]
set_property IOSTANDARD LVDS_25 [get_ports {ADC_OUT_P[6]}]
set_property IOSTANDARD LVDS_25 [get_ports {ADC_OUT_P[7]}]
set_property IOSTANDARD LVDS_25 [get_ports {ADC_OUT_P[8]}]
set_property IOSTANDARD LVDS_25 [get_ports {ADC_OUT_P[9]}]
set_property IOSTANDARD LVDS_25 [get_ports {ADC_OUT_P[10]}]
set_property IOSTANDARD LVDS_25 [get_ports {ADC_OUT_P[11]}]
set_property IOSTANDARD LVDS_25 [get_ports {ADC_OUT_P[12]}]
set_property IOSTANDARD LVDS_25 [get_ports {ADC_OUT_P[13]}]
set_property IOSTANDARD LVDS_25 [get_ports {ADC_OUT_P[14]}]
set_property IOSTANDARD LVDS_25 [get_ports {ADC_OUT_P[15]}]
set_property IOSTANDARD LVDS_25 [get_ports {ADC_OUT_P[16]}]
set_property IOSTANDARD LVDS_25 [get_ports {ADC_OUT_P[17]}]
set_property IOSTANDARD LVDS_25 [get_ports {ADC_OUT_P[18]}]
set_property IOSTANDARD LVDS_25 [get_ports {ADC_OUT_P[19]}]
set_property IOSTANDARD LVDS_25 [get_ports {ADC_OUT_P[20]}]
set_property IOSTANDARD LVDS_25 [get_ports {ADC_OUT_P[21]}]
set_property IOSTANDARD LVDS_25 [get_ports {ADC_OUT_P[22]}]
set_property IOSTANDARD LVDS_25 [get_ports {ADC_OUT_P[23]}]
set_property IOSTANDARD LVDS_25 [get_ports {ADC_OUT_P[24]}]
set_property IOSTANDARD LVDS_25 [get_ports {ADC_OUT_P[25]}]
set_property IOSTANDARD LVDS_25 [get_ports {ADC_OUT_P[26]}]
set_property IOSTANDARD LVDS_25 [get_ports {ADC_OUT_P[27]}]
set_property IOSTANDARD LVDS_25 [get_ports {ADC_OUT_P[28]}]
set_property IOSTANDARD LVDS_25 [get_ports {ADC_OUT_P[29]}]
set_property IOSTANDARD LVDS_25 [get_ports {ADC_OUT_P[30]}]
set_property IOSTANDARD LVDS_25 [get_ports {ADC_OUT_P[31]}]
set_property DIFF_TERM true [get_ports {ADC_OUT_P[*]}]



























