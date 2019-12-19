onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib sobel_filter_2_opt

do {wave.do}

view wave
view structure
view signals

do {sobel_filter_2.udo}

run -all

quit -force
