onbreak {quit -f}
onerror {quit -f}

vsim -voptargs="+acc"  -L xbip_utils_v3_0_13 -L c_reg_fd_v12_0_9 -L xbip_dsp48_wrapper_v3_0_6 -L xbip_pipe_v3_0_9 -L xbip_dsp48_addsub_v3_0_9 -L xbip_addsub_v3_0_9 -L c_addsub_v12_0_18 -L xil_defaultlib -L secureip -lib xil_defaultlib xil_defaultlib.un_signed_adder

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure
view signals

do {un_signed_adder.udo}

run 1000ns

quit -force
