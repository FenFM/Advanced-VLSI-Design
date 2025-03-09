vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xbip_utils_v3_0_13
vlib modelsim_lib/msim/c_reg_fd_v12_0_9
vlib modelsim_lib/msim/xbip_dsp48_wrapper_v3_0_6
vlib modelsim_lib/msim/xbip_pipe_v3_0_9
vlib modelsim_lib/msim/xbip_dsp48_addsub_v3_0_9
vlib modelsim_lib/msim/xbip_addsub_v3_0_9
vlib modelsim_lib/msim/c_addsub_v12_0_18
vlib modelsim_lib/msim/c_gate_bit_v12_0_9
vlib modelsim_lib/msim/xbip_counter_v3_0_9
vlib modelsim_lib/msim/c_counter_binary_v12_0_19
vlib modelsim_lib/msim/xil_defaultlib

vmap xbip_utils_v3_0_13 modelsim_lib/msim/xbip_utils_v3_0_13
vmap c_reg_fd_v12_0_9 modelsim_lib/msim/c_reg_fd_v12_0_9
vmap xbip_dsp48_wrapper_v3_0_6 modelsim_lib/msim/xbip_dsp48_wrapper_v3_0_6
vmap xbip_pipe_v3_0_9 modelsim_lib/msim/xbip_pipe_v3_0_9
vmap xbip_dsp48_addsub_v3_0_9 modelsim_lib/msim/xbip_dsp48_addsub_v3_0_9
vmap xbip_addsub_v3_0_9 modelsim_lib/msim/xbip_addsub_v3_0_9
vmap c_addsub_v12_0_18 modelsim_lib/msim/c_addsub_v12_0_18
vmap c_gate_bit_v12_0_9 modelsim_lib/msim/c_gate_bit_v12_0_9
vmap xbip_counter_v3_0_9 modelsim_lib/msim/xbip_counter_v3_0_9
vmap c_counter_binary_v12_0_19 modelsim_lib/msim/c_counter_binary_v12_0_19
vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib

vcom -work xbip_utils_v3_0_13  -93  \
"../../../ipstatic/hdl/xbip_utils_v3_0_vh_rfs.vhd" \

vcom -work c_reg_fd_v12_0_9  -93  \
"../../../ipstatic/hdl/c_reg_fd_v12_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_wrapper_v3_0_6  -93  \
"../../../ipstatic/hdl/xbip_dsp48_wrapper_v3_0_vh_rfs.vhd" \

vcom -work xbip_pipe_v3_0_9  -93  \
"../../../ipstatic/hdl/xbip_pipe_v3_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_addsub_v3_0_9  -93  \
"../../../ipstatic/hdl/xbip_dsp48_addsub_v3_0_vh_rfs.vhd" \

vcom -work xbip_addsub_v3_0_9  -93  \
"../../../ipstatic/hdl/xbip_addsub_v3_0_vh_rfs.vhd" \

vcom -work c_addsub_v12_0_18  -93  \
"../../../ipstatic/hdl/c_addsub_v12_0_vh_rfs.vhd" \

vcom -work c_gate_bit_v12_0_9  -93  \
"../../../ipstatic/hdl/c_gate_bit_v12_0_vh_rfs.vhd" \

vcom -work xbip_counter_v3_0_9  -93  \
"../../../ipstatic/hdl/xbip_counter_v3_0_vh_rfs.vhd" \

vcom -work c_counter_binary_v12_0_19  -93  \
"../../../ipstatic/hdl/c_counter_binary_v12_0_vh_rfs.vhd" \

vcom -work xil_defaultlib  -93  \
"../../../../../VLSI-Files/ip/counter_32/sim/counter_32.vhd" \


