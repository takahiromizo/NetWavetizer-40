set_operating_conditions -ambient_temp 40.0
set_operating_conditions -airflow 0
set_operating_conditions -heatsink none

set_property CONFIG_MODE SPIx4 [current_design]
set_property CONFIG_VOLTAGE 3.3 [current_design]
set_property CFGBVS VCCO [current_design]
set_property BITSTREAM.CONFIG.SPI_BUSWIDTH 4 [current_design]







connect_debug_port u_ila_0/probe1 [get_nets [list {u_EVB_Inst/reg_block_size[0]_0[0]} {u_EVB_Inst/reg_block_size[0]_0[1]} {u_EVB_Inst/reg_block_size[0]_0[2]} {u_EVB_Inst/reg_block_size[0]_0[3]} {u_EVB_Inst/reg_block_size[0]_0[4]} {u_EVB_Inst/reg_block_size[0]_0[5]} {u_EVB_Inst/reg_block_size[0]_0[6]} {u_EVB_Inst/reg_block_size[0]_0[7]} {u_EVB_Inst/reg_block_size[0]_0[8]} {u_EVB_Inst/reg_block_size[0]_0[9]} {u_EVB_Inst/reg_block_size[0]_0[10]} {u_EVB_Inst/reg_block_size[0]_0[11]} {u_EVB_Inst/reg_block_size[0]_0[12]} {u_EVB_Inst/reg_block_size[0]_0[13]} {u_EVB_Inst/reg_block_size[0]_0[14]} {u_EVB_Inst/reg_block_size[0]_0[15]} {u_EVB_Inst/reg_block_size[0]_0[16]} {u_EVB_Inst/reg_block_size[0]_0[17]}]]
connect_debug_port u_ila_0/probe5 [get_nets [list {u_ADC_Inst/local_index[0]} {u_ADC_Inst/local_index[1]} {u_ADC_Inst/local_index[2]} {u_ADC_Inst/local_index[3]} {u_ADC_Inst/local_index[4]}]]



connect_debug_port u_ila_0/probe1 [get_nets [list {u_EVB_Inst/reg_event_size[0]} {u_EVB_Inst/reg_event_size[1]} {u_EVB_Inst/reg_event_size[2]} {u_EVB_Inst/reg_event_size[3]} {u_EVB_Inst/reg_event_size[4]} {u_EVB_Inst/reg_event_size[5]} {u_EVB_Inst/reg_event_size[6]} {u_EVB_Inst/reg_event_size[7]} {u_EVB_Inst/reg_event_size[8]} {u_EVB_Inst/reg_event_size[9]} {u_EVB_Inst/reg_event_size[10]} {u_EVB_Inst/reg_event_size[11]} {u_EVB_Inst/reg_event_size[12]} {u_EVB_Inst/reg_event_size[13]} {u_EVB_Inst/reg_event_size[14]} {u_EVB_Inst/reg_event_size[15]} {u_EVB_Inst/reg_event_size[16]} {u_EVB_Inst/reg_event_size[17]}]]


