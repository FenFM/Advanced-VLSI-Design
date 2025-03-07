library IEEE;
use IEEE.std_logic_1164.ALL;
use IEEE.numeric_std.ALL;
use work.generic_header.ALL;
use work.program.ALL;
use work.misc.ALL;


entity cpu_tb is
end entity cpu_tb;


architecture behav of cpu_tb is
	signal clk, rst : std_logic;
	constant clk_period : time := 10 ps;
	
	signal s_instruction_memory_write_data : std_logic_vector( C_BIT_WIDTH-1 downto 0 );
	signal s_instruction_memory_write_addr : std_logic_vector( log2(C_IM_MEM_SIZE)-1 downto 0 );
	signal s_instruction_memory_write_wren : std_logic;
	signal s_instruction_memory_read_data  : std_logic_vector( C_BIT_WIDTH-1 downto 0 );
	signal s_data_memory_read_data         : std_logic_vector( C_BIT_WIDTH-1 downto 0 );
	signal s_register_file_read_a_data     : std_logic_vector( C_BIT_WIDTH-1 downto 0 );
	signal s_register_file_read_b_data     : std_logic_vector( C_BIT_WIDTH-1 downto 0 );
	
	
begin

	vc: process
	begin
		clk <= '1';
		wait for clk_period/2;
		clk <= '0';
		wait for clk_period/2;
	end process;

	--------------------
	-- Finish CPU instantiation
	--------------------
	uut: entity work.cpu
--	generic map ()
	port map(
        clk  =>  clk,
        rst  =>  rst,
        i_instruction_memory_write_data  =>  s_instruction_memory_write_data,
        i_instruction_memory_write_addr  =>  s_instruction_memory_write_addr,
        i_instruction_memory_write_wren  =>  s_instruction_memory_write_wren,
        o_instruction_memory_read_data   =>  s_instruction_memory_read_data,
        o_data_memory_read_data          =>  s_data_memory_read_data,
        o_register_file_read_a_data      =>  s_register_file_read_a_data,
        o_register_file_read_b_data      =>  s_register_file_read_b_data
	);

	sim: process
	begin

		rst <= '1';
		
		-- load instruction memory
		s_instruction_memory_write_wren <= '1';
		for i in 0 to (C_IM_MEM_SIZE/2)-1 loop
            s_instruction_memory_write_addr <= std_logic_vector( to_unsigned( i, log2(C_IM_MEM_SIZE)) ) ;
            s_instruction_memory_write_data <= get_instruction( i );
            wait for clk_period;
		end loop;
		s_instruction_memory_write_wren <= '0';
		
		wait for 4*clk_period;
		
		rst <= '0';
		
		for j in 0 to 200 loop
		  wait for clk_period;
		end loop;
		
		wait;
	end process;

end behav;

