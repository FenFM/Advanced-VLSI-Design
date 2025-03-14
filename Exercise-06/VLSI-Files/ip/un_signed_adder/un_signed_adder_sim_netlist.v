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
/EI=
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
