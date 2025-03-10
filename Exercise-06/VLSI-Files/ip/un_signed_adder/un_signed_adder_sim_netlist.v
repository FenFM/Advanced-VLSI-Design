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
xWw=
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
