library IEEE;
use IEEE.std_logic_1164.ALL;
use IEEE.numeric_std.ALL;

use work.isa_riscv.ALL;

entity alu is
	generic (
		bits : integer := 32 -- bitwidth
	);
	port (
		a : in  std_logic_vector(bits-1 downto 0);
		b : in  std_logic_vector(bits-1 downto 0);
		c : out std_logic_vector(bits-1 downto 0);
		op : in std_logic_vector(3 downto 0)
	);
end entity alu;

architecture behav of alu is

	-- TODO: Insert your signals here

begin

	-- TODO: Insert your code here

end behav;

