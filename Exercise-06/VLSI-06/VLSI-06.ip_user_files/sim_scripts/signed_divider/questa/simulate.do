onbreak {quit -f}
onerror {quit -f}

vsim  -lib xil_defaultlib signed_divider_opt

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure
view signals

do {signed_divider.udo}

run 1000ns

quit -force
