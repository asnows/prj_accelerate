onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib img_cpy_0_opt

do {wave.do}

view wave
view structure
view signals

do {img_cpy_0.udo}

run -all

quit -force
