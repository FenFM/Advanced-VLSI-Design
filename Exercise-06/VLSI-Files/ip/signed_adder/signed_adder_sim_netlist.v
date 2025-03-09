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
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
gpN8ykWcuAB+HKKv
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
