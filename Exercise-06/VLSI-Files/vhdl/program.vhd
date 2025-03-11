library IEEE;
use IEEE.std_logic_1164.ALL;
use IEEE.numeric_std.ALL;
use work.generic_header.ALL;


package	program is

	constant instr_mem_size : integer := C_IM_MEM_SIZE;
	type t_program_array is array (natural range <>) of std_logic_vector(31 downto 0);
	constant instr_mem_init : t_program_array(instr_mem_size-1 downto 0) := (
--		-- IMM Instructions
--		0  => x"00200093",  -- addi x1, x0, 2		| x1  = 2
--		1  => x"00308093",  -- addi x1, x1, 3		| x1  = 5
--		2  => x"0060A113",  -- slti x2, x1, 6		| x2  = 1
--		3  => x"0040A193",  -- slti x3, x1, 4		| x3  = 0
--		4  => x"FFF0B213",  -- sltu x4, x1, -1		| x4  = 1
--		5  => x"0050B293",  -- sltu x5, x1, 5		| x5  = 0
--		6  => x"E3800313",  -- addi x6, x0, 3640	| x6  = -456
--		7  => x"55534393",  -- xori x7, x6, 1365	| x7  = -1171
--		8  => x"55536413",  -- ori  x8, x6, 1365	| x8  = -131
--		9  => x"55537493",  -- andi x9, x6, 1365	| x9  = 1040
--		10 => x"00231513",  -- slli x10, x6, 2		| x10 = -1824
--		11 => x"00335593",  -- srli x11, x6, 3		| x11 = 536870855
--		12 => x"40335613",  -- srai x12, x6, 3		| x12 = -57
--		-- OP Instructions
--		13 => x"002086B3",  -- add x13, x1, x2		| x13 = 6
--		14 => x"00608733",  -- add x14, x1, x6		| x14 = -451
--		15 => x"402087B3",  -- sub x15, x1, x2		| x15 = 4
--		16 => x"40608833",  -- sub x16, x1, x6		| x16 = 461


		-- LUI Instructions
		0   => x"00000013",  -- addi  x0, x0, 0
		1   => x"06CDB0B7",  -- lui   x1, 27867		| x1  = 114143232
		2   => x"00004117",  -- auipc x2, 4			| x2  = 16388
		3   => x"004001EF",  -- jal   x3, 2			| x3  = 8
		5   => x"00718267",  -- jalr  x4, x3, 7		| x4  = 12
		-- BRANCH Instructions
		7   => x"00100393",  -- addi x7, x0, 1		| x7  = 1
		8   => x"00100413",  -- addi x8, x0, 1		| x8  = 1
		9   => x"00200493",  -- addi x9, x0, 2		| x9  = 2
		10  => x"00200513",  -- addi x10, x0, 2		| x10 = 2
		11  => x"00938263",  -- beq  x7, x9, 2
		12  => x"00838263",  -- beq  x7, x8, 2
		14  => x"00839263",  -- bne  x7, x8, 2
		15  => x"00939263",  -- bne  x7, x9, 2
		17  => x"0083C263",  -- blt  x7, x8, 2
		18  => x"0093C263",  -- blt  x7, x9, 2
		20  => x"0093D263",  -- bge  x7, x9, 2
		21  => x"0083D263",  -- bge  x7, x8, 2
		23  => x"00000013",  -- addi x0, x0, 0


--		-- STORE
--		0   => x"00000013",  -- addi x0, x0, 0
--		1   => x"00100093",  -- addi x1, x0, 1		| x1 = 1
--		2   => x"00200113",  -- addi x2, x0, 2		| x2 = 2
--		3   => x"00300193",  -- addi x3, x0, 3		| x3 = 3
--		
--		4   => x"001000A3",  -- sb   x0, x1, 1
--		5   => x"00201123",  -- sh   x0, x2, 2
--		6   => x"003021A3",  -- sw   x0, x3, 3
--		-- LOAD
--		7   => x"00102203",  -- lw   x4, x0, 1		| x4 = 1


--		-- MUL and DIV
--		0 => x"00000013",  -- addi x0, x0, 2
--		1 => x"00200093",  -- addi x1, x0, 2		| x1 = 2
--		2 => x"00300113",  -- addi x2, x0, 3		| x2 = 3
--		3 => x"FF600193",  -- addi x3, -10			| x3 = -10
--		4 => x"02308233",  -- mul  x4, x1, x3		| x4 = -20
--		5 => x"023092B3",  -- mulh x5, x1, x3		| x5 = -1
--		6 => x"0211C2B3",  -- div  x6, x3, x1		| x6 = -5
--		7 => x"0211C3B3",  -- rem  x7, x3, x2		| x7 = -1
--		8 => x"0200C433",  -- div  x8, x1, x0		| x8 = 0

		others => (others => '0'));

	function get_instruction(address : integer) return std_logic_vector;

end program;

package body program is 

		function get_instruction(address : integer) return std_logic_vector is
		begin
			return instr_mem_init(address);
		end function;

end program;