connect_debug_port u_ila_0/probe6 [get_nets [list {u_EVB_Inst/din_evbuf_swap[0]} {u_EVB_Inst/din_evbuf_swap[1]} {u_EVB_Inst/din_evbuf_swap[2]} {u_EVB_Inst/din_evbuf_swap[3]} {u_EVB_Inst/din_evbuf_swap[4]} {u_EVB_Inst/din_evbuf_swap[5]} {u_EVB_Inst/din_evbuf_swap[6]} {u_EVB_Inst/din_evbuf_swap[7]} {u_EVB_Inst/din_evbuf_swap[8]} {u_EVB_Inst/din_evbuf_swap[9]} {u_EVB_Inst/din_evbuf_swap[10]} {u_EVB_Inst/din_evbuf_swap[11]} {u_EVB_Inst/din_evbuf_swap[12]} {u_EVB_Inst/din_evbuf_swap[13]} {u_EVB_Inst/din_evbuf_swap[14]} {u_EVB_Inst/din_evbuf_swap[15]} {u_EVB_Inst/din_evbuf_swap[16]} {u_EVB_Inst/din_evbuf_swap[17]} {u_EVB_Inst/din_evbuf_swap[18]} {u_EVB_Inst/din_evbuf_swap[19]} {u_EVB_Inst/din_evbuf_swap[20]} {u_EVB_Inst/din_evbuf_swap[21]} {u_EVB_Inst/din_evbuf_swap[22]} {u_EVB_Inst/din_evbuf_swap[23]} {u_EVB_Inst/din_evbuf_swap[24]} {u_EVB_Inst/din_evbuf_swap[25]} {u_EVB_Inst/din_evbuf_swap[26]} {u_EVB_Inst/din_evbuf_swap[27]} {u_EVB_Inst/din_evbuf_swap[28]} {u_EVB_Inst/din_evbuf_swap[29]} {u_EVB_Inst/din_evbuf_swap[30]} {u_EVB_Inst/din_evbuf_swap[31]}]]




connect_debug_port u_ila_0/probe3 [get_nets [list {u_EVB_Inst/din_evbuf[0]} {u_EVB_Inst/din_evbuf[1]} {u_EVB_Inst/din_evbuf[2]} {u_EVB_Inst/din_evbuf[3]} {u_EVB_Inst/din_evbuf[4]} {u_EVB_Inst/din_evbuf[5]} {u_EVB_Inst/din_evbuf[6]} {u_EVB_Inst/din_evbuf[7]} {u_EVB_Inst/din_evbuf[8]} {u_EVB_Inst/din_evbuf[9]} {u_EVB_Inst/din_evbuf[10]} {u_EVB_Inst/din_evbuf[11]} {u_EVB_Inst/din_evbuf[12]} {u_EVB_Inst/din_evbuf[13]} {u_EVB_Inst/din_evbuf[14]} {u_EVB_Inst/din_evbuf[15]} {u_EVB_Inst/din_evbuf[16]} {u_EVB_Inst/din_evbuf[17]} {u_EVB_Inst/din_evbuf[18]} {u_EVB_Inst/din_evbuf[19]} {u_EVB_Inst/din_evbuf[20]} {u_EVB_Inst/din_evbuf[21]} {u_EVB_Inst/din_evbuf[22]} {u_EVB_Inst/din_evbuf[23]} {u_EVB_Inst/din_evbuf[24]} {u_EVB_Inst/din_evbuf[25]} {u_EVB_Inst/din_evbuf[26]} {u_EVB_Inst/din_evbuf[27]} {u_EVB_Inst/din_evbuf[28]} {u_EVB_Inst/din_evbuf[29]} {u_EVB_Inst/din_evbuf[30]} {u_EVB_Inst/din_evbuf[31]}]]




connect_debug_port u_ila_0/probe2 [get_nets [list {u_ADC_Inst/pgfull_fifo[0]} {u_ADC_Inst/pgfull_fifo[1]} {u_ADC_Inst/pgfull_fifo[2]} {u_ADC_Inst/pgfull_fifo[3]} {u_ADC_Inst/pgfull_fifo[4]} {u_ADC_Inst/pgfull_fifo[5]} {u_ADC_Inst/pgfull_fifo[6]} {u_ADC_Inst/pgfull_fifo[7]} {u_ADC_Inst/pgfull_fifo[8]} {u_ADC_Inst/pgfull_fifo[9]} {u_ADC_Inst/pgfull_fifo[10]} {u_ADC_Inst/pgfull_fifo[11]} {u_ADC_Inst/pgfull_fifo[12]} {u_ADC_Inst/pgfull_fifo[13]} {u_ADC_Inst/pgfull_fifo[14]} {u_ADC_Inst/pgfull_fifo[15]} {u_ADC_Inst/pgfull_fifo[16]} {u_ADC_Inst/pgfull_fifo[17]} {u_ADC_Inst/pgfull_fifo[18]} {u_ADC_Inst/pgfull_fifo[19]} {u_ADC_Inst/pgfull_fifo[20]} {u_ADC_Inst/pgfull_fifo[21]} {u_ADC_Inst/pgfull_fifo[22]} {u_ADC_Inst/pgfull_fifo[23]} {u_ADC_Inst/pgfull_fifo[24]} {u_ADC_Inst/pgfull_fifo[25]} {u_ADC_Inst/pgfull_fifo[26]} {u_ADC_Inst/pgfull_fifo[27]} {u_ADC_Inst/pgfull_fifo[28]} {u_ADC_Inst/pgfull_fifo[29]} {u_ADC_Inst/pgfull_fifo[30]} {u_ADC_Inst/pgfull_fifo[31]}]]



