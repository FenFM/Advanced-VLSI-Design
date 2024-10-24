library IEEE;
use IEEE.std_logic_1164.ALL;
use IEEE.numeric_std.ALL;

entity logic_wrapper is
	port (
		switches : in std_logic_vector(7 downto 0);
		leds : out std_logic_vector(7 downto 0);
		clk : in std_logic
	);
end entity logic_wrapper;

architecture behav of logic_wrapper is

	signal r_leds : std_logic_vector(7 downto 0) := (others => '0');
	signal a, b, c, d, x, y : std_logic;

begin

	process (clk)
	begin
		if rising_edge (clk) then
			r_leds(3 downto 0) <= switches(3 downto 0);
			r_leds(7) <= y;
			r_leds(6) <= x;
		end if;
	end process;

	gate: entity work.logic
	port map (
		a, b, c, d, x, y
	);

	a <= switches(0);
	b <= switches(1);
	c <= switches(2);
	d <= switches(3);
	
	leds <= r_leds;

end behav;

