// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Sun Mar  9 15:55:01 2025
// Host        : Crawler-E30 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/fenja/Projekte/Advanced-VLSI-Design/Exercise-06/VLSI-Files/ip/unsigned_adder_const_value_2/unsigned_adder_const_value_2_sim_netlist.v
// Design      : unsigned_adder_const_value_2
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010iclg225-1L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "unsigned_adder_const_value_2,c_addsub_v12_0_18,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_addsub_v12_0_18,Vivado 2024.1" *) 
(* NotValidForBitStream *)
module unsigned_adder_const_value_2
   (A,
    S);
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [31:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 s_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME s_intf, LAYERED_METADATA undef" *) output [31:0]S;

  wire [31:0]A;
  wire [31:0]S;
  wire NLW_U0_C_OUT_UNCONNECTED;

  (* C_ADD_MODE = "0" *) 
  (* C_AINIT_VAL = "0" *) 
  (* C_A_TYPE = "1" *) 
  (* C_A_WIDTH = "32" *) 
  (* C_BORROW_LOW = "1" *) 
  (* C_BYPASS_LOW = "0" *) 
  (* C_B_CONSTANT = "1" *) 
  (* C_B_TYPE = "1" *) 
  (* C_B_VALUE = "00000000000001000000000000000010" *) 
  (* C_B_WIDTH = "32" *) 
  (* C_CE_OVERRIDES_BYPASS = "1" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_BYPASS = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_C_IN = "0" *) 
  (* C_HAS_C_OUT = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "0" *) 
  (* C_LATENCY = "0" *) 
  (* C_OUT_WIDTH = "32" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* KEEP_HIERARCHY = "soft" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  unsigned_adder_const_value_2_c_addsub_v12_0_18 U0
       (.A(A),
        .ADD(1'b1),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BYPASS(1'b0),
        .CE(1'b1),
        .CLK(1'b0),
        .C_IN(1'b0),
        .C_OUT(NLW_U0_C_OUT_UNCONNECTED),
        .S(S),
        .SCLR(1'b0),
        .SINIT(1'b0),
        .SSET(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2024.1"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
j+cisgNr51kboBzSEDMqVtItc+GjGUiMNF0E04YxNeYXTtpqczXoHl7p3pBX3lPxGHPUBdZ6oYbA
uFzQSoAOvv3ANxN24NJ35g39Gushnh3bAhkIaggJwqirNk8uvbFei0Q37GZcy7DTONZHx9iSsnwg
43qcv84+v1Oqg1QlkK0=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
LvmfIuwVQiUSvu/SWE90Ii3gBrSlLLUK62Pe9Uo5lexkMeDgQfulU0pV4/6bexfxf29XSUIZb3c9
av2fcRcp1ZeyqEnW0ei/HP4UoYfgCSzAUmuehTopxqUP3M4kX2/ETc0gdNuIi6qDHquW7YY9QQGa
g5MTm81zI19+yvQdowrY7g+W1mLrHRcb8Ho+qe0uZMYO9K9DLpwNlhtSf0qufVmJGM+5COEyqb1U
lL+nfwveqOc0IWRRpPS42kC7OR6BTARi5c6dKCQl/a9fojTU0hW9itdcCGK5DL1CuzhnLB3Cw1Lc
UIHvmiN+LslcbwXadjp0wvd8yuh6HziY0Vfxsw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
sxpYAYC9AO3d/Qq5Dz0dcOejYw99+MiH0W395D6tyIroWG9T14T6E7ryw+s/by4tx97NytW6qUN3
NXZVsmgnxSKTeXfcn+ZXRsWNPcQGtCaIdh8TbBiHtUeZecWXJ0/iGORapfLQxNbHmGtiSkN1eYCn
C7QZMw6qZPNfuNyivRg=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
E/GNyTiOpevKZa3+bbpJb0kDvoBk/eMnN/JT+ul7JFDogMwn8CpOobzq4ORZE40PqtaeX8shZ2Io
cJi8jjFyYeWd2nZtLZo0heKqX3v/pdf8QoQbxat3X7qE+EWjBbCn/ZFGg9zTrFFxwaHk42COVzlL
0j+PRabCWynZ5ILjyTP47frcmCN/iRKt0d+pvi/GA4UjFDtb6+9p1niifgkhCn1MkMBg8U/Y5knN
CVQ7z+g5SrUo/3bEiUXLkpBhMSliuE96gVp/dhIEh9H7jm8yTGyk0JzdtVTLaZLa+Lip0djJZLpb
UppZLdmVomSIk5FAqXrXZx6cyoWBJHtDlyJZkA==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
hg0hZUmrq09eMOjEntvd+gf7Zd2U4BwDY1Jz7gQri0LZtchGB8Z8SRY7YjUyWlUFux+gzbhxtgxE
uXob+ZiD1GlC8r4A2zRmOzuSIMz5UnEhy5TMjR+8A23FUgB5H14Nk+8/ui0Zs/CqU3Odf3BBWOAg
zxnOh70mcUhtPTAIZ+EcN+1Ujtdp78bNTd2IQJcFIhDRt35kHTIgOpo8oDPU8cUgKH6HYVq0sF+B
1yu+k9PCMZikA3k51SJhEW/Qc39FpYPT9CKN0WwelzSM6CD2GrcLMAt1oh2PsLi9Pfz1zzfj+mED
XS3V2CvLYBAA5I2Zn5G1DKrCLW1s3QCGdjLFcQ==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2023_11", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
ZihOD8xT0OXV+vYQgVKC2OgNYw1KaLnWHAc+JKheEAvf+yg1M7C7urUi93p572HyJs7Y4xmmO7jH
ND7Tv3yag5/ovBwWsoZpyr5RiGqozyxd59WCmh1IY/4VIOP7O8XrKDP4OGGR4Yrc69eGX7icFD/q
q1Yri9lFsLwghmgnG5/5LI0ZMQuooogdTmG+J2E0ZDBWfT/UmG0W92Ul8I3gfcKlKOiouwG5y4Jp
nBDOfD0ITqlCH9MMIsDa+elFeLXvv2KVvemlQ6QmFkF7trsIsF7QEhsAEKVsCYQTNVAGTL0GQsfh
sg3wRbAMH9DIJaQxk+17Z2Yacz0Veyzzwk9ehw==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
HY3h60x+HFg/eOgHTI4UVm9DtPW6wqUKca7u8NGVkEwgcMgpHEWwLglcdrxdQNjcwm8OHot4ETKF
WKbgVoX+iDWvtyepO4qxoxeWXH2F1fmkO5TcCS5lfsbj510UC680iv6lj8Cyu8iiRTaXR/o4FoM0
fC0fK1I3vPhOTQ5CR3OgRKAFDdX+d/qZ444LSpBM+tvjaaKR1BRRMkaGxO58SlkZRhBySU0nhAQy
dLhrkimMDrmmj/sej98ps6eMFspr8+5pUYJg+vWp++Sm0zHT5N6L1+n+oCGTjgEAgNvxvIgPv6O6
O614qs4bb0unrlrWFTLtb8eoiQe9RHpwGopwlw==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
UwlS0UvncccxxkW4NnEPYSb0LG5K+diX5o0hrXyga8q/gD9ab0W8hccMe2HgIOrJ0coq4cXubRll
ZpfwAORkvZtLjLAkjJkvmwum68290Kk65/t/Zns9LY543if5KVhDzDg632T/2/g+S4iACupycWXY
cZ6s39/F2p//kX1YHKh6qPf3qkoP25aHoXQhlWkBAIGe3uIyPYPXstbeMaMeWMmKTh0rnBbtpr8y
0Qg1S5j9DIzW9sNl57338zbHnQbUbJzw5eAHPIYReJLbGLoFizMzbCeVUf9qQcME/zhozlHMqIYN
Mafo4cDvvsMIs8ppl+EWkfmPwMyBiDor8XdnJwhL6PXvmC52OK25D9SarDCqe+sqUKRPLYOzZm9s
mRp4pTSLWqKlA4Kmt9Om1GAjesqP6fBmfP1NGnjIrnslWz4gi45DlpUHMRKmIlfMjMLoDcxkJyie
bdt0EiJv3tUHW+hzM1osET2y5r7UP2tXX1I0KcbPrsM8mAjAbCi8yC8b

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
X0dvE3L7dLQCMLonwloQgw5itpWmwVthmLjXvNCwkkUnrWRnIFGWcVV+7J059QS+MH4TlngLY35K
jozGLlOeR74+bBTejoxLYWg2EOfziRkOnWV2uSeOTEyEL+LD9sSATD6G+de3w3tolkltsugp6Asm
4+ouB1syLSHEJDe3i6xdrhgn2gjStQgaIBrGx67K6P9M/ZpIE3tJpGwQpXAQW6mcrqXnyP8s9OOR
lKGNPgaQFWDxxHZY806A4MaHpWk9o7ni2o+CNUO1IEpPDpNcX5kMGjPY2d5U2F21JssOrE9gdyeA
WYmROE1TZ0h61Y5QNSuC42zh2bxl5RnU9Yw9kA==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
oIVzpSluI7daBxkOk2gHCozBGlbxG53WoEhOzUaurQiUeJP9/arWOJWk+fvz3PNZhGKqhMT34Elf
4CE16vrKhBto+aiBjmbTGqgpcZuAov0ThKrdb5D2RErj9L03MzOMQdBEb2OGyWHIaVcOR12TL/Pc
ppZorRLXpXsMO6OiQvQgS6gBpPLmoJ/4mFQU2y7Gq4fQ1w0mBb5WD4aOFS27kco9sWZg134eJyHh
g3WophY4AK3S6VNrjwfZ8V2EHcWlysmTyQhS/i6nISRdlQIyBBenPXI1qC3X2elRwJJ1rDBw4tSk
FPpZVv+Pg6wD1lxgePFMJlGymPGte/sHafK1og==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
flfR64NYycLIyauxCLn1wC38i1K4/yOEiIIS/pzPw5b4T8AQasCEhfXccXWd7XYD8tVTgjkiZlil
BY/FskgSGdAPW60ru4A65EEa7ULY+aPS1CSMAW6nANPgjVXgGu5AsFKiDjSfY+ibvvFHUmJ8Zmez
wEdjdaf1uPn8gwW70f2+rXV6O5zQnCdBG+tQ5cUZMYqSxcdKZEcd7uFDN1+GqykP0vqNVRZMAmZE
umrRSJg1a1YyLdwwKiD+UbAJWJ0KQNS+4RQTCOHtz8/EK1t1YnoCf5KBTTe57whtj0S+rfOK5HaB
upEqngWyR+h+SKSvfYHRQkIHJPKSCB9buGG6MQ==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 2816)
`pragma protect data_block
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
5Pz0CIvNXCJvVuFlHNn3H/+JktKMPoQ=
`pragma protect end_protected
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2024.1"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
j+cisgNr51kboBzSEDMqVtItc+GjGUiMNF0E04YxNeYXTtpqczXoHl7p3pBX3lPxGHPUBdZ6oYbA
uFzQSoAOvv3ANxN24NJ35g39Gushnh3bAhkIaggJwqirNk8uvbFei0Q37GZcy7DTONZHx9iSsnwg
43qcv84+v1Oqg1QlkK0=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
LvmfIuwVQiUSvu/SWE90Ii3gBrSlLLUK62Pe9Uo5lexkMeDgQfulU0pV4/6bexfxf29XSUIZb3c9
av2fcRcp1ZeyqEnW0ei/HP4UoYfgCSzAUmuehTopxqUP3M4kX2/ETc0gdNuIi6qDHquW7YY9QQGa
g5MTm81zI19+yvQdowrY7g+W1mLrHRcb8Ho+qe0uZMYO9K9DLpwNlhtSf0qufVmJGM+5COEyqb1U
lL+nfwveqOc0IWRRpPS42kC7OR6BTARi5c6dKCQl/a9fojTU0hW9itdcCGK5DL1CuzhnLB3Cw1Lc
UIHvmiN+LslcbwXadjp0wvd8yuh6HziY0Vfxsw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
sxpYAYC9AO3d/Qq5Dz0dcOejYw99+MiH0W395D6tyIroWG9T14T6E7ryw+s/by4tx97NytW6qUN3
NXZVsmgnxSKTeXfcn+ZXRsWNPcQGtCaIdh8TbBiHtUeZecWXJ0/iGORapfLQxNbHmGtiSkN1eYCn
C7QZMw6qZPNfuNyivRg=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
E/GNyTiOpevKZa3+bbpJb0kDvoBk/eMnN/JT+ul7JFDogMwn8CpOobzq4ORZE40PqtaeX8shZ2Io
cJi8jjFyYeWd2nZtLZo0heKqX3v/pdf8QoQbxat3X7qE+EWjBbCn/ZFGg9zTrFFxwaHk42COVzlL
0j+PRabCWynZ5ILjyTP47frcmCN/iRKt0d+pvi/GA4UjFDtb6+9p1niifgkhCn1MkMBg8U/Y5knN
CVQ7z+g5SrUo/3bEiUXLkpBhMSliuE96gVp/dhIEh9H7jm8yTGyk0JzdtVTLaZLa+Lip0djJZLpb
UppZLdmVomSIk5FAqXrXZx6cyoWBJHtDlyJZkA==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
hg0hZUmrq09eMOjEntvd+gf7Zd2U4BwDY1Jz7gQri0LZtchGB8Z8SRY7YjUyWlUFux+gzbhxtgxE
uXob+ZiD1GlC8r4A2zRmOzuSIMz5UnEhy5TMjR+8A23FUgB5H14Nk+8/ui0Zs/CqU3Odf3BBWOAg
zxnOh70mcUhtPTAIZ+EcN+1Ujtdp78bNTd2IQJcFIhDRt35kHTIgOpo8oDPU8cUgKH6HYVq0sF+B
1yu+k9PCMZikA3k51SJhEW/Qc39FpYPT9CKN0WwelzSM6CD2GrcLMAt1oh2PsLi9Pfz1zzfj+mED
XS3V2CvLYBAA5I2Zn5G1DKrCLW1s3QCGdjLFcQ==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2023_11", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
ZihOD8xT0OXV+vYQgVKC2OgNYw1KaLnWHAc+JKheEAvf+yg1M7C7urUi93p572HyJs7Y4xmmO7jH
ND7Tv3yag5/ovBwWsoZpyr5RiGqozyxd59WCmh1IY/4VIOP7O8XrKDP4OGGR4Yrc69eGX7icFD/q
q1Yri9lFsLwghmgnG5/5LI0ZMQuooogdTmG+J2E0ZDBWfT/UmG0W92Ul8I3gfcKlKOiouwG5y4Jp
nBDOfD0ITqlCH9MMIsDa+elFeLXvv2KVvemlQ6QmFkF7trsIsF7QEhsAEKVsCYQTNVAGTL0GQsfh
sg3wRbAMH9DIJaQxk+17Z2Yacz0Veyzzwk9ehw==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
HY3h60x+HFg/eOgHTI4UVm9DtPW6wqUKca7u8NGVkEwgcMgpHEWwLglcdrxdQNjcwm8OHot4ETKF
WKbgVoX+iDWvtyepO4qxoxeWXH2F1fmkO5TcCS5lfsbj510UC680iv6lj8Cyu8iiRTaXR/o4FoM0
fC0fK1I3vPhOTQ5CR3OgRKAFDdX+d/qZ444LSpBM+tvjaaKR1BRRMkaGxO58SlkZRhBySU0nhAQy
dLhrkimMDrmmj/sej98ps6eMFspr8+5pUYJg+vWp++Sm0zHT5N6L1+n+oCGTjgEAgNvxvIgPv6O6
O614qs4bb0unrlrWFTLtb8eoiQe9RHpwGopwlw==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
UwlS0UvncccxxkW4NnEPYSb0LG5K+diX5o0hrXyga8q/gD9ab0W8hccMe2HgIOrJ0coq4cXubRll
ZpfwAORkvZtLjLAkjJkvmwum68290Kk65/t/Zns9LY543if5KVhDzDg632T/2/g+S4iACupycWXY
cZ6s39/F2p//kX1YHKh6qPf3qkoP25aHoXQhlWkBAIGe3uIyPYPXstbeMaMeWMmKTh0rnBbtpr8y
0Qg1S5j9DIzW9sNl57338zbHnQbUbJzw5eAHPIYReJLbGLoFizMzbCeVUf9qQcME/zhozlHMqIYN
Mafo4cDvvsMIs8ppl+EWkfmPwMyBiDor8XdnJwhL6PXvmC52OK25D9SarDCqe+sqUKRPLYOzZm9s
mRp4pTSLWqKlA4Kmt9Om1GAjesqP6fBmfP1NGnjIrnslWz4gi45DlpUHMRKmIlfMjMLoDcxkJyie
bdt0EiJv3tUHW+hzM1osET2y5r7UP2tXX1I0KcbPrsM8mAjAbCi8yC8b

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
X0dvE3L7dLQCMLonwloQgw5itpWmwVthmLjXvNCwkkUnrWRnIFGWcVV+7J059QS+MH4TlngLY35K
jozGLlOeR74+bBTejoxLYWg2EOfziRkOnWV2uSeOTEyEL+LD9sSATD6G+de3w3tolkltsugp6Asm
4+ouB1syLSHEJDe3i6xdrhgn2gjStQgaIBrGx67K6P9M/ZpIE3tJpGwQpXAQW6mcrqXnyP8s9OOR
lKGNPgaQFWDxxHZY806A4MaHpWk9o7ni2o+CNUO1IEpPDpNcX5kMGjPY2d5U2F21JssOrE9gdyeA
WYmROE1TZ0h61Y5QNSuC42zh2bxl5RnU9Yw9kA==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
oIVzpSluI7daBxkOk2gHCozBGlbxG53WoEhOzUaurQiUeJP9/arWOJWk+fvz3PNZhGKqhMT34Elf
4CE16vrKhBto+aiBjmbTGqgpcZuAov0ThKrdb5D2RErj9L03MzOMQdBEb2OGyWHIaVcOR12TL/Pc
ppZorRLXpXsMO6OiQvQgS6gBpPLmoJ/4mFQU2y7Gq4fQ1w0mBb5WD4aOFS27kco9sWZg134eJyHh
g3WophY4AK3S6VNrjwfZ8V2EHcWlysmTyQhS/i6nISRdlQIyBBenPXI1qC3X2elRwJJ1rDBw4tSk
FPpZVv+Pg6wD1lxgePFMJlGymPGte/sHafK1og==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
flfR64NYycLIyauxCLn1wC38i1K4/yOEiIIS/pzPw5b4T8AQasCEhfXccXWd7XYD8tVTgjkiZlil
BY/FskgSGdAPW60ru4A65EEa7ULY+aPS1CSMAW6nANPgjVXgGu5AsFKiDjSfY+ibvvFHUmJ8Zmez
wEdjdaf1uPn8gwW70f2+rXV6O5zQnCdBG+tQ5cUZMYqSxcdKZEcd7uFDN1+GqykP0vqNVRZMAmZE
umrRSJg1a1YyLdwwKiD+UbAJWJ0KQNS+4RQTCOHtz8/EK1t1YnoCf5KBTTe57whtj0S+rfOK5HaB
upEqngWyR+h+SKSvfYHRQkIHJPKSCB9buGG6MQ==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 7120)
`pragma protect data_block
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
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
