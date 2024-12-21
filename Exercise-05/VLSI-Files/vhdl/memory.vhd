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
		clk        : in  std_logic;
		data_write : in  std_logic_vector(word_size-1 downto 0);         -- i_write_32_data 
		data_read  : out std_logic_vector(word_size-1 downto 0);         -- o_read_32_data
		addr_write : in  std_logic_vector(log2( mem_size )-1 downto 0);  -- i_write_32_addr
		addr_read  : in  std_logic_vector(log2( mem_size )-1 downto 0);  -- i_read_32_addr
		write_en   : in  std_logic;		                                 -- i_write_32_wren
		read_en    : in  std_logic                                       -- i_read_32_rden
	);
end entity memory;

architecture behav of memory is
	signal s_addr_read  : integer range 0 to mem_size-1;
	signal s_addr_write : integer range 0 to mem_size-1;

	type register_data_vector is array( 0 to mem_size -1 ) of std_logic_vector( word_size-1 downto 0 );
	signal s_data_reg_vec : register_data_vector;


begin
	s_addr_read  <= to_integer( unsigned( addr_read ) );
	s_addr_write <= to_integer( unsigned( addr_write ) );

 
	writing : process( clk )
	begin
		if rising_edge( clk ) and write_en = '1' then
			s_data_reg_vec( s_addr_write ) <= data_write;
		end if;
	end process writing;


	reading : process( addr_read )
	begin
	   if read_en = '1' then
	       data_read <= s_data_reg_vec( s_addr_read );
	   end if;
	end process reading;


end behav;
