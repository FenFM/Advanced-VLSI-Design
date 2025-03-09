// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Sun Mar  9 10:36:59 2025
// Host        : Crawler-E30 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top un_signed_adder -prefix
//               un_signed_adder_ un_signed_adder_sim_netlist.v
// Design      : un_signed_adder
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010iclg225-1L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "un_signed_adder,c_addsub_v12_0_18,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_addsub_v12_0_18,Vivado 2024.1" *) 
(* NotValidForBitStream *)
module un_signed_adder
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
  (* C_A_TYPE = "0" *) 
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
  un_signed_adder_c_addsub_v12_0_18 U0
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
L1A=
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
