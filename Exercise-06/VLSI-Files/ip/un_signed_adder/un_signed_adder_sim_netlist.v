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
j5U=
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
