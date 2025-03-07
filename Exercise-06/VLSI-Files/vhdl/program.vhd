library IEEE;
use IEEE.std_logic_1164.ALL;
use IEEE.numeric_std.ALL;

package	program is

	constant instr_mem_size : integer := 128;
	type t_program_array is array (natural range <>) of std_logic_vector(31 downto 0);
	constant instr_mem_init : t_program_array(instr_mem_size-1 downto 0) := (
		-- IMM Instructions
		0  => x"00208013",  -- addi x1, x0, 2  | x1 = 2
		1  => x"00508093",  -- addi x1, x1, 3  | x1 = 5
		2  => x"",  -- 
		3  => x"",  -- 
		4  => x"",  -- 
		5  => x"",  -- 
		6  => x"",  -- 
		7  => x"",  -- 
		8  => x"",  -- 
		9  => x"",  -- 
		10 => x"",  -- 
		11 => x"",  -- 
		others => (others => '0'));

	function get_instruction(address : integer) return std_logic_vector;

end program;

package body program is 

		function get_instruction(address : integer) return std_logic_vector is
		begin
			return instr_mem_init(address);
		end function;

end program;
