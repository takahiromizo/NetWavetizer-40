transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

vlib work
vmap -link {/home/mizoguchi/FW_Develop/NetWavetizer-40_V1/NetWavetizer-40_V1.srcs/sources_1/ip/gig_ethernet_pcs_pma/gig_ethernet_pcs_pma_ex/gig_ethernet_pcs_pma_ex.cache/compile_simlib/activehdl}
vlib activehdl/xpm
vlib activehdl/gig_ethernet_pcs_pma_v16_2_13
vlib activehdl/xil_defaultlib

vlog -work xpm  -sv2k12 -l xpm -l gig_ethernet_pcs_pma_v16_2_13 -l xil_defaultlib \
"/tools/Xilinx/Vivado/2023.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"/tools/Xilinx/Vivado/2023.1/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"/tools/Xilinx/Vivado/2023.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93  \
"/tools/Xilinx/Vivado/2023.1/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work gig_ethernet_pcs_pma_v16_2_13 -93  \
"../../../ipstatic/hdl/gig_ethernet_pcs_pma_v16_2_rfs.vhd" \

vlog -work gig_ethernet_pcs_pma_v16_2_13  -v2k5 -l xpm -l gig_ethernet_pcs_pma_v16_2_13 -l xil_defaultlib \
"../../../ipstatic/hdl/gig_ethernet_pcs_pma_v16_2_rfs.v" \

vcom -work xil_defaultlib -93  \
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

