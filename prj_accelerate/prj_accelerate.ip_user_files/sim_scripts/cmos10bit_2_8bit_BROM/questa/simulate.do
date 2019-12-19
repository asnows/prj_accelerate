onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib cmos10bit_2_8bit_BROM_opt

do {wave.do}

view wave
view structure
view signals

do {cmos10bit_2_8bit_BROM.udo}

run -all

quit -force
