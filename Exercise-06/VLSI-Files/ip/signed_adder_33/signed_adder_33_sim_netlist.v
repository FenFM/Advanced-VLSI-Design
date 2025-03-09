// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Sun Mar  9 12:24:50 2025
// Host        : Crawler-E30 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top signed_adder_33 -prefix
//               signed_adder_33_ signed_adder_33_sim_netlist.v
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 2608)
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 10784)
`pragma protect data_block
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
J50KGbV6KugtVLw=
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
