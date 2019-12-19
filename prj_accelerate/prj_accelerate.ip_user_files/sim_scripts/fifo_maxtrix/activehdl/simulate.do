onbreak {quit -force}
onerror {quit -force}

asim -t 1ps +access +r +m+fifo_maxtrix -L xilinx_vip -L xil_defaultlib -L xpm -L fifo_generator_v13_2_2 -L xilinx_vip -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.fifo_maxtrix xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {fifo_maxtrix.udo}

run -all

endsim

quit -force
