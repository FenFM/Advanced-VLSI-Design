library IEEE;
use IEEE.std_logic_1164.ALL;
use IEEE.numeric_std.ALL;
use work.misc.ALL;


entity register_file is
    generic(
        word_size : integer := 8;  -- bit size of each register
        reg_size  : integer := 32  -- # of register
    );
    port(
    clk : in std_logic;

    o_read_a_data : out std_logic_vector( word_size-1 downto 0 );
    i_read_a_addr : in  std_logic_vector( log2(reg_size)-1 downto 0 );

    o_read_b_data : out std_logic_vector( word_size-1 downto 0 );
    i_read_b_addr : in  std_logic_vector( log2(reg_size)-1 downto 0 );

    i_write_data  : in  std_logic_vector( word_size-1 downto 0 );
    i_write_addr  : in  std_logic_vector( log2(reg_size)-1 downto 0 );
    i_write_wren  : in  std_logic
    );
end register_file;


architecture behavioral of register_file is
    type register_data_vector is array ( 0 to reg_size-1 ) of std_logic_vector( word_size-1 downto 0 );
    signal s_register_data_vec : register_data_vector;
    
    signal s_register_read_a_addr : integer range 0 to reg_size-1;
    signal s_register_read_b_addr : integer range 0 to reg_size-1;
    signal s_register_write_addr  : integer range 0 to reg_size-1;
    

begin
    s_register_read_a_addr <= to_integer( unsigned( i_read_a_addr ) );
    s_register_read_b_addr <= to_integer( unsigned( i_read_b_addr ) );
    s_register_write_addr  <= to_integer( unsigned( i_write_addr  ) );
  

    register_in : process( clk, i_write_wren, i_write_data, s_register_write_addr )
    begin
        if rising_edge( clk ) and i_write_wren = '1' and s_register_write_addr /= 0 then
            s_register_data_vec( s_register_write_addr ) <= i_write_data;
        end if;
    end process register_in;
    
    
    register_out : process( s_register_read_a_addr, s_register_read_b_addr, s_register_data_vec )
    begin
        if s_register_read_a_addr /= 0 then
            o_read_a_data <= s_register_data_vec( s_register_read_a_addr );
        else
            o_read_a_data <= ( others => '0' );
        end if;

        if s_register_read_b_addr /= 0 then
            o_read_b_data <= s_register_data_vec( s_register_read_b_addr );
        else
            o_read_b_data <= ( others => '0' );
        end if;
    end process register_out;


end behavioral;
