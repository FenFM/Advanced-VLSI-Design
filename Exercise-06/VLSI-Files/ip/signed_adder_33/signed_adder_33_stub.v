// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Sun Mar  9 12:24:50 2025
// Host        : Crawler-E30 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top signed_adder_33 -prefix
//               signed_adder_33_ signed_adder_33_stub.v
// Design      : signed_adder_33
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z010iclg225-1L
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "c_addsub_v12_0_18,Vivado 2024.1" *)
module signed_adder_33(A, B, S)
/* synthesis syn_black_box black_box_pad_pin="A[31:0],B[31:0],S[32:0]" */;
  input [31:0]A;
  input [31:0]B;
  output [32:0]S;
endmodule
