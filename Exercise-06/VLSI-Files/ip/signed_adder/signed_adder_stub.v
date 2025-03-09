// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Sun Mar  9 13:28:16 2025
// Host        : Crawler-E30 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top signed_adder -prefix
//               signed_adder_ signed_adder_stub.v
// Design      : signed_adder
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z010iclg225-1L
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "c_addsub_v12_0_18,Vivado 2024.1" *)
module signed_adder(A, B, ADD, S)
/* synthesis syn_black_box black_box_pad_pin="A[31:0],B[31:0],ADD,S[31:0]" */;
  input [31:0]A;
  input [31:0]B;
  input ADD;
  output [31:0]S;
endmodule
