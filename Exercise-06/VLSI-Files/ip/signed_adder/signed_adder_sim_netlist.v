// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Thu Mar 13 00:15:18 2025
// Host        : Crawler-E30 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/fenja/Projekte/Advanced-VLSI-Design/Exercise-06/VLSI-Files/ip/signed_adder/signed_adder_sim_netlist.v
// Design      : signed_adder
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "signed_adder,c_addsub_v12_0_18,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_addsub_v12_0_18,Vivado 2024.1" *) 
(* NotValidForBitStream *)
module signed_adder
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
  (* C_OUT_WIDTH = "32" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* KEEP_HIERARCHY = "soft" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  signed_adder_c_addsub_v12_0_18 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 11440)
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
