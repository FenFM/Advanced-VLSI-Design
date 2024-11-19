ghdl -a isa_riscv.vhd
ghdl -a op_add.vhd
ghdl -a op_and.vhd
ghdl -a op_or.vhd
ghdl -a op_sub.vhd
ghdl -a op_xor.vhd
ghdl -a alu.vhd
ghdl -a alu_wrapper.vhd
ghdl -a alu_wrapper_tb.vhd

ghdl -e op_add
ghdl -e op_and
ghdl -e op_or
ghdl -e op_sub
ghdl -e op_xor
ghdl -e alu
ghdl -e alu_wrapper
ghdl -e alu_wrapper_tb

ghdl -r alu_wrapper_tb --vcd=alu_wrapper.vcd --stop-time=100ns
