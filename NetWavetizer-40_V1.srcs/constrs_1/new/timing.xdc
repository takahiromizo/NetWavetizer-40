# Clock definition
#create_clock -period 10.000 -name clk_osc -waveform {0.000 5.000} [get_ports BASE_CLKP]
#create_clock -period 8.000 -name clk_gmod -waveform {0.000 4.000} [get_pins BUFG_modclk/O]

#create_clock -period 8 -name clk_mod -waveform {0.000 4.000} [get_pins u_cbtlane/BUFG_modclk/O]
#create_clock -period 10 -name clk_mod -waveform {0.000 5.000} [get_pins u_cbtlane/BUFG_modclk/O]
#set_input_jitter clk_b2tt 0.100

#set_clock_groups -name async_input -physically_exclusive -group [get_clocks clk_osc] -group [get_clocks clk_hul]

#create_clock -period 1.600 -name c6c_fast -waveform {0.000 0.800} [get_pins u_BUFG_Fast_inst/O]
#set_input_jitter c6c_fast 0.030

#create_clock -period 8.000 -name c6c_slow -waveform {0.000 4.000} [get_pins u_BUFG_Slow_inst/O]
#set_input_jitter c6c_slow 0.030

#set_case_analysis 0 [get_pins u_CdcmMan_Inst/inst/mmcm_adv_inst/CLKINSEL]
#set_case_analysis 0 [get_pins BUFGMUX_C6C_inst/S]
#set_case_analysis 1 [get_pins BUFGMUX_FAST_inst/S]
#set_case_analysis 1 [get_pins BUFGMUX_SLOW_inst/S]

# SiTCP
set_false_path -through [get_nets {gen_SiTCP[*].u_SiTCP_Inst/SiTCP/SiTCP_INT/SiTCP_INT_REG/regX11Data*}]
set_false_path -through [get_nets {gen_SiTCP[*].u_SiTCP_Inst/SiTCP/SiTCP_INT/SiTCP_INT_REG/regX12Data*}]
set_false_path -through [get_nets {gen_SiTCP[*].u_SiTCP_Inst/SiTCP/SiTCP_INT/SiTCP_INT_REG/regX13Data*}]
set_false_path -through [get_nets {gen_SiTCP[*].u_SiTCP_Inst/SiTCP/SiTCP_INT/SiTCP_INT_REG/regX14Data*}]
set_false_path -through [get_nets {gen_SiTCP[*].u_SiTCP_Inst/SiTCP/SiTCP_INT/SiTCP_INT_REG/regX15Data*}]
set_false_path -through [get_nets {gen_SiTCP[*].u_SiTCP_Inst/SiTCP/SiTCP_INT/SiTCP_INT_REG/regX16Data*}]
set_false_path -through [get_nets {gen_SiTCP[*].u_SiTCP_Inst/SiTCP/SiTCP_INT/SiTCP_INT_REG/regX17Data*}]
set_false_path -through [get_nets {gen_SiTCP[*].u_SiTCP_Inst/SiTCP/SiTCP_INT/SiTCP_INT_REG/regX18Data*}]
set_false_path -through [get_nets {gen_SiTCP[*].u_SiTCP_Inst/SiTCP/SiTCP_INT/SiTCP_INT_REG/regX19Data*}]
set_false_path -through [get_nets {gen_SiTCP[*].u_SiTCP_Inst/SiTCP/SiTCP_INT/SiTCP_INT_REG/regX1AData*}]
set_false_path -through [get_nets {gen_SiTCP[*].u_SiTCP_Inst/SiTCP/SiTCP_INT/SiTCP_INT_REG/regX1BData*}]
set_false_path -through [get_nets {gen_SiTCP[*].u_SiTCP_Inst/SiTCP/BBT_SiTCP_RST/resetReq*}]
set_false_path -through [get_nets {gen_SiTCP[*].u_SiTCP_Inst/SiTCP/GMII/GMII_TXBUF/memRdReq*}]
set_false_path -through [get_nets {gen_SiTCP[*].u_SiTCP_Inst/SiTCP/GMII/GMII_TXBUF/orRdAct*}]
set_false_path -through [get_nets {gen_SiTCP[*].u_SiTCP_Inst/SiTCP/GMII/GMII_TXBUF/dlyBank0LastWrAddr*}]
set_false_path -through [get_nets {gen_SiTCP[*].u_SiTCP_Inst/SiTCP/GMII/GMII_TXBUF/dlyBank1LastWrAddr*}]
set_false_path -through [get_nets {gen_SiTCP[*].u_SiTCP_Inst/SiTCP/GMII/GMII_TXBUF/muxEndTgl}]


create_generated_clock -name clk_sys [get_pins u_ClkMan_Inst/inst/mmcm_adv_inst/CLKOUT0]
create_generated_clock -name clk_indep [get_pins u_ClkMan_Inst/inst/mmcm_adv_inst/CLKOUT1]
create_generated_clock -name clk_spi [get_pins u_ClkMan_Inst/inst/mmcm_adv_inst/CLKOUT2]
create_generated_clock -name clk_adc [get_pins u_ClkMan_Inst/inst/mmcm_adv_inst/CLKOUT3]

create_generated_clock -name clk_gmii1 [get_pins u_GtClockDist_Inst/core_clocking_i/mmcm_adv_inst/CLKOUT0]
create_generated_clock -name clk_gmii2 [get_pins u_GtClockDist_Inst/core_clocking_i/mmcm_adv_inst/CLKOUT1]

set_clock_groups -name async_sys_gmii -asynchronous -group clk_sys -group {clk_gmii1 clk_gmii2} -group clk_indep -group clk_spi -group clk_adc

set_false_path -through [get_ports {LED[0]}]
set_false_path -through [get_ports {LED[1]}]
set_false_path -through [get_ports {LED[2]}]
set_false_path -through [get_ports {LED[3]}]

set_false_path -from [get_pins {u_ATR_Inst/discri_period_reg[*]/C}] -to [get_pins {u_ATR_Inst/gen_selfveto[*].u_selfveto/u_selfveto.active_count_reg[*]/R}]
set_false_path -from [get_pins {u_ATR_Inst/discri_period_reg[*]/C}] -to [get_pins {u_ATR_Inst/gen_selfveto[*].u_selfveto/u_selfveto.veto_count_reg[*]/R}]











