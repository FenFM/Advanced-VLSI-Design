library IEEE;
use IEEE.std_logic_1164.ALL;
use IEEE.numeric_std.ALL;
use work.generic_header.ALL;


package	program is

	constant instr_mem_size : integer := C_IM_MEM_SIZE;
	type t_program_array is array (natural range <>) of std_logic_vector(31 downto 0);
	constant instr_mem_init : t_program_array(instr_mem_size-1 downto 0) := (
		-- IMM Instructions
		0  => x"00200093",  -- addi x1, x0, 2		| x1  = 2
		1  => x"00308093",  -- addi x1, x1, 3		| x1  = 5
		2  => x"0060A113",  -- slti x2, x1, 6		| x2  = 1
		3  => x"0040A193",  -- slti x3, x1, 4		| x3  = 0
		4  => x"FFF0B213",  -- sltu x4, x1, -1		| x4  = 1
		5  => x"0050B293",  -- sltu x5, x1, 5		| x5  = 0
		6  => x"E3800313",  -- addi x6, x0, 3640	| x6  = -456
		7  => x"55534393",  -- xori x7, x6, 1365	| x7  = -1171
		8  => x"55536413",  -- ori x8, x6, 1365		| x8  = -131
		9  => x"55537493",  -- andi x9, x6, 1365	| x9  = 1040
		10 => x"00231513",  -- slli x10, x6, 2		| x10 = -1824
		11 => x"00335593",  -- srli x11, x6, 3		| x11 = 536870855
		12 => x"40335613",  -- srai x12, x6, 3		| x12 = -57
		-- OP Instructions
		13 => x"002086B3",  -- add x13, x1, x2		| x13 = 6
		14 => x"00608733",  -- add x14, x1, x6		| x14 = -451
		15 => x"402087B3",  -- sub x15, x1, x2		| x15 = 4
		16 => x"40608833",  -- sub x16, x1, x6		| x16 = 461

		others => (others => '0'));

	function get_instruction(address : integer) return std_logic_vector;

end program;

package body program is 

		function get_instruction(address : integer) return std_logic_vector is
		begin
			return instr_mem_init(address);
		end function;

end program;
