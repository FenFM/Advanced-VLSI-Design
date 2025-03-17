// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Thu Mar 13 00:16:05 2025
// Host        : Crawler-E30 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top signed_divider -prefix
//               signed_divider_ signed_divider_stub.v
// Design      : signed_divider
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "div_gen_v5_1_22,Vivado 2024.1" *)
module signed_divider(s_axis_divisor_tvalid, 
  s_axis_divisor_tdata, s_axis_dividend_tvalid, s_axis_dividend_tdata, 
  m_axis_dout_tvalid, m_axis_dout_tuser, m_axis_dout_tdata)
/* synthesis syn_black_box black_box_pad_pin="s_axis_divisor_tvalid,s_axis_divisor_tdata[31:0],s_axis_dividend_tvalid,s_axis_dividend_tdata[31:0],m_axis_dout_tvalid,m_axis_dout_tuser[0:0],m_axis_dout_tdata[63:0]" */;
  input s_axis_divisor_tvalid;
  input [31:0]s_axis_divisor_tdata;
  input s_axis_dividend_tvalid;
  input [31:0]s_axis_dividend_tdata;
  output m_axis_dout_tvalid;
  output [0:0]m_axis_dout_tuser;
  output [63:0]m_axis_dout_tdata;
endmodule
