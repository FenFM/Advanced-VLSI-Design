// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Sun Mar  9 13:28:16 2025
// Host        : Crawler-E30 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top signed_adder -prefix
//               signed_adder_ signed_adder_sim_netlist.v
// Design      : signed_adder
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010iclg225-1L
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 11184)
`pragma protect data_block
gpQyti8NUqZsIM/mAnH50IbQyQ50Hcf3NPls3qsTPAAMzSGUF/AFkSbMHsA5adqrSlhyZL15qHPx
BQlmQ9C30r8HSjPMbrL7ehM/r2AI/a2wg3ApTMZPjvPLGOKdtd4ZSf70GITRn/XTNo/WzrU8VouR
x0QsWwG4rFYILSoV9WuS0Mmd/POwARASWYsoZGzhPEc9QyVNS6vmEFuJmysb8aju58H0TTHInRZK
OeWOIoZpK0RPiL8eNZnVIrlU3plVmmm3DCsDVdH5giVJq5z9Zscn2f4NP+fg5PqXUB5N3txdKYAu
hkwkdYAfiaW7X8H+5c2s6D/Ja2vueFGtnU/EVp5BbHiKwuGhChtOJbGHDNugzOg5Yky50S1t0FCO
ERQ9N9vGfH59G1INTVMy16FaUIv9TFhgr2bg0Py09kVSkO1eMYkGz2TEo0isOFau3p7h4KOQcacH
kAjTkCsI0X0J7b8ucpJxaoAIPIex1JVWvET00lolXxhZC4tqr7DNwDHv9n52Yhp5k/tGyH+ANys4
vYRatTHVTc9OKCjLF1TCEjRVwWLBg/mZxQ7AVLXAkS9pH4dRZHHyuct8ET1bkDoRQbsc8lreUIa5
qQvdT0yvxcSTFfpEA1pB6JZYXGxrRhtV3tbNfRRN0+gYPHFlavjYknRqopuqdWnzh/vKmrNFb9Gr
oiEKryIAobEgbuy33x+2XZvxlP7jnCD5S6q/+ByZvoFqY/9FILm82O8HZhuNBRn80TA1TB4UrBt9
8amyH7K3KY2Ox4Te5BEzssYMBSZ/odmv8lt5FFD/nWmMUV1DXKEef3kTUIekcflfpRbByH3h1cw3
0Nt+BC+H/XxfIXNHUD9q5uQ2s19jpyVOxNivFe/xSa1pSM3xLdFMKgKW05cliLkX0DjNFKt+8kZ0
bth4XjHfZDxwVwHkUtIIegDE2Mdlc+o7x8cg8+Z/+XGioJ5sx+ANPsC0qPaCqlVzJOMo+et7N8NN
NuZhwShgM2vTIyrXidqp5tSufFRdcJeGMqQQFkBOYacoIiUtphjJ3WyTFZKOP6glI+18iABGmeGU
b+Qy0Kocv37RHl3bpCBprTyBggXoOIGCzCuT6IZjjeJwFTTjkVJ8Ul0DzaCAvq9E4i6NTCgQEI1x
bY38XSeua2jw0SFIZKD6d8j105Y8B4GZ3rrgkVRVDP89a0R0uxzhaDTky08Ol7KE9ky0W7G6F4z8
PcFMWW1qis4NFzSdpeuSOc/+AXyK710De89lOcYEwQDL7cKu83KrjF1CqOINroKn7I8B3/9Fq8fE
BbCmWmxpNvmjXKXoxdSm0npuanlsxwabsFRobK3gTXEu2w0nUoFuqP44h8gaWY7fZvxrDiQ3BLrC
JaU46tGxIYLDRcem7u+IiEfGQd9kNsyr2WR6M2YfJE3MK0oyBG0jkw6oO89K05RugHPF8jbLSUJd
7P5TpqvYg/KFahutrvjmJT22S75KRXCDUDCuyQSKAzSNjfTkYOA9G/tILtCwkv96fhZOcVDiGNlP
jB2cAUgpoIaSakPE8QfQQNJzN9/wA8pmlvc547p+FLnJ9GUjaqB/h8j/WqF8Cp1y+aBGNiAs0Aoa
RmGaf9sQIztyCYmBJCMxD033tLECc7AMHGRCNO132ANWKEjJTBIdGa670Xl9SP+2h1+fgKyIi/T6
mecI11FLM1D+TC6DxM1lLeb8Eei9T0TXLuFfYKuBxSCS++1x8952wBHXKwdHuG6E/jvtFS/kpStd
MXMPHgK5loPwAGZZKjULA/lEeK3xxI0/FU3o3OqzQN/2haQxW9/52uzCK9RuTlTi/nWEVyilR5Hk
HtrwVbQb4Gazm7fAu3dinzb1BxVyLCBgvawzIE1jcw38wcdrABzVfKE0uwfsO5A1T208bKWT0kEU
heKvrbNpcwR2c0haDjXUxKfb2tBHxHFzAbN+C7S64N84V4NzzmvliEKT42+/0qNqOWLP+pz1nDgR
cUeDy+zN+4OLJYuLLVkpJwuaxLxsllVkJt0tE1x/7bNR6RAVv6xOdjyuOGpqVnaJwi2ctRP0U0IP
A9Z6zOaiAiJVyVotEa/YFWF6BY8gfdIsxtDM8irCiX66cZMsSO6PPCgONEg4FT6HcrSNNBnpUqcQ
DH5P73DYcPfkg3a/Eb2KAqc3uArsggaPF9DRgJVrTdNACa4GTHCaWOwZo4emNywTRKco7CN+rviN
oTVKanUuO8R04HNXLOFqSaiVktYlVlFYeutBLlBjeDgkulXQHF57DMMV/EfoE1YlZpBcCrKtRDAS
2eY3BnYS4Si3Oxq4bqgNg3UOMU5fR65aKOmfvanjHuhHkEhPG7pLQ+Mc6lE8ZR3ir8P7Y+tEQ/af
+gsEfeVKbkUZ8Kzgl2yBjcbreD6eq9w9LQKNaZnkAfYJkHSHAXipwhU0Xg8wODl1F0MqH+Dp4Bsx
l25dV14vhqjR6QAn8h/ZBcU3Vc5bfA5SEKhvWQlotpHBsdrLTipoZ7ivrVlQWVb2uC6Zdyi5vN3y
FSSI5KXjuU9XDe1SuUXFTD4CqU1eLx6ZQsNJLzx/9tTJzsQlcnxpXXkb5uVOAPbU9XCB6QkO3CGe
MSWu0OKjSHZAeumbSlE2mYyDmIC/y0ZGWdHWP3bdDBDkSlapZiMPEq3an3CKYvteF0fiT7EsEHO5
hyJ9DFfeT7J8U7J8v5rsxuNpfJJOukosPSp1j3B5SikcU2O6i8G1el5/AEf4A0hCA9DXpx3S7jbb
bugpvLKjE97H+J1KM8MLrTcIlSkdOGfHN8ZdS8c4jvGsJ+/q05QsE9HtZC3KQvG1LU6legCmFxpC
PTiM/gr9z5Am0cJXy0JttMKhF3OjnHPhsBeQLnheToqVH1VDwMUESYMBzo6OqPiF/FE1iR6v2yOX
MaMKhpXxnCRSSh6v4Jtjxw8BZetM5XJwcCgf037Jkvb6pXcsVCSk42en4F6nYPSi8KPPfXHpryAB
td/FtwhZHfwMNgmXW5GsOkdKqxerYeaD9JoBFjIg4xfgMw8fQXz4TmyRoNTLZLcwp6+wlxsYlWec
h08DGQDDVqmgmrev+Y79o5H6QndYRbTqKWmuLgRyk96aBUNj06WOTwutpYh9+F7lmMQMvB/Oc4TS
dJpcbx0Q/J2XVUpVHj6uumCn5qGc8PYT30AIpGb9oBZQA5dGmbwsi/LDy1utFd9erDTZh9LbRfms
cQB0qeg+TCYJzm/7e2ASCGI0UA+3kdcYRTuIVKUxqYxWUk61kCZpjJjTMQiLRc0yRb/NXD3FrDa4
HF+PmRz9IqB8GjOcxdAhymv0DwWVY0f7Gfmowt9rSlZSHGTFqLFoizfDr+R78/rHbLFgoJJH4iB2
IMX7A3AVFXoqshCzqrBXOJOSuT5cu4BNDw9tyayw96DrNThgC2DCUzjdMPD1agPU3gwWDBFPSO13
TBRergR4r70GKmGjMPWS6dHJ+HXm96miluD5EmVnNIk8XyomoKGqNTORyRybJy1mIVVuTlH8S27Y
9bHwebcVdyNnYhB/Q3ut80UjvU2NsM+iS0xkfBfkXmwgnBVJhOtNupRF0tMh5BMvMuG53r6lBmWl
ii0P0E9GSBGM45fkqGYnxBGK7PvMp12cinYEJnfX54dABJ1u5D8KSWCjVqtKUCLIRJei7DU/IYzs
IXSp+PFItgWQsn66/aGBy7A8Jt+oys6cmttimuJh4qq3zp7OxLMsrjR1RyiMkC0WjEeJyHHL+47R
dTbQW0dZcM3AFTDqXn7iqPsOInDQlWbMJcim7468VblKrwpcSCQchJviBVGiENEs8znkmbtQ8Cf8
bEfi4q2joJXhTR/6B5Gg9BEN4YvHYxQKD3XXiWkXpmbI3WPCbJKlt9Dsqlye3Ocq8QiDh6u5zqtd
PUjRY5oZbksaACOmVw+bWi3827cBQGIqzPvMQkBgXzxefWIKNwxmgfXqKo17SYhAl3yWQ4OvKwar
qfLvYNyeFX7gv1nk/ylBfPl2Nd5RrNGZLiJvfXEyNJkwbXG5h/TMoWspoFd2YyunkS5AYX57zWyV
QZVVGndclAaAfIojFXb85E179u+YSVdx+d0jWoWJEUAAHtujuG8X64Hz37pwPPxXBNOqPaFMw6az
IYzwn34UFdYVXTLZiCfui3588qB158HRIkpJGEM7CtHBjQwB2X4ArFerUTIshE0PLxgnVUW/Eh4v
gFr2u1A8UvP/UuhyBOWYuTAIzqvNZCIRS+pxFVjTorjwQi+F043SsohHNKSJBOuoQ3F0ZL3E49N8
Nd+mRnTPK/yoojYDpOWDt2+VMdMbRl0hX6EwB6plwD2drOuclrI0vq/GapovvU//eIjXeohlY0EI
ylpg23pnKgPBNnFPCFxm2NUHbm9yy5eegtjXojCA5uH8C95WhWRp6MLKSrFdAZo7mscYMDE5wE39
mlOOyeKrGZML/QoJwWRmgfdiAmwgsiIzxIbKyiG4G3dnpJgGcSRNlFUVpqVJWbiQ7Np7v6pdDZL1
lcw+eNjtLQju1PrSXMChoMMZGAyMdvzPCDF2IVtfi0+d8PJZ9byMNo8uvUER0GHXkParYbT/bb78
tP5pC71zZ1Dn/ICmtVsSSYmbKWYGJ6b9URv6Yag+Wqw04IYk5OIJ7vmO9hojMfJU43rwqQ0O7X/Y
b9YgQEMGB8AGQdDedQa/MED/mTSAxLj9MExZsgFzQ3ZCurIjO8iioLgDW9mZVYGIFdhtc/j4da1J
nVMnJxrWpQEFcTnVv62oJEb8EiU2Jzr5LxP5JTw+mfn1qROdJF2DdsfVDbdNQNJCcaHLuiDaCx98
x3Wwf1SY8Gu4+3KhSAbGRDmwpdkE/zORa99n/iXJdkALa0/M9rO6EhsP4YxnHUtcX1ZU5egR3W+Q
Y9a6IcrpKhTS7Hjw52hw5egm5fvmU44zFKy0JxbgA2JttIfEGgq4FP/YZeuIjbr0MbD9rpGOenmY
EgIaZ64LqEBClJTjrZ77pM1bUGxdUhrimS1JSSJU2Y30dYxQ2bMeex/dQ6v1hJoxUnUv54ql+fYx
hFHcKiOpCyYYgPFVTbDdAH0SO4dpQAvvexbZRra/6Q9DmvrTXy7tfvGoNKyJNRJEy1Dmgezqg9e7
L836Bzs+PwskELyvnYKnixXmWL2Zp+ZcMsmN3a9TSVjoeopic8UrLXmSBZ47QyvG+QAZhOMaY7Ne
KCr1d+zKFGfwWylA9ypE6f00AhkaV4J7XRVsIgxZxrx5ap431cG/evt62Hy+zH7c35q+6rEvkamt
RVCoA4tGoMyGwPfveUUIOEszTOUDfu/jlm6oKyBzHylcHGdGe/cCEkTBEg4OvPJLjRATKFI+NhbW
Gxf6/X8c3WYVE0j7h9SIgWIDg4U/J+LLqU7T9azGNPbBxSO1CUQLSOnEmN7tKIPVPup4Y+MkKbNv
OZZxqoQJR1L6I7wqEHt3anwBE2kDVgSraErx9LUAZ6j4BqSMQ4FiUg2yxYI5rLZxtwD+BLMxrUVA
eLgudAGEmB/tuKiIYagVXgMhgonyauY5t9a4HKT4B4ErnXa8irQzEgucHRWTkT05XYPTJzuBwNoN
q9sVN9kO8Rd9+SR5KSOf4BjMf6M+QG41OxLQCOnxW/9TdSg/qZfUWvmL4AWGR24H2bw6bOPIrRxv
fmP5UtuB+J354qTz+mZ8CXkB3Irln9ejPv3gOsvRyy7VF/828PJ0nYJ1oAf1SrGWjehdVugYp4Ft
h9kxNimAbXsCmz6LB0PYgGx9bVE4bd9w+pcwlre00nTcYJNKtHKy5gEtq8q6nFZtE9WZL7nHeYPx
7qj0pm9uKhbpzzWCcGx6dbovavxENj8XqTT0YE9Tt3NXuDLYKjMw1BSgBVQJ27WjwV/zKWG6F7yd
iPLNc+GdcZZspYfksFoFUweCgdFxd8+WJJ+x+zt9LEa/jnxQfszmY7kv1YkALJsfs85WLnS6QMI+
KvDy53sWqpBDD4y+HiehgHq+66sHjNHeow3oIQ3KcGz4d+rktP/NhPaIZec/3byWDp6FM4OKjgvY
H7BJ3yCBaIHd/IgijqC9wDhsD0t3hbKROmF2H5hreUeSEZWs1bg/3yA0RZC1TwP5rLB8t7weF3v4
ioU1poAYYAxwYz3pFhu5a/wrVuiubSzZmuOn0H/mZGA+2koTXw35KcSKSzaUfEKY+SUrXkdgaq1c
o1XDDCiS6/Ez9BQViCwbjPpCWX2mlTtq5rUmwTpwx8TbqbQl5p6N/5HLenuZfk51GbXjiHkrAfDz
ga1QdbeKQhqTy0c1sspebayCZCwUjAepnCwdIYiJhZyris2Tkim0HXpxV0/OdyBtAqdWmQWTsjwA
yT9n138pqYLwuMaBy52oXkWk8Uub5PJT6rA36U/dZ0k6couHyVlwdtYLdTVnXJBvFSmyT+VXJeNi
79crFQ76yhgzXopbYX52wnCPj78zHv2rciEhVeDli02pmoFCr5ovcja5w+FLklv7uXUBV/hjL3I6
+pjOOLpsAbDxo6iBCFm2SfS7Osm/vK4Zc8LmuGtIegt38k1AflFT50doDviE48ixdIYQmXtQ0+36
pz8lE4Lm4cZjU87ZZttjFBqCCnZxfAE19ctzX0I6a0Cidt06iBVtYvpqtc5Ci9eZk/ZM1HNCmrTJ
Rd+U1y1d6Z9TP4XYd8yJ5XILk7Nd3bW9eZJ6fVnqwSSzBxzOxuEWuiqDGOEve6VedITsN9sh6mRW
vsHqlJXKJ22b4r589I+CIvCoLcdqs9oHK/EwFZLMDZJ/gflnisJr+ps/w2HcRIhh09OVhzQvWqaQ
qUzPoOYvyehCG0nGM3RZON2ckPX+qovVx2U6sifK4K1sJHThLcwzGEEMHmpzno3EO0bDx6+2gRVg
FPDl6F81wts5LluSwdNOnzJyf16CVbeZRzG8gLluBXMb5Nom/5wxibL3MZedMRzNSHmIAjAq88d1
i9OmHg6PoJx54kPh+xCeIe+LZbptYOvfnHGsWK5YcVznVEZsEnK1VU9KoaoLVF9EVx31kjYckHU2
qSSKYE2CFM52A1BlvWfdLBInSf+SCZaH9NHmNS2iWdUfp8FkJ9MC4jwYY2EZVCJp6t//3pNFy5ni
dI1iKySHkPJ0iYCqDE2drg6rCxEAl4Npem6dfM5SMq/R/fxoZ1FfBOUVBcJmqYRtGXpOsdxzm/w0
5HlAHBC+t6y9YpJhx7Rm622XliQg1cddhgpuSxOMweanaFZVMDtiIgeSvaZn1mpmp621x9F0mfx2
Wy3/B8bB3SU4IoHgQhowPpvFBi+Sly2KSwxhirRJon4jcZmqgQTTM/wsqbqy6mrni8MXHxZsjZZX
Gsf5hFXuIxYa+xtovwSAVGXD1+o6XdMc1LAEPN2qTszN88YQElw1xnx3yjTcKQlk9eL0sNRlDX4h
BUCrjzwttT8KEXG0fJ8F/7ToUNQwOtRoCVwfMWwE5OM8nHv47fmWtI4dM3bHCGMu9oWay3LTRLBe
tQKpFiW7b0hcjRcHyFQZt3WskPYRUbARMkSNiXSzeHQ0nOmA0ak2cXykgNDYRvZy4ITCIAlM1FMS
BmQnMvWgyxDMK9WLs+n9U8/tZggh00q8vInGzRm/LBYUcSWpEpyXSHpHR1mhAJXJvjEJS9tn4Iup
Yj5ArcIJh1xioQqkTeOJD8VZAVqSzlMhr5+9T6qwdTbq9+gjqN9G/n24BCYasVxuTz7wu2WNmZgd
7j167mFIZgwdCUDeKaoIhtYORPiE9MH2NNJiGw8wtHBenTi2neimCWe6hyAiU4JPZA6A9Pz3Gce1
91MUO6Q/rap3GPybUoK3Db5qnJoho58aBf8gjU01HJKLR33STVF7oszH0fZzUEyXu9cHQ4B7WVy1
tXb0Yd0VwmdZzGh7Uvm3+k9FctYv4OqdFzLTXa5mRFeYR/Kn80y0hPpIewtq0zJxclgLp+KpaPjf
7JCbyFbXS+ApuAniKzj/L4Db+ClHrbILGdzYkZxJIu2yGf8cOphqcSWTfPmzDLbQEbE7R5R0F2Oj
Rnd4dRsHOdaKayOOfmKHt+mF+Ab3kT/PJW4RHG2ALVfMZYZM0xI1wSJl51eDulDF8e9QNQbfBNXO
jDH++1neuUSOpmEl4+lZRA66Hr8WUx17U8SrIQWy0+4uHl+mwAooFCotie9PLftD0PaDBvRfA/lG
ZQZSAE8YHVW5JRpUn2MbvPjx7d8gGyNbCJA72FgpiCX0sLXKd/7P3fla0KdZT3WOOsJhUhtPqqrj
78o3beMZGfDYI/oa9iijt0lY3x6TWGLF2XLfML6SgO54+0uvY7KwZM+9s+d6YjmACpncqMON6wob
HmnU+iRO9Sw4M+W3gd+uviqs2uI1SVuUimtVGm2ee9AcYvJjAeCSD/uyBeyvPC7JZoxrdEt/msyX
2ubUgUE2HWERJIQ0Qgbl1aKTgLXGO+f96nwQgL4Ae/Q8P5MfG/B2Ha5+MXmARwFqN59Wt6Fz8BAF
KzRWIDmStgv9817QAk6HoVU0pWFfL/zPRN7Xyzi5U4nqd+fkwf3fjwQxkJIhNtKCc6/ggqXd/+VI
t3BJUPy1a+3Anupfu+CTbksafhs0ly7HqKVLyRRImedbMwFzlZ5CCPpgz9gFk0PoBxB0ro6z+ndv
n6ullwE2rl8c1vsOyQgoqHnNijoi1Ao79xCJbGD8QkqWzPPopF22bhy7P0eMnvGB4aemTb2N5wd+
oAomQ+mVgnBXTbTEPN4vITyLPSYd5Y7+L0ByB6M0A432rLGlCgHsYh31pxCzLr0UG/7VvANyeYho
Husdg9nXprYMd7hSOD0o84/kEZUyfbPcWQltS87QHX4M6flxENUXduCFuk7T1/BbMYtIbacjrHBz
tOQtdyVMTRIlBWPeSxdq4/faLgsPr5wFlOKf5Uh8RzPSNP8gmzKAIQb/3kjt12CBVanQFLpVaEps
N6lHcfrIg3HmAHNqzgFl/7J0ETjuIf+StKP/ffHnm47XCl7IxVdMuQ10UtsU6cqTBxYpodq7QyTE
ymnJlHVcNg2Fndai1VyKCSbPyugSmMthRpsMtCK98JzStgGRYaXAnKZVQhjpp9LidsxJMa6mhLuM
IYsVOek28yTQKOxNtx/7t00LXS7XAAyGQV93rFd5tXhvv5HUZSVBJTq7wnDQ+M4G9ag5A+uyU9pS
P/TbluIctqsQy/LVqWqcz93KF2gz27UjrYFZWZlZ+PqK6SjlhsVS8meDqFk6zwQB4CGJNSXWS/dc
r3wpQSpflhiIV5oQi7eyifsqSUOvfhieaRqZx8qizxFtRG6u2e2dXtG/GfoJoKs7wd+QyQJd9Glc
LVBt99/clahr4xyXYF8Va+ywbe7oWgfalJsrMcz0Sm5hxUenB4GIFDTlUuoNFbvbbxB9h3sGq9v7
29Z+QsNFq6kEnbQU/1gPXd57t9mNVX8I27svHHePgoNc30oHzT8kenXP+M+pAwKZbHL9aCcuHROq
oqM+v4wO3hpowIBW6Ba4hPVl0jLrlT2DuFaqJZDLzBq6c58YzGFxyG/Ca0TEUJhdys0zLQw8BiEx
17S1kEuVKUeSVuMFwcV/MeaTCpacEnecS6raWTGHjS127/FsHw/JMf6B8jy61jtT+l8IQRvXuuJ3
dqtfgp9E/NhfHb/HBg4+IlAYwvj5VWugfgxMkYZk+dUvRy7HaechtzcmTFTItf1uDpU0v9S853y1
mPwaKpckZd+M2Z/tE/QzKxa7eFg0P6KFYKFRpqExHl/3gyhCNlJkKdc2ku65418mUcj2c99T5uwu
TGbSdwGYLP2Sb7WGMx0IN5wxqjDGRrsJbvgdW+BQvu4y2ApM4IsJQf7dkMA6vo8ufnKrHAf+CON3
Jm0Ot4XH++R1DV8OlOkwHQFWgemXpUwG5y9XpJUmpBlMDLMffs1VL94ik9IvExSw5kxTsEVqMjPH
EB6uY5IFYOCtsr8AQTF+HILQwSZdEr7FRt//cGs9wenETWeGmiLR/16v3cSLiLS8Meb48pfNOZBf
xuVIBxS2aTdkSG8Dgm5+Z2yEDrq6QOtDBOE8MLKRwY7FGuSSq+tLcU6YlBefmwIg7D8xNhhA/ls5
j8NxLb31iZnfGEkE1P0qnVSsQZxd2GsigztmuqHPcwQXQ44/FcEM6zlLm+UXLavTDDtTif7z9P3J
o9AcoyDXO4ck0YjusyojwmCclc2d1Zh/ONXTGodV7Ze4VvnD/w83rOoXSqNZiY1Zr/VhvVbM19Hq
enH+OUS77NulqNMfIg5CzErAfZGtr3m9PYH3ZKJOZrlTlBNz3RPS6S+/KhRx0VlcIPudxRnyPwiI
HxlfE+G7m4wKgMl5tFdfDgoeaHK5QX9a8vhoHeo23RcWHlxZuv62ucv6mwyHfLqVZl18Sjj2i3qv
+f02RQ0XfXKzTHL5FQBiDRZ188EqD5VGo4V0VHJ86H8SKt/4jLQDrNM8klM0+p9bJuktvplpRm0A
k7w2s3bQ5V2IK0Obqu/eD0ip+iCYXih7A2F+wR8WqEdnm9yF3lAouGf51LVeMbNqjEB4m8sDC3V+
wWyTHDjknHuSem0md7oyZJ6r8pgNV9B4J1noJR55OkWltVYy8VBm/exxwS0xtsPGokdQy1L83b1b
CfUWZwD87ZgeBKUs7DGvAT7+29KBuEJlwx5iiU+JnKUWnP5pNNXYmo1sUhQ7UDkKprtdwxk7jIlC
zq2XfmExQkl6k9RDtco823f0xMdJi0KqPww0IIHgkYwsj6EVAJItqCxnQI+yyMg2i8e8OeLg6A2v
/P/e4+xRSc1foWEbfgRT+IX0s+Y+gqQbYpXlT9NIlun1ACqvKMJ7PCUssq1PgsuvadTo9NvMlpcj
lq921S1OSR9sRA8IeOXHx7tKw9/nAjqF+g4d4k9k69ISEG7Q3B9OK0igNG2iHtESUs7Ycy2lvLMQ
p/NWaJn5LePEXiph61Mga9Gh89Oahjpd3LScCMVlY3YhbDCvUe/6udbsjfteLw3X25lc07qIpncw
T0w8PnODYXBQo7L5w4E3vzdlt7SXR/xQDyGBb7ydWCPNGZMn/7OFgWeaA/uJXCwRWc476Fb1L6jV
68xfZsvXVWTmJ8aLeDU6oTrsDH+OkhYLiHGQU02aKfo9I4oljpayB3FJClY3b0HRQFRK/uLKkpsu
fKKUgOzlrqN5e9HWZYEKE835mD8WuHtxEf1E+q+ujT7IllRfQ5Oomin4btPA02er+7ICKmp9kIMo
s9OaQwMyawxasic/jslzmVRvQ7WkSA6zBVL89yFuKXr3gatbolOlFikiw3NsMk13W5uxh3V8HhuC
/nkUxtl/+LU//TxqavVbubx/wPTzetcnA+ZFBxhp4wxgiKj3JKyqNIdmgjB3YxBheHi2m6E6GOBT
/QNvLWVFlkFYjBwkPC+BZvRw06PTW4n/t55iP1I75x7NKc27nXgrDD9Iq/lUXM0y7yQHRQ/ntNtE
Zjx/WhZfU9iiEeqjRtx1s0dqkL9clCKWKd5w24NLQdxJhINrzbfd3U0N6l5h8tD7g2I1VA8+tPG1
oc38QvBGBqbcCuy+VengqZOL2cqR+S9W8V8CkubjcuA9e5PIjWETT81+AQAiVpoZH+bRo/cX/fca
ijRva6Uu38V1d2/80edCWo9U1ScZ/0XZdQPqEfV0igzOyDuh4Yp9/ltPTbnmIjQ9fgt5+6whJWpl
F4IAlgBmKTBrWT/VIwjRFhUnbT/c+G8UMJyC5WeQV9MFHuT2v3C2UjvRaos8wmGCMDQrR6UC2pzc
lFrxEXRziGiaiPnGUADaUlYB8vs4leOkXG+SG9c/N1lDBYCfOSQixRK+nq9E+F54JEfBCFHIaJp0
eDfSH83EGR2KIV6rfpycg06s/aeeXX6p5QST0r+mFf0KQd29xxWQ8wR1E/rVvfjkLWRqvp2DCIhE
KFA8w1aOEaMmvFzgureNyAu9Zw844Z87WM/sUr338NDcuKtZAbopZvypWjJur0uNtqvDgT70VW7r
JZggc8YroESuaJ4N6rUAsex+kkYoaW6HitGV3frI3mBhFtdjK2Q911Jcf9Oea1aU4RsqCiAy/ICG
V4ime1LLba/XtkgORUN9icxSyD5BNo+Xhcjn6vnZ6wbCfcgi3QSnKW5870AFBv0bd0OQGFH35/t2
Y2YVwQlMswMK6hbHJQS/DnnMGqcLQ1AjQfnhKFF3f9/X7YSwPl67PihI64SXXXMgzEHwOVA1/EOZ
qF0qTE1o+MFA9z7GTLzez6OEdMYXeAEECj5+JMLFZjfoF0K4jqI483Igvy056SvsTtzcnxfUN8ul
fIaBtM3s4T+VfR4dpVmyMnTBcIKaKxSwB0ucmLmVljE7q6KrjnrVZfbbKkfkFC+GPkV1zLr8dyaz
XoUKDYZmRP38ufx1hcHmDS2DGxDEeWCCOkN01GvUaMTV0mnLRknrcK0afQeNMDyDPSIkXAyVgw0P
wFgwtQHAbDOZZltB2QmMlhdBVevbW3mZhyqu4iF4d/qyKGGgPnK9zGAnGv07694RSr9CaloIyLd3
fek+poUF2Icf0t7LrFCmCt9s+H8tVKSzKc0t8m0vPD14LvyxEvje4pRsyN+fqOXdBbeJSE1yDV0E
mjuOF0MaCbK+uRlnuu76nXbGERsL00cBcKCdyaORA7tmsTL0+clyXOfRG/UBWqiAN/0Qq7ni8HDp
VH/arfgXaRX5pZsAmsqEfemKS7L1x1ig47wkqjaR3sLLUDKzzZwkrPhPGOMa9usMpiip4cpSWJKr
u70IDzBgJ3y/URvUyITIKFux5CrbVQEuRVVWgnW0ekCn8iFrz45snkzbL2bLkBC3TsmUEfmln4xF
bwsd4NsEE0T+E9IRlPQyspuqsa2pZw5sLub76J6gO4ui/JWdAPMt4Md1I/9TkOqueAtt+mWMvTd0
R7SdmcPdtbEVTm6anrzQXDXidkXT2mY4ToKNS3zwmXOyPQPTAzI1Yd13BPZz7NXK24X1yqdpa6aS
0aT6vZiLdb+2u1Dd7JIURk3E0gPlZclk/xiOvWxpy8kXezyT6Df40POULlDRgHSWSWSvmNoVnd6i
NJ5lya56ElJHTVztvqw/gBboUtiT7INcBO3HPjMjfvBmAelo8mgVbaRCKT436VNz4ZWlMJjHWGnD
2YwLaM8RM9wkEWBzel2UTk5GNVCdv+m8VVxD+ux0iQEZVR2AGoTQMY300bk5AgyioWbuBzLPFVdN
NO3Qr4eiuJq4yiuRNJ4P2UxjBcF65n1ZanV3S51wdDE2n8mwYujPSOs4HiKFO1bre6Jau4aycpDI
40zcbyocdSVmtGzojX2BjmowStC7sbzJNKFcqHF5Y8fcZKmWjNNUxs/+HiwQVEtz2C1uOBR2Iugv
9H5ZnkvgxAoaVzFoena88lEJMLjhANDICFFA0N0BVAzQzGopPWjmONtYR4GB1GQnf4MWAInAsiUm
TvLiE6ADLtllkHywvXBRfXWlgmH2B6+/JjDtsJQa5hCdayYwVX/gQtdMUkMYp0Wo8rS3h8VwW7gc
b6D7BBn3Pr+WaBEXwTT8fR/+VS55nNzY8bx2z/Wb5NWrs4uOFI0sQ+jW3u3Oghx6wC6GtBXzAn1D
lHN61TIJ+WTX8BcXsy6cJ64kzNBBDvbYSbhLv+dBbQO4eFizaTHgmslaAtzc4slv+XdAjAO1lCkr
53rxg2cuEq2hgIk/XJRpdEmSDy9pGfKZX7c+GTDMMN6stMwwFKRCksGUjA1DBVVDRf4RQohbvN1Y
oCIq+aBhAaebbbJznNfviJOQY+8VKFlXLPGC6kRd+l/EiwFC4J0oA3bBWmGG7Wj3o0ZaQ0S2IrRt
ImjWJh5c2DtYft/mY4zt2WTJFG2rtd1L+qDHO5oBF0zPDspwr5/Rcs++ptK504o7Xx2rzeZ0nlzS
ExL2l5SR5Zi3Scgr6i0cjG/0JLylHA8v78/8Bm8PPu8GWVbp/NZoQRDki8vs1ok81hpvedl1WvEb
M1jmX4A7sKs+6WoV+WNc9EQeVg80OQupXS/KzHt271uXY+aN/P2dVZzfeVl2/+nkFi8G1QQFlBaL
9aQgeD0cEPGuIO4jcT/icW8TmbmzXgnSD6MxqhmrG5qs36iYcpme1ZnV6eaFoGpueBN4ohsP+4BS
fowaIL0tgGs4wOl8mxibu5JH4kTZZq6KijTQpOGY8JOpDgfJYRvnhu98pHHjvrdpUTeA1cESC7gH
GMUMXMwrq740wXVjo5ZpOgASBhh9ZKRgjcj1pUDBOOtwTEGO9xbGuAcFfczhACxEfJH3kOKedl6w
1j0jVLe6OjpyI0DUGPGVH076IhwUqLZb1d3ZDpTpdseYsaiCiVx4C7gGGanuUHusM2A6vsFI15en
ZG0iQF+pys2EhElA9/CRbcBp85LBc+cQcKrJRBM+Sj8DBG+vQi7D52970GlrEdECarpshjP5dAgR
zzl6ya9IGG971V0CiAFVvPULJW/6to68EiRvqVYFUTwrQsTR6RltZ64O0TJm+MXo3a/gbh3YgSTF
lda+RfUbRAnksDQ/dzXkm1rrAGgn2Iwja92ZnHyXqQIWcGNIvvPKlAwuAwaJmwlV8GM3HcP72G2a
BVgDxjxt4pCj4Xzg0pypscsjpHV/6vcOA794ZldP7+oNoq7YD76PlM9sa09+oG/4hBwZFjjNk9wR
LPDtfX+H+q4ixCR/L3wu1/zu+0Uisk2k36/u36cLs2Scma/MHrDvv/SoSTG89YqabduuY8pmAVPI
oZqsG6NIbuW3p2doUYvuqY3mkx0bmAQhGZLEVCB4WWsAS6XmUzanAVY4aSPSNpk/na2BWScOLKCE
/RceIzb62LxSV4bIke0vJ4J6sxSUzanGV0g8enEcEUIiyBriYhUhXsJgbN9zD3aosdiXumEuTF8C
sfm8GYLu5frDkSbuuiMnP3N7q/MVzNC/xlNpPMmi6iK80T0N+VDJ9eF5xtAsSljT0Xfc9xFOSXDn
5B9C1OXAbAow0TiN
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
