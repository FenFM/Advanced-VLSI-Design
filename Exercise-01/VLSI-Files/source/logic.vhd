LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;


ENTITY logic IS
	PORT (
		a : IN  STD_LOGIC;
		b : IN  STD_LOGIC;
		c : IN  STD_LOGIC;
		d : IN  STD_LOGIC;

		x : OUT STD_LOGIC;
		y : OUT STD_LOGIC
	);
END logic;


ARCHITECTURE behavioral OF logic IS
	SIGNAL s_a_and_c : STD_LOGIC;
	SIGNAL s_b_xor_d : STD_LOGIC;


BEGIN
	-- logic for signals
	s_a_and_c <= a AND c;
	s_b_xor_d <= b XOR d;

	-- logic for outputs
	x <= a XOR c;
	y <= s_a_and_c XOR s_b_xor_d;

END behavioral;

