transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

asim +access +r +m+signed_multiplier  -L xbip_utils_v3_0_13 -L xbip_pipe_v3_0_9 -L xbip_bram18k_v3_0_9 -L mult_gen_v12_0_21 -L xil_defaultlib -L secureip -O5 xil_defaultlib.signed_multiplier

do {signed_multiplier.udo}

run 1000ns

endsim

quit -force
