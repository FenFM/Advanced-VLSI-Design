library IEEE;
use IEEE.std_logic_1164.ALL;
use IEEE.numeric_std.ALL;

entity logic_tb is
end entity logic_tb;

architecture behav of logic_tb is

	signal s_a, s_b, s_c, s_d : std_logic;
	signal p_x, p_y : std_logic;
	signal e_x, e_y, correct : std_logic;

begin

	uut: entity work.logic
	port map (
		a => s_a,
		b => s_b,
		c => s_c,
		d => s_d,
		x => p_x,
		y => p_y
	);

	check: process (e_x, e_y, p_x, p_y)
	begin
		correct <= '0';
		if e_x = p_x then
			if e_y = p_y then
				correct <= '1';
			end if;
		end if;
	end process;

	sim: process
	begin
		s_a <= '0';
		s_b <= '0';
		s_c <= '0';
		s_d <= '0';
		e_x <= '0';
		e_y <= '0';
		wait for 10 ns;
		s_a <= '1';
		s_b <= '0';
		s_c <= '0';
		s_d <= '0';
		e_x <= '1';
		e_y <= '0';
		wait for 10 ns;
		s_a <= '0';
		s_b <= '0';
		s_c <= '1';
		s_d <= '0';
		e_x <= '1';
		e_y <= '0';
		wait for 10 ns;
		s_a <= '1';
		s_b <= '0';
		s_c <= '1';
		s_d <= '0';
		e_x <= '0';
		e_y <= '1';
		wait for 10 ns;
		s_a <= '0';
		s_b <= '1';
		s_c <= '0';
		s_d <= '0';
		e_x <= '0';
		e_y <= '1';
		wait for 10 ns;
		s_a <= '1';
		s_b <= '1';
		s_c <= '0';
		s_d <= '0';
		e_x <= '1';
		e_y <= '1';
		wait for 10 ns;
		s_a <= '0';
		s_b <= '1';
		s_c <= '1';
		s_d <= '0';
		e_x <= '1';
		e_y <= '1';
		wait for 10 ns;
		s_a <= '1';
		s_b <= '1';
		s_c <= '1';
		s_d <= '0';
		e_x <= '0';
		e_y <= '0';
		wait for 10 ns;
		s_a <= '0';
		s_b <= '0';
		s_c <= '0';
		s_d <= '1';
		e_x <= '0';
		e_y <= '1';
		wait for 10 ns;
		s_a <= '1';
		s_b <= '0';
		s_c <= '0';
		s_d <= '1';
		e_x <= '1';
		e_y <= '1';
		wait for 10 ns;
		s_a <= '0';
		s_b <= '0';
		s_c <= '1';
		s_d <= '1';
		e_x <= '1';
		e_y <= '1';
		wait for 10 ns;
		s_a <= '1';
		s_b <= '0';
		s_c <= '1';
		s_d <= '1';
		e_x <= '0';
		e_y <= '0';
		wait for 10 ns;
		s_a <= '0';
		s_b <= '1';
		s_c <= '0';
		s_d <= '1';
		e_x <= '0';
		e_y <= '0';
		wait for 10 ns;
		s_a <= '1';
		s_b <= '1';
		s_c <= '0';
		s_d <= '1';
		e_x <= '1';
		e_y <= '0';
		wait for 10 ns;
		s_a <= '0';
		s_b <= '1';
		s_c <= '1';
		s_d <= '1';
		e_x <= '1';
		e_y <= '0';
		wait for 10 ns;
		s_a <= '1';
		s_b <= '1';
		s_c <= '1';
		s_d <= '1';
		e_x <= '0';
		e_y <= '1';
		wait;
	end process;


end behav;

