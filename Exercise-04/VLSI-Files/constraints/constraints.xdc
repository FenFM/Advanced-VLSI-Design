## Clock signal
#set_property -dict "PACKAGE_PIN Y9 IOSTANDARD LVCMOS33" [get_ports clk]
#create_clock -name gclk -period 10 [get_ports clk]
#set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets clk]

#set_property PACKAGE_PIN Y9 [get_ports clk_100]							
#	set_property IOSTANDARD LVCMOS33 [get_ports clk_100]
    set_property -dict "PACKAGE_PIN Y9 IOSTANDARD LVCMOS33" [get_ports clk_100]
	set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets clk_100]
	create_clock -add -name sys_clk_pin -period 10.00 -waveform {0 5} [get_ports clk_100]
 
## Switches
set_property PACKAGE_PIN F22 [get_ports {switches[0]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {switches[0]}]
set_property PACKAGE_PIN G22 [get_ports {switches[1]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {switches[1]}]
set_property PACKAGE_PIN H22 [get_ports {switches[2]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {switches[2]}]
set_property PACKAGE_PIN F21 [get_ports {switches[3]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {switches[3]}]
set_property PACKAGE_PIN H19 [get_ports {switches[4]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {switches[4]}]
set_property PACKAGE_PIN H18 [get_ports {switches[5]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {switches[5]}]
set_property PACKAGE_PIN H17 [get_ports {switches[6]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {switches[6]}]
set_property PACKAGE_PIN M15 [get_ports {switches[7]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {switches[7]}]

## LEDs
set_property PACKAGE_PIN T22 [get_ports {leds[0]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {leds[0]}]
set_property PACKAGE_PIN T21 [get_ports {leds[1]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {leds[1]}]
set_property PACKAGE_PIN U22 [get_ports {leds[2]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {leds[2]}]
set_property PACKAGE_PIN U21 [get_ports {leds[3]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {leds[3]}]
set_property PACKAGE_PIN V22 [get_ports {leds[4]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {leds[4]}]
set_property PACKAGE_PIN W22 [get_ports {leds[5]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {leds[5]}]
set_property PACKAGE_PIN U19 [get_ports {leds[6]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {leds[6]}]
set_property PACKAGE_PIN U14 [get_ports {leds[7]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {leds[7]}]

## Buttons
set_property PACKAGE_PIN N15 [get_ports {buttons[0]}]; # left
	set_property IOSTANDARD LVCMOS33 [get_ports {buttons[0]}]
set_property PACKAGE_PIN R18 [get_ports {buttons[1]}]; # right
	set_property IOSTANDARD LVCMOS33 [get_ports {buttons[1]}]
set_property PACKAGE_PIN T18 [get_ports {buttons[2]}]; # up
	set_property IOSTANDARD LVCMOS33 [get_ports {buttons[2]}]
set_property PACKAGE_PIN R16 [get_ports {buttons[3]}]; # down
	set_property IOSTANDARD LVCMOS33 [get_ports {buttons[3]}]
set_property PACKAGE_PIN P16 [get_ports {buttons[4]}]; # center
	set_property IOSTANDARD LVCMOS33 [get_ports {buttons[4]}]
