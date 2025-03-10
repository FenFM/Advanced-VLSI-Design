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
NUCNHcaxWDWJb+xTS5A/nj6UMhzl362/0pLUoZinKo4xCqrEosIZ5Rs9AZbDziNbkIdsAMXlz1G3
elPquAVEBsKed8LyWKFnc78abEhBuw/2Wx83GFSrQWzRPFlec7RhvZicEEr9LRd9kMHWh9fLPr2E
7uBVK9dftPooepZG+1DrCNjm1+AdZLXTpQ762SemVY71cKMXOX89EbrWfh3KBOnWHguye+2GLJSE
/Vuo3ne2+Cg+/hNZRBiZ7XZg0woGs2nwfzKZkJ9i/vw4w5+HKdNE+XjWfqcZgrk/sK+cc3vqJUAW
+/F2W4izKExMS66rkTO7eCefxPQud46TbmHHdAwaKDz196KB0oThnjvP0ZTWOoQZL0S6xwOIEDul
9Puef239PLzr8NuBelTgYVWhMbdXWwxPazVmcL4O2gGG0ewEsPdd3OkjEg3RgDRltsV/RS56olCx
t10i1WWeq5G6NXuVzZjprJdRtaVK98qY1jXX7PT/9MI3/uIed1pHjwalgRIesa/UDpCctCghYVs1
LHoBkOZ9sQs+QHGkH3CVBJl1Kd5p9dM6ybbz6bKa9gmLzWCP+RRugYWTFMQTC7wMhmtKPSlP1gml
6MLfw3LixGgU9FMQL1l4VGdzERCxUqnp1igvFliVG1/9sT3gbofA7MGFfTuM9OHw1LCL38/nZ1aQ
R6oqBXaSRX5JsMcMUQJel4h96dQaxPeJQAAXyFX0LgCCuw5+GO6ixGeCoNw5d5yGVQJf58W7jOjV
/UJSqFPh27kWta1dEXmOQfjr0wXbzHrWvCNcgE0yZERR2TpQOlMvejkrgEnM6eE+9oJNznIXBhAu
gCVWEh4Ba4lvrvyJesnBPj7bPTAiEjOfqb8KzO3MyPP0LhqQ0ebZEgen5hKtvPR7etu2ks9BZYaY
ZFrmN0loGtTR3A5lK/+Ti0BGBKVBYqKN6rVPyoDX7xrv0zU3Xh961sA68LJRmU5lP4BnXauNtGN/
bDspMgiy0IEnJbgje6rsXAvlBl75fT8HgNtfhPn9ba4lv7vUd0Kt7rtzHZt7tG+YCOtlLyJipJ5z
25hgcuihKzPgII03psh23j4/CG3mVX9m4hw6Ik5fIJDhuzX8VzmsbhT+jacZDXwb03/2rNW6+Oa6
f7EpbpATyvQeIFtx02O42azwI9dP/HWxeYO1KsYpBOKbEVe9AKNt3HdIIY1V4ARzgJcwc1kN24xZ
Aa/REuGmsK3irCQ4EyiqV72I+pFTcq1UdTg2XSmSa8nEL2bHrHZ+TaUf5h0KD4RJUCU07nKKtZyh
J8ZPmTtJywG11xRKLG8+jbb38a5CzbiVB10nSBMKZRjNSNZvd6kJUc43ePAUfuJKlTYOwDMC4JKN
dKXMuyQjdKghrYCffXG117J82xNUJMdtpgqMZKk/8K3UkrjrEntCwjuMUFzrSu0ea5Y6VH/pP+i7
9aqKFYkm5ofBsouK6zMzwlAccENfzFMdzEvqWK3ey95E0JTgwyyHhyznZE3VQj2YgiG9jh2fYIFl
2w4dm0/LdWcLcNRbwgFrb5psMAoMFP9T0xj2oLzSiWzvfwzxdPqRbPFITPJzoKBFp5GQFIl8YnQB
uDd1CcHZrwkN1NGoUGPAxyylfJzkjcn0AFjWYxhWb6SqR4I7IbxzM0Lo35ZMkoWwDTJITaoPbQra
MNmIDKX/K+kDBgmYG73PPNeCpO21EmZDLyKYKS3wudSR+bmqEh+J6TNdwBV74Og+3rzlACLVSHSR
cLoPA9FR3mLi9X6Wo0O98GWRB4Eps0CuMFjo/IjmkMmHVTV/CvJLiv67Nt//ttww/4a4Wfwjph9V
HEmZl6QoLcUD11MKq6LGh56QD01AVpg12CCJNDkoO5oA132cJrxEK0I7BAqyv8IdYhERM76vFtuQ
GVlTl5IiI35vD+CV87S1eyk0yp1fNtWRGUU80soclpVg5fjJo6eWZxMnhVhO7ZV8fk0s3XE/ISA9
BpPtbmaEc8U1VDNltkxLuLNMxazsevTgGopQqoK/HxKvKjk5kMJZawSFy77xQMMI8q4cw4ZcYPnT
sWj7qQwRpCvJl8HIR3bTITg+/c6MjiRQ5F1KxBdOzp5UL7ZwAup4UiJqYMXxbstmKHY9NJEJNfSG
70X7nYK+x+QyDtzXQVCcvCER7pgbsja9syCWgf4PBe2cstHF0qCfoel65CFqTfQeVncq9CYYh353
EUlFCg60StNboAv2SEAa5nCKMyfnMZMMvFrded3FjU9f5ykQHblsssQ7OL39hYtTa/g6UPgtPPkv
r8Oflw1MxSTRiEaeCvweA7ATM+1HeWftqVaSCTPZeW9BJYHWI8rCQWCoH4GUC1aOmFPnl9Scg8cD
hVVe1hnIhuGc+26LhqPPkyOpX6JdnRRDdB9Azu4Ze3iDqwB1yFJnYT2uqsRFRsSSdY+IfU5jXC6d
aCqlkeuN2ufoK9kpyv+YaPblIEQYfLpOiWGC+4rtDtGEAxMXZUe9UnizvU0ApCIYjOI6dIzkAfFr
M26hqutjaOV6Y7JsCL5FFPwhoyiyN68/MPdrCJKY6+yLdLcyxLtKyBPpC9wrQRd/1d1ifrOfOVH3
izUA1qybxx1+PaqjZ6qvTOcBriQyXnNNheATuteWQ8PhAbNn8XHlLfuKM1Q6cyk5Mm3n9IydMk51
YPxOjtQOtln8oTgpwXdV2tuBO/UqtoEKR7WwF/1dZspv1U62k+dFQ/zhxpoHCeoOEQ18Z+KnikPN
4mf8gjKLzAtxOSECHKNgRX5Z51fw/qryZfZvTj7B4h4YTmFmoB9g6IkA7a2FQqP/8rgkZaj6QPwn
P3qHujraRJvC8P19kb15MihkfYViGe+r0WmzCzSAHVOlcdZnp+V+iYJa7KpjJL1u+RxA8fhCZw1L
NsiZum2M0ipSDwbz8WrF3ufFzwPgIDU0ODPZmxMobf2gtr51bRJRcOeCJGYFf+FTOMQfARt93gxl
AmgNCrkhgd+3c/MaLJHM8U/EaAO5YLnwrEsGwiIjqNJs8vJPS/3YBSQd9ZyLuDY8pRzM8NkHBHDj
BeWNPkBrRFtjvKjAFPWuv2FD9t5Q4nkiixHDW31PF0hs2qY+2sB1tGheZuO4YGC1mese/2Z/2w8d
kvomhMkCZ9OqP92U4kx2mo7UEpQJAr/hlbh1RjHvGSkcO9/BPinFIgH493w2NR5OXqeof4KjOb5j
w6VrAC9O35DYS7qPQvAr0Wa91ieTol87Lr2dtCEgP7JjVarR0mkyT0PT7MUTinjh1c+HsKY0cLyY
urlZZPIpcwPI+nDjock+T1h5G3HuChj+qbfP+tLHyykUf8PDMftyUh5mTAo7JhI6z3eCV+1YYWJi
UaNIXfo09F+hAfrxWvaGxhols6QdSAws6MNDJj7nQb+0sj3cAs/PftVmrl7LiYktSjwSUkog7szd
mFDSj+cMqQzdSTDw4d5ex4S0p8CYJRVbaERe/6jfLZyk6P7E+XCm6X5/hK9ZYNdULidMzTumTI6E
2/RHcMbWVl4b/JhmFuy0RK8huRCqnJ3Ag582Yp+4sUaJAlEsSLNHuFJixGO8zhE3pq/42e0cegVd
BX8oa105Xcx6xgxy4pJL0CBqlZzn5Jwc42Kcz9Gb8LuUGhN2pkw4T4f/ofHYtKZXNOFDZ1a0mRe4
aPCtoxTqc+WgE9NcF6mGSvZXlm6CmiJsfbi8nuVxftZyAQathU8q9CWQwkOme0c1rPcGojYE/UZF
/60ywAx9dnler2GMwpYOjQzU3RwchJFDAOM4B2kiNHveVCKDs8OwfIP7VAUmzD6jof83hCLGGR+X
6w2swU+uLkiQeNyyTQv4QfuL5c34cRUKZXksub1c8cX5iaOEYOgHQmeoP1QX52mfN+A/PBpCgBXe
ZZxh7+XwRvYQGJr/8+u4z4ovpFwvDAb85/Jx6F/M4T8oQdGedge16ERwRRroki4F+JKKlBoaitru
6F1EoDBcVQ8b+QArZVPjovkgd039BpfEc/iApymfTlrnHyDbWv0OL/102gbt5Q8ptG71g9ie4JOP
iQbljkjK9QcmeFSoj+EdoAcOkJDt6Oeqb3lkQXpwFKHStNbqGe6M7gwjxaVXVtyKuQHWc3tS1uPz
DdVN+LaiDVFa+Mj3dnaaVhmVuXqPA3GGooGvsBdA0d5hnWchH5D5e6L4HP2m3XRlXGEyOKJAELRv
563FmsglUoCiASYE+k9ztzpb2kZ8Go2eOTZbMjOlOBZ9ibC+IPEXq+uF3qFW1E/LDJOULGNuTalZ
eaTzdFW8OwNZZgMXVBL7/ixylS/tjWqw8Vp0Oan6iBIqm1jhXJqW7O5lFKq0lt7EftyYLevq45Pk
UHmwgXOqSbvlHMzMHGtESZUPzBNk70ZRp6DT8X+PiC53fBsu8kLq2Y6zTVVWBc7neNdxCI2zIWRu
fl18a7pO7QEMP8KPMkOwb2p5WXSYFPKSFo0jhiDho0POGiDEYESPCsqVXUydIVt8TRU+vdo0KfbW
/bvFzubeFeikxUZOqZnOTShRTBYWIuUNEFfu3zzKOX6Iygoduw/IOoT9M+7pscXDj3DoeosBG/cd
+s98AVFGuzi1pnOayLpOZKOKloaiH69tBpm+GA9delMfBxNcX02yc1d68RwmahMpB1VSZQOTF1Mg
tq0+bSVkTvtIwMQuQ2GKc+j8u6dJuqSHxhA4HaS4uw7OU9wBirj4rzHzi2dFUu7QuF1GCU9bBcK/
ZUEY5S74PLQtmFDNJAlGHMRDelhAXESqM9lfqU+tvasRzY74YfsUSSV1m9CORHRJW6rWu9fw6YwU
1NJP6k240vjGD3iGZByKnapoOaUBvCiUwrT67HOf81kWICR2rcDsOWgf1geM3XTBIADWZj1VhuQA
lUoOAKGBk+/0JJZwJvEEXaU7LgFxIKJQxqJCA0Bt9ciydJEnaubUrVSD0Kv9ZAyPlsFPChDXDipN
0VmWR82/QIEtpnYT/bqu4JXBKh8UYwBDpVAodjNikp6wO0cXw22T6+JZAie5wZy6gnlhWQJt3z4S
BecsIplR3ZSzo0kwbNEtb7/YA2xD2q+Ccm3KaYIrq5d/qzCKB1vnWJ069c2KF6/7f17Ljttdnwug
QblpUWb7bhty0DHJXq/B8G6O5W2YHmBD2J1Zr0Q2e2I5TPRIsy7tig/8qWW3Fgf9xvnXwgB7LEYY
vJT4fcQxLEO55a/JR2wIrgtdDVlcb4vRFYP2LKCaX1yfKRKAobJgVctkY62+AxU4wpS/FzgyIljJ
CzT9Rc+IdKwlUWA10PYzdReNC/inm4rFNzR+6REF3KlkgeJjIUcCvj4FjcdAE9No2MZ5P51qLHyC
KoR4EFNXgd0E7oD+WwjRrCNZpu0wkG6uvOusVWruFQi26fhV8QsYZHXQaalCwPbBKjELf3ZScaG9
tfc4QqwUnqvsykeOgz/k4eJKwM0lcV5jlPdftQjrCqhVQFhvtrw5+pHAV2O3ITA+YcC+mt0MKw9F
ShkgiAbuDtVV9ngMi5Bg9m98yPRMHC/YHvyEVsVkZ+Up8K90pVsY7Ji/2A/gLlXhjDqBb3e70Z/N
FoKF3ngnsGZIV654D9RREmdpLS/Scd0f2nDpVxOtWbGyBCOFCtWdCdWWpP6T0hPcOFMjpGBBQ511
NkMbc4kLPAv/kw1lHnbJKRJkIpSmQGRP0a0691diY0UhnlT+RNTzAo1AQXNRJpT7zOymfrDgXWC2
f+Q9c65mLSFK+7fUl3KuHd8VB6o8a4oc10yXsY2YRNqnlPc1kDULrYJ69R8L/kzWgClU9w7tBwMu
RkUc5l8xlSCI5mr9F1d6dZsFK2EEy+RlGnZaH8OEn97oeW4dWwtOLw/DnI1bvxiYlpt93fe8hSOr
zapiTL7NNELlcQdtkU1gkA+XfRm1SwsJEO8rbMg2okO0zSUDIpdZ+SCXP13VMb8JtW04a9nIrq5t
IVperrgXiBROZtbpsq8bFly3aGuZR9XEt0nKlUbU5Agi/Ku3HwyljdWgK1JMJpAccA3rAAcHXc3r
jT3twepZtHVQM+BF7uJ0sCs4X95BDh9HWL/0/TldAQEWn/3MtFm8r8z2WPoHW/0b4lwCQTpvbVp+
Oti7iwCVvrJzlHv+FHJ6r1Mx/nZFUzoRowQbIlUCOHcN98dB2ouYvt+7dojqAzosikmyzjyXOlMB
/LZ0mRUc4Rwh8I5k+hpwX58XVVaK3/eZy+QdaGvgtUfQw4t3YCUW0r/Ka7Vd5uJh5XZjvhSdFg97
yEz1ichEu1+aQAyJlX98s+AWa6qSaDJkXo5IPpw/C4be7RN4OTOWALwPi3OzmbGSU4Wd72SX9Pcg
uCA//ey7oUvS+xkQPttlFyJRJJEvWMxYg7hXwz+Zw/Py3Tc++87BBFyvP8E4yFNaDYcfiWEFrPaX
3r/aTcx07x31Hg6C+B1SYcee8SjidU/FXND09IqqjF77XjrE45JImPZvFoGotmUR2gKQkzMmTugb
xU/Ty4yI5gQvheBmSxVC681gxkaq/IYwgN6uwocjiAfJVHp6EAPSoVUpN+vORd0SQ5odSyp4lt6s
w9YNV6ROsz/OLh+HpHQJd3IUWpaFq/I4r0mcCbMB4DDEdkJbvCZpXpUWR9uAEoo15f0FjcUNAFZL
CW//OM9tmCVleqNNhbeZlZKHHZuuGJlxdoWFfr4y9ga0v39HczPso24XzNobHtEz2/PM6OMMoqno
Y0RObq9M7GrxRspM5w/RbUFzc73S6ErBWp/vkaqyJU14M3dDRO3a19t6ws3wqy1ZftS/lWnP2+ay
aeajSFlol84t6bkZaFSsjy3klZaYY85HLdLZwJeahLlAJVHYaygO6b4l7YyOyd/M7ekFCbbnpibH
ay+vf6BkpV6+7dowu7y6V5HFwwrsMGzS1s+2HZcmRAyw2aItrbOdGNeAaXoc1jCakNrpsv4xdIKC
LLhQhbMuz/O+yPPCcd1nJl28T0Y6LPIXGc7NgEJPtJyNmEKXw7jqfNgj1z5lIsLnzH2NtEYCqZlA
1I/ayK7aksi/XJXoq1YmG26ZgSHFdcTX0+uZmWDRhwdGdbDCxALaLz99myCls3o3OKqhXZDv4Bus
zJfVdNsk+vXN3oa9M3vwDlRqTi1e4lM9zTTrN+P3a3er7A9emReiNh3Q87F8iuJ4K2diGNpC+6+R
UVe1FAJxwvntAN7U5BTdE5kKzOkS1mbszJzeOWOl/sOePYKEiGMTwK2deIjtZLQeDt/pMUETYzdq
8fgh2jT5q6u1+hhLzsHnN4AMoQy2LY5FRVUSc28pbFASyN8kP6MU9muJMZewW9bhSKcBt/U+ypS3
qNCf1cN9NGLNlpJQajm/oW40AEysTM78+7en3FpGAF/oAA8cg5U/PHLRqb7wyuFBssg7Z0PqkmFn
kOYPimg25d2Wnn+4NIIGTBR3m23KPfv7RZQV02oT0u5UFoYWm+jhhoc9C5x5T4d6Ol+NiXoXnW28
iigTNSQOS4XABSh0efsnDdBwzwxjz4MIb8Fz8aKPnSESArFNZzTMoDNzto8KmI565h0038EySfUX
h8scTUQzDq0bK7HpMuHFH+xGB7S1S0rUkB5kkoxCMMkEUQcfXLgbnbPCHdN+tCycWn1zYFQyd1/y
nmZF4alNR1jK4iCNbi6DMiPgdxaRNeYEqnW++tyMI+HPYD/rha0v52Rr0EkwfPG7U+eCj17CoSSt
fMQKkjAf9wiq4B0ekN0aDFfsJm2TrLpQmtgGn+3Saw8s1IXy0+sZb0MHj0bjipRvPxBd/CDQu75S
4ta4Kd0NbTcfCWxwudwFV7vGdoTEiSbPRehIMhKfv9c2AAu5fFzxl3/a74S5/ofsrxQrO9iisglN
qCMyx4ABKKQBUb+tfruC9B7S6IvcWd2BwO89VGjdA9G2TLJCbYJEVBu0vDrf1iPSc+1Ohv90e/ZE
EF/EJiXaOSDHy/vN65SuM96rENovKy7jjxQdVGT4pDeL/67i2LyMh+OAM0Z3xJbATm+5f68nPTft
RbXPz8h3+iW/SjFHUQFTAJGJO2xntuzTlyZZrPe2Y8KyWZMOssbu0D+7VFbni3DnypCmbrjBqrOp
io7OOIuWUwxLxWwVprKLcnDWnqLVnkW8v6tdruEpijD8T8Kz7xbILUaTeEXlCVXsP7+PQ/zqdsd0
D2inAFM3SfDuGlAsAPjXVIOuQaffjeIuNAmDMzjsgg/9Cmslx7lx48DvC8NviZNkjwh9CGnAJnzt
0OX+9Rv3z0FK1zdIXyfpWUze9kV01cYUx6IKGgTwWXAszwu0/ttTsOWj2509QHkofTgjmQRZJF7O
qcyAWMLt8IhmrcWcSFKvqCabtpnT/KIs/z6hnFxPqOdcna2rTkIgSM5nGwu5mR5dBSOOWijMeZ5l
lcWVHgs7NyKP/PLbe1Z8kPkTQHbj43hjOhyM9E8CXPCnIAuP0XMalIPwlLHu1vz+EENd2gT0XHuX
y5PUeflVT9ziRLaP15oyJkI2GjhCZOgfesVIqiJ5gQoVN5jy1/X3Pyxpu2BecJnj0X033andUeMx
vkN/YGx50XIPl6iyEqOImU7Ze3NdK8IGztJKK5NpcRcwRAxdH49PmePEAJitZcgkIZ14fZYD5v3O
FQYRkmyH6gRuP9NFapuJ+Isr47QcozIEU4TM1ZO7h6DX7/1CZ6vjOHedGTo+w340p3hFWWNs2a0O
wcLsUynnlnve8b36ysuP0ArnAz77FYsblAZl2/DmmNcKGpSs6wMTlmuppy95zsVhor4+Cqo3MtkB
McM7de2SGGhETzJ1+4dapqfLjLP2773E6brmYNXqLrSugSUMDKgv6Ntx8i8GrNZt/wBngejA/vkx
xDVw9fdr3j1HlT8G3gk3Nz9HbhqVyRMgAyrnsvCZWC8fVNKoVXlEgyIr398Vuk9Y0eC7e7yc7130
uRTvnmjxmmqiIw85lJKu64gIahQowY7YBp+lEc+An0m4+5Fg64AK5H2SeFgEnvckyKqXp7tO1L2A
yNKzcVQcfgtPgHz4rqulHJ38Ur1yL/dg7Gwd5udv2EE6krxvqLD+JC0/26QKiAtZKYphOtkmTULp
RtJKIC8JO3jyHaB1Joi6u/ovRIKXklYwIIpeCAgEgMqvY/rmZKXy+8iWUUVat+M8i8vXWHVXVptv
1Z5gSPHBskHAtUh9AExKNxjDUHhFIhApPkqjN/Y43l56CnM0SFKg9MAS2xGIrPMGYEcsklcJm+V1
QqBd0vAa4W6kvRt0R1vMN6Gbq0qnQ85v/MUVfaOi4Qbrd2SJ4A/YamdaZoFACZRhtajp7//dChBo
gMIeql46rkq7kl3Qoo/umMLYKLTgVCM669Dm/8lC59f3pzRxDMoLWqCqQ/3Wtdlk1K0yTdWs/Cuw
PBr3r7semx7Ox26Vku4AFyquDZjJAgkyEJ8BAC/cstE+eCMF/NCHramqpqkvgnkB/5ZJ3DfgsRdY
1a7L5coVnDrtb4OlhEYw5U+TZX+0Bc5ZtFfCBkMqwbgu6nxel64CLtxAmnxcF+UlJbIMOGnhszc5
PBtBoVrw8h5gOHQZ/JGyLX3SVgPXp27TzruwvhqXgddGQQSwNix48UYA9EkhU4Go8Hu28kl6ilVt
wV9hB4MjN2etkxqVxYaj5QtE0IQrTNekHfkLbHUGRiHQb0WkEwZWsyd/bBhZInk6C0XRQnAd0/3G
VPQ2z3rbpohipHG1w0vClDWrufbO3XZOxvVgh1QAV+rIoY91DV832e29SmeYoEE8czJ8GsRWKaC5
e6yORP8zr4g6hr7xhy1rMU9wE6ytfy2R/Eiun0SFQkh2WpCM5QwODO5b5yf5phjtBFvQ0FsUNxki
RP7GQ7Iy5kj98A1PDFUoL3v5CX1IGjPBu7JahiStqu3UOyKIXFL6+UqQFmybhevS/jbPasLqQr+g
7aOCnpWm+Su7kfss3/nPUMyWyXvubuGezjvUIML4tpxDnd/PkZL68zolq10zyxDOlIo/zqxtWzQS
VZtbAoZB4ZrAzj5a9DS72pHQXf6GKUc3N4L4XKODoDUIyo5rDVDu+Xow584AAPuoQ2NFaIP7XRXJ
VQO5FEUqVjxS3NCH2eMunTxFKlbcDfFABD1Wpjv6TOOpsp15ogFzrDJjhq//G1g+amZWbTjk87wI
oikSHUV39RdFUyJuimURPDLRyzdHipD8yuqnj+HIDZHG4QZQCwQLK9ODG8QOLbQ5UqAUqNpgWVmZ
dURwnQHtm2D53sSqn0Yu/k6IDUGsSRgYzuo1ftoaIklRIMQdVRZGA/5Zc6LGWoeEs9jZ9n8QNv2t
sroc4QUV5IH3eBp9cObbd2n7H+LpxFILrRbV8g1/fdrom3Tgo3Nz8LI4UmMYVO44NRkUkqciB5mL
ZWK51URRVLyrTEIVHOjd5uxcadHeOi/6sZSvjltHOGh+le8cY23RxNAI4mycHkq+DoJJ4xVUbPKp
eM+21cTMJM0kx4DIr26eo7l+kVInyNwIfXAUzrTNHH+zxT98No+ewRvkLOma7pgsx7Q8efd3tpoj
mTTFWdVqfURqXwdrGT6K5nCMkeQ5ZRG3slXssFc0WbQKMNGXLPMnKAfN/XkM/mFGU4f1l5BrlzzL
dHUajE9n0K6ubHWhjqTIC5J7EYLOwpOoBuM5JVPNf1kFv60YU65GbRBk40YDXNcPlrdLzly39pfV
XKzsUKwIHXOVeQjqJ1+26O169Vwfs43lBv7e83Ab6KB6jGhKRhwQb1CbaPNbe5rt2bs7Cyi+nRmh
bGzx6sz3923Op5ts/qKWY/l7qnLpsna0yfOx3c864r5V8GDs9BSTzSnpNc7TbK1T7j2EfhPMkyea
zo3bno0kva9dbP0cgynucW6tuGNcOws72f+qdTtIsskPAPppa97dwlzsKQAiRLrBHNi+NSV3X35H
l9uzfHKrW7JXlaPd1uD69KgwGIoHfZz5Tex861bsWbeJMcLl3rnqHxPwB1GXwmhpX2HXYbzJ4T7G
Jgc4qymVk7Whm+l5FGAye0S9czFcicZDiuSK7DdR5tqPi2nYzGntUM2SKv+IcdoWOhkpcJcOdyMu
dVQyOJJ8YYiY2W7P1yr+5ncBFgaJQ/f8LeTvWaQfq6hpcxHo7dPnIPlHhlHM8V6IALwiT8q7UXRx
PNXIg0FcctAl/zETMSXmez5n/iMOGUbOM1ChuGyAa6K4DDpJfabPD5Rnglefn1PqhCUhZ+Hbblj4
x6z8KdABRcS0Gzh/mesV/ddqoDO0rIJwV26XN3E0cd0o/rVJT/U5OGmx5OhszxWQV/c04b4Cvi6o
UuwBSirGE72J534tDTCds6MoxdSTOc7aF97gxFwlGVS+quONcinvJNs7XpSxIJmj0YTzUrwz9lWk
SgFPx1WGxArfYCB1xr71U78umEeMtFl2+rhXVb3f+O4N+b2y5Fp45r+DfiCSmMQK+gah+9A7eIGh
RqqQKDUsUaLGUAPYtMrvcMmjm6qXJ44xn8s3cQ2mVj8D14L0isNmibyd/WIOJj04S49WDfaTYEil
84IkuFn0sVfgx/XGm2a6tdGqjQ87EQ0l243hr5l8vm19/RrL31qhW7rg2vNLShOCowzh0xnYpHjO
zFEE0pJcoD9ecRQUG8yfwm14lQgYhul1rbkbBsUJTU2S5SBizO6qgcTNNjdkt3NrnbQVo0MBjCS7
BXoMjdut4u6573mIbYaGXGXuP20sY1H4X8nRbf8Ly4hMZ3BDWBTwYd3DkVvdJMFud441NDwQ+Va6
K98W8k6pEN1we+qYDpTOxoDWNOuBUOV5PMCKRtat1ipqpZ/s3mjhV5b1PsXWYIeD4MQvHhoMLfie
46u7T6AO7TDSeZPXiCqof+3XqnBqKon4lndT09R3FWq3hH3UVvXCQK4F4TE2X99EvnBjjuJ2OFpe
neggefn9bt/Fd7UwWbOt472DZw+kioMC8CaNoEzT6IMGFEUuF1FwMagJEgWUJVgLXYpe3NJbk4EW
+9NbGd05TK5HPyP8LDTFXj0b+VQqLTe/qzRB9EpXr8F4atnz+tH+787/nX5fYMGq7QdESSN1gnd+
NaC6Fy8XWGmdfzJBowTu0ywFUvGrOSfDAlyMsgeicB+72ZXNJywiqtNutjGxvj6XXxaG6Bqwaj/U
aWvII21N5yV9a6B28Dj5f77PDnj5OCes1WdalTexmp9tWRv+9lGOvsI6vWFTNUxqVeOELJ4O0iKH
LUsfaYfk3NMuOOHIxFDiJmGwKWCFBKcLgB+8UZfNdRlkNhlRgGALZ59oMDI/I0Bwh6D6t9zC+0bE
rCmSgv7lSz9yFSlx2frxuSf154EA0zD5Goz5+CpZB1VQmIm0NC6TAsj7TjJ5DoywiCLX6oeieh+n
K1KvNs5OgsK2VijZ6K0p1F8o4o5XIcxTSRmW1Af77+KXHW521hf+edMhf4OukhsG90kdmByWBXCW
XXMJ45YGTjDjFa8QGsru3I2At08PDWtfUNw85mPBIjGP8KryNE09RXtIXu3SQMMbuW3T6ukmXcL8
axiWayIJDipNgxtMDjGp3w9cN3JLjJUhCTrP+MGwXOKKZhPqTlv0wufsAtXW9QzKW67lb52/l5FA
FkKqNx6QR/+d79Ohsg1vQhZOPgNbNYw8KsHPu0kqpJFDaqaS6+h/NIjgbyurLpU5/WUe1KDbRJiw
zCeWrovnQMdfDf7snB/ddqWYSDxwhMYW080TE29gcnS7+8wSMU3LaCUlXUEKjfEvKLv9Y3IvTvXE
ncre9Z/PCM9e21ewLB+45IyZCB9ZOx0kK3QYkUfw+q9agM4L1AmssG+J/wpUecKfEr3DwLEm+Em0
QMpI0bdqJcBThyhQnV48kf4WRooo1EEz/ynlHUCTrCRpAZmAfHXQU/bwiU3eyt9mdcAw6QPeRrno
/Z6Ri635dB3/g401RrrDuqFVPLm3onQt5/h/fjsEh/MWv8jajzzucNk8lTwY9sRqJzAD+LpOjWlv
2C+pxlF9S3DCRU1DjvwyVfPdYHZMMeA+NG9YZSFKCuXhit6Q4ghVfWN1JbZrvn5Lr6iYmcfagjsY
6yZ+LpAeQW1b1Rb1dVQ4yoM6B1PgcRLnnCtE5MRfKPksKV9zRHzrPX17vTm1d/BSuaRB+J5TYTkv
BO+Z79ZxjGZxPw4HH550XsJGzGN4mSNf/xMsX+/CvJbx/vhfqQGHXIn7i9qpX3Vo7/5AKCzpezNi
DmICpi70rok6IXp4I7rvtfbHrt1S39NVaGkug5trLcmB4LFE/H6ua52ZLXNa7ooOK2hcbJVqyhuN
Ssg7RY0+1i34fJxg2tDDQvagDPdZBIQ6Su3ANfcbQMbLVb0TvnZCVk0uwcNZ4NeagiCLUJEnBsEm
wCI5TXDkHXAx3aOdhOrGIsP+T0ttU6pn9T0acNoYIkVkMMWjBkUAFfRTUWhSix4o5285wNYw8Nj5
HZueahzcjgmjGsNASPDw3mGpa/t51l5I1CP/MnHmJLK4HgARUZRpJRAR6Tg5z2/TH/09Fxiw2Qtd
vSpP7RUK/Ws4zuweOSZDwxb+YMyl84xcKetwuF+yV9pNIHoF+3YzNlrPGcTP7yUIT4QthXMuaaC2
sPJLq7B8nzMugsFVp0JqK0csZNGoUpks+QoaQtn2ao7XAwqRFSICCktAKNf1gbo/zrY9kc410DE1
+g4SGaGty2iIdq9u0Skq7gsvI/z3jU+v0PCnkP0u3Ue2YM5UIGR7t1GNVhibSZVy+Wxiq/Ra6oGd
4e9JlBHDUJIwFbWPNqFLLdZshQbnyVTSkJ/+99ns7pKc8R+flq2PnuJsb03CZD8teYeZNc/xapJW
hPX4iZXRlASIW8mo0wh2A6I3Ky53ecVzJWyfhfhRY4MRUYDRUomN3BFNfzkphpmJHWwMIly3iDmw
ao/yzEQcf0tamNWOqQr0TpDFuS7AYa69Hy04vwa2poQ5JDs5R2B43FtbkjXbcKm0A7FNPGOmLEmP
3rAaVynr3TnujxnYnukM93svWgafS+SKRjvysmjI6l8fwVs6AvoaXqSRsDHgIeQcqYNvZVYdOHaJ
WTXDeiPKrdB3rpTi24rqRihwCLUs7d6bflKL8/h3l/xYEKGFO7bPZndKMnpuScTue6ZKm2oR6vs/
ZRcEe6qp7hsPzn3OWMWzHH3fM9JtgRdrm1wHBgMDPwHZaPU6wqtVvxGXs2Y2D5SOB8rIZQ2cROvR
ahSTJWgTAtLe3nCIq8P+NgkO/dwDpoRUQ0TKtHfWShhHOqj8tQyzqJS+HHiDlqw9w1DT34rX0TjJ
iJLZ78gv7ZphSkRnwwA8IBN7hVPj0VBMQP6XR8IV5mRKVPF21MCU2gNdNn+NxZJkJCVKg2EqNnIK
jEjfi48r80WZipm8eq0hjUy1HEER1eudBaBhbm2KrdIUg2AXasw+Mu3u+THJBx9a7Y6dGTEF/5jX
T5IS+LasEYPTAYf7AlpBKtxQ7OzSpvbK0mLYHHmMhPb6iKEXQ6HkncaLphiqORKN32xRDHrYFU9J
Vn+WCjTeXXSpwS6m6MjXOMa57vCckky5JDXc5B7F7mHmK/wYBXAGn5BfsCEs6sMmQPoDbdZu2SFt
PCdqKc18jpWoJPqqeCA+xu5/HdRVwWMDFUqIPOEyb/5sEE6swtH0KBmgjowFsgXhIhNisGQFtoE5
L2TbMaBKjh7GKXVhVyaawY4LhzgTp98q47v6Sjeq+3f4bAox6M8xYjtEvHISYADlTZvgAlt4CaHz
xFtlU0RYlYkS3McvLH6Ta+A2jafS2lKIBV36QzmejGpdj27pIe47Vg52Wa/PMmxFFsQovU0BwGBm
tCGdqC8/BSheC8YMTEcfWM2D7/JL/jFaT5D5edPhYiQZT8SeNqlVLE5Sm7FgVMedNjqjE3PAiCj9
F4MwaSgfdC+Mn6/tui6R16PMh9mSSd/v64VY8xYYdcshciKKJ0isn6xXyx89QmShIb00KBCtYCSj
w4G0ALd72aisbxUt
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
