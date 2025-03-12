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
3wk=
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
