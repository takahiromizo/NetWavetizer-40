transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

asim +access +r +m+gig_ethernet_pcs_pma  -L xpm -L gig_ethernet_pcs_pma_v16_2_13 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -O2 xil_defaultlib.gig_ethernet_pcs_pma xil_defaultlib.glbl

do {gig_ethernet_pcs_pma.udo}

run

endsim

quit -force
