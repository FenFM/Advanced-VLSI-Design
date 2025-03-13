// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Thu Mar 13 00:14:19 2025
// Host        : Crawler-E30 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top un_signed_adder -prefix
//               un_signed_adder_ un_signed_adder_sim_netlist.v
// Design      : un_signed_adder
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
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
0Ok=
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
