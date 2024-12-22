library IEEE;
use IEEE.std_logic_1164.ALL;
use IEEE.numeric_std.ALL;

package	program is

	constant instr_mem_size : integer := 128;
	type t_program_array is array (natural range <>) of std_logic_vector(31 downto 0);
	constant instr_mem_init : t_program_array(instr_mem_size-1 downto 0) := (
		0 => x"00100293",
		1 => x"00100313",
		2 => x"00000113",
		3 => x"02a00193",
		4 => x"fff18193",
		5 => x"00310c63",
		6 => x"006283b3",
		7 => x"00028333",
		8 => x"000382b3",
		9 => x"fff10113",
		10 => x"fedff06f",
		11 => x"0202a623"
		others => (others => '0'));

	function get_instruction(address : integer) return std_logic_vector;

end program;

package body program is 

		function get_instruction(address : integer) return std_logic_vector is
		begin
			return instr_mem_init(address);
		end function;

end program;
