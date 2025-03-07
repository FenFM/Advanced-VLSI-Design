library IEEE;
use IEEE.std_logic_1164.ALL;
use IEEE.numeric_std.ALL;

package	program is

	constant instr_mem_size : integer := 128;
	type t_program_array is array (natural range <>) of std_logic_vector(31 downto 0);
	constant instr_mem_init : t_program_array(instr_mem_size-1 downto 0) := (
		-- IMM Instructions
		0  => x"00208013",  -- addi x1, x0, 2		| x1 = 2
		1  => x"00508093",  -- addi x1, x1, 3		| x1 = 5
		2  => x"0060A113",  -- slti x2, x1, 6		| x2 = 1
		3  => x"0040A193",  -- slti x3, x1, 4		| x3 = 0
		4  => x"FFF0B393",  -- sltu x4, x1, -1		| x4 = 1
		5  => x"0050B293",  -- sltu x5, x1, 5		| x5 = 0
		6  => x"E3800313",  -- addi x6, x0, 3640	| x6 = 3640 / -456
		7  => x"55534393",  -- xori x7, x6, 1365	| x7 = 2925 / -1171
		8  => x"55536413",  -- ori x8, x6, 1365		| x8 = 3965 / -131
		9  => x"55537493",  -- andi x9, x6, 1365	| x9 = 1040
		10 => x"00231513",  -- slli x10, x6, 2		| x10 = 63712 / -1824
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
