// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Sun Mar  9 13:28:16 2025
// Host        : Crawler-E30 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top unsigned_adder -prefix
//               unsigned_adder_ unsigned_adder_sim_netlist.v
// Design      : unsigned_adder
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010iclg225-1L
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
+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
K/I=
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
