// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Thu Mar 13 00:14:19 2025
// Host        : Crawler-E30 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top unsigned_adder -prefix
//               unsigned_adder_ unsigned_adder_sim_netlist.v
// Design      : unsigned_adder
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "unsigned_adder,c_addsub_v12_0_18,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_addsub_v12_0_18,Vivado 2024.1" *) 
(* NotValidForBitStream *)
module unsigned_adder
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
  (* C_A_TYPE = "1" *) 
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
  unsigned_adder_c_addsub_v12_0_18 U0
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
qyc=
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
