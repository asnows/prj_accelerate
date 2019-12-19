onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib v_gamma_0_opt

do {wave.do}

view wave
view structure
view signals

do {v_gamma_0.udo}

run -all

quit -force