connect_debug_port u_ila_0/probe1 [get_nets [list {u_EVB_Inst/din_evbuf[0]} {u_EVB_Inst/din_evbuf[1]} {u_EVB_Inst/din_evbuf[2]} {u_EVB_Inst/din_evbuf[3]} {u_EVB_Inst/din_evbuf[4]} {u_EVB_Inst/din_evbuf[5]} {u_EVB_Inst/din_evbuf[6]} {u_EVB_Inst/din_evbuf[7]} {u_EVB_Inst/din_evbuf[8]} {u_EVB_Inst/din_evbuf[9]} {u_EVB_Inst/din_evbuf[10]} {u_EVB_Inst/din_evbuf[11]} {u_EVB_Inst/din_evbuf[12]} {u_EVB_Inst/din_evbuf[13]} {u_EVB_Inst/din_evbuf[14]} {u_EVB_Inst/din_evbuf[15]} {u_EVB_Inst/din_evbuf[16]} {u_EVB_Inst/din_evbuf[17]} {u_EVB_Inst/din_evbuf[18]} {u_EVB_Inst/din_evbuf[19]} {u_EVB_Inst/din_evbuf[20]} {u_EVB_Inst/din_evbuf[21]} {u_EVB_Inst/din_evbuf[22]} {u_EVB_Inst/din_evbuf[23]} {u_EVB_Inst/din_evbuf[24]} {u_EVB_Inst/din_evbuf[25]} {u_EVB_Inst/din_evbuf[26]} {u_EVB_Inst/din_evbuf[27]} {u_EVB_Inst/din_evbuf[28]} {u_EVB_Inst/din_evbuf[29]} {u_EVB_Inst/din_evbuf[30]} {u_EVB_Inst/din_evbuf[31]}]]
connect_debug_port u_ila_0/probe4 [get_nets [list {u_ADC_Inst/state_build[0]} {u_ADC_Inst/state_build[1]} {u_ADC_Inst/state_build[2]} {u_ADC_Inst/state_build[3]}]]
connect_debug_port u_ila_0/probe5 [get_nets [list {u_ADC_Inst/state_bbus[0]} {u_ADC_Inst/state_bbus[1]}]]
connect_debug_port u_ila_0/probe8 [get_nets [list u_ADC_Inst/empty_bbuffer]]
connect_debug_port u_ila_0/probe10 [get_nets [list u_ADC_Inst/full_flag]]
connect_debug_port u_ila_0/probe13 [get_nets [list u_ADC_Inst/pgfull_flag]]
connect_debug_port u_ila_0/probe14 [get_nets [list u_EVB_Inst/pgfull_sub_evbuf]]




connect_debug_port u_ila_1/probe2 [get_nets [list {gen_tsd[0].u_TSD_Inst/dAfull}]]





