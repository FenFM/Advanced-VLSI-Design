// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Sun Mar  9 13:28:16 2025
// Host        : Crawler-E30 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top unsigned_adder -prefix
//               unsigned_adder_ unsigned_adder_sim_netlist.v
// Design      : unsigned_adder
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010iclg225-1L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "unsigned_adder,c_addsub_v12_0_18,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_addsub_v12_0_18,Vivado 2024.1" *) 
(* NotValidForBitStream *)
module unsigned_adder
   (A,
    B,
    ADD,
    S);
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [31:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [31:0]B;
  (* x_interface_info = "xilinx.com:signal:data:1.0 add_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME add_intf, LAYERED_METADATA undef" *) input ADD;
  (* x_interface_info = "xilinx.com:signal:data:1.0 s_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME s_intf, LAYERED_METADATA undef" *) output [31:0]S;

  wire [31:0]A;
  wire ADD;
  wire [31:0]B;
  wire [31:0]S;
  wire NLW_U0_C_OUT_UNCONNECTED;

  (* C_ADD_MODE = "2" *) 
  (* C_AINIT_VAL = "0" *) 
  (* C_A_TYPE = "1" *) 
  (* C_A_WIDTH = "32" *) 
  (* C_BORROW_LOW = "1" *) 
  (* C_BYPASS_LOW = "0" *) 
  (* C_B_CONSTANT = "0" *) 
  (* C_B_TYPE = "1" *) 
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
  (* C_OUT_WIDTH = "32" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* KEEP_HIERARCHY = "soft" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  unsigned_adder_c_addsub_v12_0_18 U0
       (.A(A),
        .ADD(ADD),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 2624)
`pragma protect data_block
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
VR8=
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 11168)
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
