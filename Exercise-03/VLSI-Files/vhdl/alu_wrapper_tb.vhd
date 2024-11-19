library IEEE;
use IEEE.std_logic_1164.ALL;
use IEEE.numeric_std.ALL;

entity alu_wrapper_tb is
end entity alu_wrapper_tb;

architecture behav of alu_wrapper_tb is

		signal switches : std_logic_vector(7 downto 0);
		signal leds : std_logic_vector(7 downto 0);
		signal buttons : std_logic_vector(4 downto 0);
		signal clk : std_logic;

		constant cf: time := 10 ns;

begin

	vclk: process
	begin
		clk <= '1';
		wait for cf/2;
		clk <= '0';
		wait for cf/2;
	end process;

	uut: entity work.alu_wrapper
	port map (switches, leds, buttons, clk);

	sim: process
	begin
		buttons <= (others => '0');
		switches <= (others => '0');
		wait for 2*cf;
		switches <= x"03";
		wait for 2*cf;
		buttons <= "00001";
		wait for 2*cf;
		buttons <= "00010";
		wait for cf;
		buttons <= "00000";
		--switches <= x"04";
		--wait for cf;
		--switches <= x"01";
		switches <= x"00";
		wait;
	end process;

end behav;

