onbreak {quit -f}
onerror {quit -f}

vsim -voptargs="+acc" -t 1ps -L xilinx_vip -L xil_defaultlib -L xpm -L axi_lite_ipif_v3_0_4 -L v_tc_v6_1_12 -L v_gamma_v7_0_14 -L xilinx_vip -L unisims_ver -L unimacro_ver -L secureip -lib xil_defaultlib xil_defaultlib.v_gamma_0 xil_defaultlib.glbl

do {wave.do}

view wave
view structure
view signals

do {v_gamma_0.udo}

run -all

quit -force
