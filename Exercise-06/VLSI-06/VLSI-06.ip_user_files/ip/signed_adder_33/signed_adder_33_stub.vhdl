-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
-- Date        : Sun Mar  9 14:19:43 2025
-- Host        : Crawler-E30 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Users/fenja/Projekte/Advanced-VLSI-Design/Exercise-06/VLSI-Files/ip/signed_adder_33/signed_adder_33_stub.vhdl
-- Design      : signed_adder_33
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z010iclg225-1L
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity signed_adder_33 is
  Port ( 
    A : in STD_LOGIC_VECTOR ( 31 downto 0 );
    B : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S : out STD_LOGIC_VECTOR ( 32 downto 0 )
  );

end signed_adder_33;

architecture stub of signed_adder_33 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "A[31:0],B[31:0],S[32:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "c_addsub_v12_0_18,Vivado 2024.1";
begin
end;
