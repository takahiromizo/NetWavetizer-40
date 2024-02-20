vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xpm
vlib modelsim_lib/msim/gig_ethernet_pcs_pma_v16_2_13
vlib modelsim_lib/msim/xil_defaultlib

vmap xpm modelsim_lib/msim/xpm
vmap gig_ethernet_pcs_pma_v16_2_13 modelsim_lib/msim/gig_ethernet_pcs_pma_v16_2_13
vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib

vlog -work xpm -64 -incr -mfcu  -sv \
"/tools/Xilinx/Vivado/2023.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"/tools/Xilinx/Vivado/2023.1/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"/tools/Xilinx/Vivado/2023.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -64 -93  \
"/tools/Xilinx/Vivado/2023.1/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work gig_ethernet_pcs_pma_v16_2_13 -64 -93  \
"../../../ipstatic/hdl/gig_ethernet_pcs_pma_v16_2_rfs.vhd" \

vlog -work gig_ethernet_pcs_pma_v16_2_13 -64 -incr -mfcu  \
"../../../ipstatic/hdl/gig_ethernet_pcs_pma_v16_2_rfs.v" \

vcom -work xil_defaultlib -64 -93  \
"../../../../gig_ethernet_pcs_pma_ex.gen/sources_1/ip/gig_ethernet_pcs_pma/synth/transceiver/gig_ethernet_pcs_pma_gtwizard_gtrxreset_seq.vhd" \
"../../../../gig_ethernet_pcs_pma_ex.gen/sources_1/ip/gig_ethernet_pcs_pma/synth/transceiver/gig_ethernet_pcs_pma_gtwizard_gtrxpmarst_seq.vhd" \
"../../../../gig_ethernet_pcs_pma_ex.gen/sources_1/ip/gig_ethernet_pcs_pma/synth/transceiver/gig_ethernet_pcs_pma_gtwizard.vhd" \
"../../../../gig_ethernet_pcs_pma_ex.gen/sources_1/ip/gig_ethernet_pcs_pma/synth/transceiver/gig_ethernet_pcs_pma_gtwizard_multi_gt.vhd" \
"../../../../gig_ethernet_pcs_pma_ex.gen/sources_1/ip/gig_ethernet_pcs_pma/synth/transceiver/gig_ethernet_pcs_pma_gtwizard_gt.vhd" \
"../../../../gig_ethernet_pcs_pma_ex.gen/sources_1/ip/gig_ethernet_pcs_pma/synth/transceiver/gig_ethernet_pcs_pma_gtwizard_init.vhd" \
"../../../../gig_ethernet_pcs_pma_ex.gen/sources_1/ip/gig_ethernet_pcs_pma/synth/transceiver/gig_ethernet_pcs_pma_tx_startup_fsm.vhd" \
"../../../../gig_ethernet_pcs_pma_ex.gen/sources_1/ip/gig_ethernet_pcs_pma/synth/transceiver/gig_ethernet_pcs_pma_rx_startup_fsm.vhd" \
"../../../../gig_ethernet_pcs_pma_ex.gen/sources_1/ip/gig_ethernet_pcs_pma/synth/gig_ethernet_pcs_pma_reset_sync.vhd" \
"../../../../gig_ethernet_pcs_pma_ex.gen/sources_1/ip/gig_ethernet_pcs_pma/synth/gig_ethernet_pcs_pma_sync_block.vhd" \
"../../../../gig_ethernet_pcs_pma_ex.gen/sources_1/ip/gig_ethernet_pcs_pma/synth/transceiver/gig_ethernet_pcs_pma_reset_wtd_timer.vhd" \
"../../../../gig_ethernet_pcs_pma_ex.gen/sources_1/ip/gig_ethernet_pcs_pma/synth/transceiver/gig_ethernet_pcs_pma_transceiver.vhd" \
"../../../../gig_ethernet_pcs_pma_ex.gen/sources_1/ip/gig_ethernet_pcs_pma/synth/gig_ethernet_pcs_pma_block.vhd" \
"../../../../gig_ethernet_pcs_pma_ex.gen/sources_1/ip/gig_ethernet_pcs_pma/synth/gig_ethernet_pcs_pma.vhd" \

vlog -work xil_defaultlib \
"glbl.v"