connect_debug_port u_ila_0/probe2 [get_nets [list {u_EVB_Inst/din_evbuf_swap[0]} {u_EVB_Inst/din_evbuf_swap[1]} {u_EVB_Inst/din_evbuf_swap[2]} {u_EVB_Inst/din_evbuf_swap[3]} {u_EVB_Inst/din_evbuf_swap[4]} {u_EVB_Inst/din_evbuf_swap[5]} {u_EVB_Inst/din_evbuf_swap[6]} {u_EVB_Inst/din_evbuf_swap[7]} {u_EVB_Inst/din_evbuf_swap[8]} {u_EVB_Inst/din_evbuf_swap[9]} {u_EVB_Inst/din_evbuf_swap[10]} {u_EVB_Inst/din_evbuf_swap[11]} {u_EVB_Inst/din_evbuf_swap[12]} {u_EVB_Inst/din_evbuf_swap[13]} {u_EVB_Inst/din_evbuf_swap[14]} {u_EVB_Inst/din_evbuf_swap[15]} {u_EVB_Inst/din_evbuf_swap[16]} {u_EVB_Inst/din_evbuf_swap[17]} {u_EVB_Inst/din_evbuf_swap[18]} {u_EVB_Inst/din_evbuf_swap[19]} {u_EVB_Inst/din_evbuf_swap[20]} {u_EVB_Inst/din_evbuf_swap[21]} {u_EVB_Inst/din_evbuf_swap[22]} {u_EVB_Inst/din_evbuf_swap[23]} {u_EVB_Inst/din_evbuf_swap[24]} {u_EVB_Inst/din_evbuf_swap[25]} {u_EVB_Inst/din_evbuf_swap[26]} {u_EVB_Inst/din_evbuf_swap[27]} {u_EVB_Inst/din_evbuf_swap[28]} {u_EVB_Inst/din_evbuf_swap[29]} {u_EVB_Inst/din_evbuf_swap[30]} {u_EVB_Inst/din_evbuf_swap[31]}]]

