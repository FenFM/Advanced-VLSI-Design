library IEEE;
use IEEE.std_logic_1164.ALL;
use IEEE.numeric_std.ALL;

entity op_sub is
	generic (
		bits : integer := 32
	);
	port (
		a : in std_logic_vector(bits-1 downto 0);
		b : in std_logic_vector(bits-1 downto 0);
		c : out std_logic_vector(bits-1 downto 0)
	);
end entity op_sub;

architecture behav of op_sub is

begin

	c <= std_logic_vector(signed(a) - signed(b));

end behav;
