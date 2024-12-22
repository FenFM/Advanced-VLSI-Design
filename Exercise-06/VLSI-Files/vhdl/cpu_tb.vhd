library IEEE;
use IEEE.std_logic_1164.ALL;
use IEEE.numeric_std.ALL;

entity cpu_tb is
end entity cpu_tb;

architecture behav of cpu_tb is
	
	signal clk, rst : std_logic;
	constant clk_period : time := 20 ns;
	
begin

	vc: process
	begin
		clk <= '1';
		wait for clk_period/2;
		clk <= '0';
		wait for clk_period/2;
	end process;

	--------------------
	-- Finish CPU instantiation
	--------------------
	uut: entity work.cpu
	generic map ()
	port map();

	sim: process ()
	begin

		rst <= '1';
		wait for 4*clock_period;
		rst <= '0';

		--------------------
		-- Simulate CPU behavior
		--------------------
		
		wait;
	end process;

end behav;