connect_debug_port u_ila_0/probe1 [get_nets [list {u_ADC_Inst/full_fifo[0]} {u_ADC_Inst/full_fifo[1]} {u_ADC_Inst/full_fifo[2]} {u_ADC_Inst/full_fifo[3]} {u_ADC_Inst/full_fifo[4]} {u_ADC_Inst/full_fifo[5]} {u_ADC_Inst/full_fifo[6]} {u_ADC_Inst/full_fifo[7]} {u_ADC_Inst/full_fifo[8]} {u_ADC_Inst/full_fifo[9]} {u_ADC_Inst/full_fifo[10]} {u_ADC_Inst/full_fifo[11]} {u_ADC_Inst/full_fifo[12]} {u_ADC_Inst/full_fifo[13]} {u_ADC_Inst/full_fifo[14]} {u_ADC_Inst/full_fifo[15]} {u_ADC_Inst/full_fifo[16]} {u_ADC_Inst/full_fifo[17]} {u_ADC_Inst/full_fifo[18]} {u_ADC_Inst/full_fifo[19]} {u_ADC_Inst/full_fifo[20]} {u_ADC_Inst/full_fifo[21]} {u_ADC_Inst/full_fifo[22]} {u_ADC_Inst/full_fifo[23]} {u_ADC_Inst/full_fifo[24]} {u_ADC_Inst/full_fifo[25]} {u_ADC_Inst/full_fifo[26]} {u_ADC_Inst/full_fifo[27]} {u_ADC_Inst/full_fifo[28]} {u_ADC_Inst/full_fifo[29]} {u_ADC_Inst/full_fifo[30]} {u_ADC_Inst/full_fifo[31]}]]
connect_debug_port u_ila_0/probe2 [get_nets [list {u_ADC_Inst/pgfull_fifo[0]} {u_ADC_Inst/pgfull_fifo[1]} {u_ADC_Inst/pgfull_fifo[2]} {u_ADC_Inst/pgfull_fifo[3]} {u_ADC_Inst/pgfull_fifo[4]} {u_ADC_Inst/pgfull_fifo[5]} {u_ADC_Inst/pgfull_fifo[6]} {u_ADC_Inst/pgfull_fifo[7]} {u_ADC_Inst/pgfull_fifo[8]} {u_ADC_Inst/pgfull_fifo[9]} {u_ADC_Inst/pgfull_fifo[10]} {u_ADC_Inst/pgfull_fifo[11]} {u_ADC_Inst/pgfull_fifo[12]} {u_ADC_Inst/pgfull_fifo[13]} {u_ADC_Inst/pgfull_fifo[14]} {u_ADC_Inst/pgfull_fifo[15]} {u_ADC_Inst/pgfull_fifo[16]} {u_ADC_Inst/pgfull_fifo[17]} {u_ADC_Inst/pgfull_fifo[18]} {u_ADC_Inst/pgfull_fifo[19]} {u_ADC_Inst/pgfull_fifo[20]} {u_ADC_Inst/pgfull_fifo[21]} {u_ADC_Inst/pgfull_fifo[22]} {u_ADC_Inst/pgfull_fifo[23]} {u_ADC_Inst/pgfull_fifo[24]} {u_ADC_Inst/pgfull_fifo[25]} {u_ADC_Inst/pgfull_fifo[26]} {u_ADC_Inst/pgfull_fifo[27]} {u_ADC_Inst/pgfull_fifo[28]} {u_ADC_Inst/pgfull_fifo[29]} {u_ADC_Inst/pgfull_fifo[30]} {u_ADC_Inst/pgfull_fifo[31]}]]
connect_debug_port u_ila_0/probe3 [get_nets [list {u_ADC_Inst/we_chfifo[0]} {u_ADC_Inst/we_chfifo[1]} {u_ADC_Inst/we_chfifo[2]} {u_ADC_Inst/we_chfifo[3]} {u_ADC_Inst/we_chfifo[4]} {u_ADC_Inst/we_chfifo[5]} {u_ADC_Inst/we_chfifo[6]} {u_ADC_Inst/we_chfifo[7]} {u_ADC_Inst/we_chfifo[8]} {u_ADC_Inst/we_chfifo[9]} {u_ADC_Inst/we_chfifo[10]} {u_ADC_Inst/we_chfifo[11]} {u_ADC_Inst/we_chfifo[12]} {u_ADC_Inst/we_chfifo[13]} {u_ADC_Inst/we_chfifo[14]} {u_ADC_Inst/we_chfifo[15]} {u_ADC_Inst/we_chfifo[16]} {u_ADC_Inst/we_chfifo[17]} {u_ADC_Inst/we_chfifo[18]} {u_ADC_Inst/we_chfifo[19]} {u_ADC_Inst/we_chfifo[20]} {u_ADC_Inst/we_chfifo[21]} {u_ADC_Inst/we_chfifo[22]} {u_ADC_Inst/we_chfifo[23]} {u_ADC_Inst/we_chfifo[24]} {u_ADC_Inst/we_chfifo[25]} {u_ADC_Inst/we_chfifo[26]} {u_ADC_Inst/we_chfifo[27]} {u_ADC_Inst/we_chfifo[28]} {u_ADC_Inst/we_chfifo[29]} {u_ADC_Inst/we_chfifo[30]} {u_ADC_Inst/we_chfifo[31]}]]
connect_debug_port u_ila_0/probe6 [get_nets [list u_ADC_Inst/full_block_buffer]]
connect_debug_port u_ila_0/probe17 [get_nets [list u_ADC_Inst/we_ringbuf]]



set_property C_CLK_INPUT_FREQ_HZ 300000000 [get_debug_cores dbg_hub]
set_property C_ENABLE_CLK_DIVIDER false [get_debug_cores dbg_hub]
set_property C_USER_SCAN_CHAIN 1 [get_debug_cores dbg_hub]
connect_debug_port dbg_hub/clk [get_nets clk_slow]
