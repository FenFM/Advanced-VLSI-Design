library IEEE;
use IEEE.std_logic_1164.ALL;
use IEEE.numeric_std.ALL;

use work.misc.ALL;


entity memory is
	generic (
		word_size : integer := 32;
		mem_size  : integer := 128
	);
	port (
		clk : in  std_logic;

		i_memory_write_data : in  std_logic_vector(word_size-1 downto 0);       
		i_memory_write_addr : in  std_logic_vector(log2( mem_size )-1 downto 0);
		i_memory_write_wren : in  std_logic;

		o_memory_read_data  : out std_logic_vector(word_size-1 downto 0);       
		i_memory_read_addr  : in  std_logic_vector(log2( mem_size )-1 downto 0);
		i_memory_read_rden  : in  std_logic                                     
	);
end entity memory;

architecture behav of memory is
	signal s_mem_read_addr  : integer range 0 to mem_size-1;
	signal s_mem_write_addr : integer range 0 to mem_size-1;

	type register_data_vector is array( 0 to mem_size -1 ) of std_logic_vector( word_size-1 downto 0 );
	signal s_data_reg_vec : register_data_vector;


begin
	s_mem_read_addr  <= to_integer( unsigned( i_memory_read_addr ) );
	s_mem_write_addr <= to_integer( unsigned( i_memory_write_addr ) );

 
	writing : process( clk )
	begin
		if rising_edge( clk ) and i_memory_write_wren = '1' then
			s_data_reg_vec( s_mem_write_addr ) <= i_memory_write_data;
		end if;
	end process writing;


	reading : process( i_memory_read_rden, i_memory_read_addr )
	begin
	   if i_memory_read_rden = '1' then
	       o_memory_read_data <= s_data_reg_vec( s_mem_read_addr );
	   end if;
	end process reading;


end behav;
