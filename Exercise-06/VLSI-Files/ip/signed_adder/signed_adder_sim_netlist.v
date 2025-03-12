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
Hbtd0RF+vbw5kPzhWth4prbTqfxs/veqToJrDoxib2SgntDULfFPJcNsj7SvNVpKCLmSSy0qCUpw
U//5e+UafDfYyvQhNpZ3U1oAIw2IANEWLwyD6+vPfnPuMlyYFBbwD8UB77hN88c9DY0t8icxu0/Q
9o0U2jIMxK6EceQPJGFKMBmQx2rFj+1AGYaLyuk6XhfAxvKY8U1nSzAWFjgV8FCi/KcYa+zIpk7A
9FVm8D6tS/dglwnnekaKZfs4g1H7JzSd/uV5eLNvmQrxSuYFifjkXT4iDxQcUOIZLJ+kKeWkMDrg
qvc8c3jaNHeGxqf6nodwBaIzxzBqfbDWmEoXHDVpvreuhOEa1q1uV/vXmEx1d2zdsD9SW5/7S1FB
9ZBex1D2M0uEuJ8mA4P8FRv5RBtORkX2N3V9V71tZWSZNhvnwJD561Fbq4Ok2jWMjIHk7VDRs8O+
yR4E8tbeM+F17GpJ/nMeCxQvfR7jfm8ljzhn5B5Ro7dKgaIHPROGgs1AbToGqKFYKa9yVJRt+YK2
wylvM7jX5i+W0E17aQVb4RFvJOpWjQZghEJuhRGums1DGEr6cRun9hroBE91IZDTLlnycrqiI7O2
iO4QU7na0lSDu9yc61mcmg46dRniSEaAJP98sdkJ1rur2RKp5nSFISvbzEzX0qM2YwUK4Hu8U60G
hIudz+8ZQsNDpKa4VlNbQWbzqya4HIM9EDnKccM4SC1r5ngmZtUIpoI850yxbRKynQcmP8RuACnz
kWMnUKR7vTz0vjacLo1cN/e/C8kKuEywq83hASvnDC7yLgMvEEaU+DRqq+LA5IZrZZYDUV6869nL
ybV41ibUDvnzKbT0iSetsPwPVobyAapH7lLdG71TRDDNb76OqxEyQpQ7HKsGbThiZM169SbUUyPG
4A7/HueqYD/hd6wgEh7wLJUy0KAk48MNaqOy0qw/tRa1BpfrfInqRhJFGULd7zHC5FMwvJMd2wWI
JTVhYtmXG4aa3psPk+RkT0pY0DIVCERZUL2X1u/QJ5tS1xppnIYz2NuZn9BGAZnqw0OYyl1pHw+N
ZXAgY66YUHAdv/pCdyD6fmtIJmzCsZDoxDuliGJbf0DNZLGKv7VJhnltADSlcb+ZafMKTHLtit8A
7kaUlEUyQltFsz4wNQoQLEJ+nxfQkjQLa1ZQiUDPMbT8QkOCoJGcf8CeVCD7d+yZawVWzam+MssH
p0TaY1cqmfKGqqVBNBkwfIQaoePPo1MmOxKURlOQ0ZJG52JkNN+BpCrncZ7binRdRgmfDmqYNQi3
6toprrQCuvgkcYhHOmlI1Wbcu9jqP5pRprZjAOHA/FhPf0XGtYwSgMMiGvHIJb0uCFoC7zqPTgQ2
MH6gb6vSl+U0bEJUK/Sm83G7PHj0Kr27h9qZiFpxSCz/yhZOEC9oYGAHcdterqf3Mp0hpVlBnBTC
KhLQmrBvJa7BozxqLD7igMGgVvUGHDmEEr6Ty4/+VcnhXYlf3wDQFYHtJS+kKtBzrl+t0HK87O21
5i7sKTKHHpLF8rKVN3WeI3Y8Ix91RxcdZLTSqZKOBO7L15xpySIVpWLkjFhqAhGTibDZ6pdPIpo1
9d8fWCwU153QpPC1MXkd2jZeBqxGpEyr1tkC6yPwtvArvvBgTr/OzfcTpVbxsGtXkhzvjNUf2W4g
DLExz21Cim0ayLf15TbVjRJE/mZdXCoPzfMZ6gcm+yN7VlSLia/fB2U/xkj/vmYlUbXC3F0BSd0H
qaHOZMG5lgohxSR3O3/6vsdj/KwgCjI8+wV3x0JiMiRpYekyivq31rkhbWiUzGs7RlyoTFFM8dx9
UXF8oFjrMrvLxwnpVATEeaRUZ6sl9DdCnpZD9TiAVr6QGVQt07gUkSAfOhDrWGgi1qx3d65cuvlt
CV8S0InwoIWQ4TIomSR9VUAaAGDEkpVfSIyDEmT1G9VIKie1BFYPdsmz+7X6WvfZa/sPBwUZqXJY
P+lDqJ8J5BZFdFW9nYAn/xX+jNIJkDFGnJZhYUfih7rkLzt/KSu8wniWNyfR+zFCUNITXD2M/Xmk
sXQ8fLkHk9bjizP0zYSwaoSBrsptl+sHAjif3PdVeheICRsSfiWP7HQGcZ1oaBZuRDFAnaPoQjrt
VdbV7bk+yF5iGqEg3lJVai8q4SVHx4taU0xswEJTfddD8/itHaWWpDlwEvhcFn4OP66KF4YHPFuV
8XekqjuqEOg7p6uLTGggrllkB6qIHJ/vD1SnHFrIKEvCNrspxZ5jio5lT/0dHm2BfPWKxqRK4Hg+
S74DUFUpn3k6P+LEAVnlTBNASf8i9BmCO/MZdQIKE0/SzeintNaTnqxGebXm3O5uqkEoQrcSpoQV
GQ864HbXRD1zxpSVnxiuLg+wgI5UosuvQ9WBjQwAZXQyXl1KUhXtycuCtOrSMx4/f8qSp9KXS+Og
MGSn8zQVY8Y1NvTE3eWIV5ssfq+gW8bR6lp1YsMAwXz4kYKypvqTFRyA25kTIrWYgzMVVS47nACd
dGq6QfOGjm77MEUFk2z62oQmL0T6GkhIuTDypJjIX9kUwLtEyxxCzCw2aeNXxRZHivpZKuaoHl/P
iegwhAGzdXTAr8dYiKOaxyn5FsEj9TE70beGbf6KBDSGx8H4fTYmDe6KL1yiPKHF9HvDOfeHRuCU
ojllBjSdFiIPWMMH28/y48OJLXrRdpElZPDxeE31Kl5MwhkRr0sArwWNvT8p+rtNkOY9iUXMDeoU
YbqJ8c9U9/1Qz446zUBez7g+FeLTQQLG1UeDN2LRwVgglhgnN1x/XsBULjnzSzSyeH0lWpfWkfrI
XuhDsfDuje8u60DQMswb3OeBPX8KoihXaULo5e2Km/aPpqZdSZ+gbznPwIEB1fVDtzVoTeza9IYf
EYmdI0Mh8mlx9awKIZ3duonGueQUoV1cralCPqATXNS5rxQryTbQ5Ymp0mEuzOIcWH255OHRJTl9
F26YAeaDm7CAdR3yLJ9wqI00wzQq4iw6R+E2uBFAjn4TyKwn5D3CGZ03W0oLr06cNa20JclZWR1s
xVSREkEZUqD4h9Lr7cr/sBA8RSgFelb5Cjy05k2yAlylG8Ak/DgsvouYf8b8Bx3mHBaPPXjx9RLr
1D6v7k9qv+47TWWx5u7BgHphpVMTOS7Khbekbes+Us5mr2xT5LDFmlTtIhlfCnF8SpUj2xqsATbu
Z1vsvURvv9/mxPO5wu6UK1tnbjW3kw5UrHEFw/I2oXTUgr9Ltuzs7iItV2hSUJNfM5aesaL4HAc6
XDgWA5aBNMpnwHB1o8P6onoJ91dOwPXPOARUTIO9XiX8Lki6jMNjQSeTHAtV+KENdVwsydAGdAmi
UwigvFcf9psaBThAdNwDi+0qiMcOAawIfDzTp8AQbilAzJ8jq/sV9SarSD6I5qy+LwvF8bjMtZ0W
0D564ChF8OTqhbd6RTm0KeV5d1AFZQn8tsPNhSvUQ1QiThZfAJRwQTssDg==
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
KT5jVQNaV7TboCD8
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
