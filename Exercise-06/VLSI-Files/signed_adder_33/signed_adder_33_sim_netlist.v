// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Sun Mar  9 12:24:52 2025
// Host        : Crawler-E30 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/fenja/Projekte/Advanced-VLSI-Design/Exercise-06/VLSI-Files/signed_adder_33/signed_adder_33_sim_netlist.v
// Design      : signed_adder_33
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010iclg225-1L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "signed_adder_33,c_addsub_v12_0_18,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_addsub_v12_0_18,Vivado 2024.1" *) 
(* NotValidForBitStream *)
module signed_adder_33
   (A,
    B,
    S);
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [31:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [31:0]B;
  (* x_interface_info = "xilinx.com:signal:data:1.0 s_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME s_intf, LAYERED_METADATA undef" *) output [32:0]S;

  wire [31:0]A;
  wire [31:0]B;
  wire [32:0]S;
  wire NLW_U0_C_OUT_UNCONNECTED;

  (* C_ADD_MODE = "0" *) 
  (* C_AINIT_VAL = "0" *) 
  (* C_A_TYPE = "0" *) 
  (* C_A_WIDTH = "32" *) 
  (* C_BORROW_LOW = "1" *) 
  (* C_BYPASS_LOW = "0" *) 
  (* C_B_CONSTANT = "0" *) 
  (* C_B_TYPE = "0" *) 
  (* C_B_VALUE = "00000000000000000000000000000000" *) 
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
  (* C_IMPLEMENTATION = "1" *) 
  (* C_LATENCY = "0" *) 
  (* C_OUT_WIDTH = "33" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* KEEP_HIERARCHY = "soft" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  signed_adder_33_c_addsub_v12_0_18 U0
       (.A(A),
        .ADD(1'b1),
        .B(B),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 2656)
`pragma protect data_block
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
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 11040)
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
