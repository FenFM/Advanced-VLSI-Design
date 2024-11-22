library IEEE;
use IEEE.std_logic_1164.ALL;
use IEEE.numeric_std.ALL;

use work.isa_riscv.ALL;


entity op_xor is
	generic (
		bits : integer := 4 -- bitwidth
	);
	port (
		a : in  std_logic_vector(bits-1 downto 0);
		b : in  std_logic_vector(bits-1 downto 0);
		c : out std_logic_vector(bits-1 downto 0)
	);
end entity op_xor;


architecture behav of op_xor is

begin
    process (a, b)
    begin
        for i in 0 to bits-1 loop
            c(i) <= a(i) xor b(i);
        end loop;
    end process;
end behav;