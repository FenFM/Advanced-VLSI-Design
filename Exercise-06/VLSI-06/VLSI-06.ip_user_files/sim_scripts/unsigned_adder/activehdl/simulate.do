transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

asim +access +r +m+unsigned_adder  -L xbip_utils_v3_0_13 -L c_reg_fd_v12_0_9 -L xbip_dsp48_wrapper_v3_0_6 -L xbip_pipe_v3_0_9 -L xbip_dsp48_addsub_v3_0_9 -L xbip_addsub_v3_0_9 -L c_addsub_v12_0_18 -L xil_defaultlib -L secureip -O5 xil_defaultlib.unsigned_adder

do {unsigned_adder.udo}

run 1000ns

endsim

quit -force
