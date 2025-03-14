create_clock -period 125.000 -name gclk [get_ports clk]
set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets clk]
#set_property -dict {PACKAGE_PIN Y9 IOSTANDARD LVCMOS33} [get_ports clk]
