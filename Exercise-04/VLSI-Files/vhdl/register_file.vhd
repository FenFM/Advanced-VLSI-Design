library IEEE;
use IEEE.std_logic_1164.ALL;
use IEEE.numeric_std.ALL;

use work.misc.ALL;


entity register_file is
    generic(
        constant word_size : integer := 8;  -- bit size of each register
        constant size      : integer := 32  -- # of register
    );
    port(
    addr_a : IN  STD_LOGIC_VECTOR( log2(size)-1 downto 0 ); 
    addr_b : IN  STD_LOGIC_VECTOR( log2(size)-1 downto 0 ); 
    addr_c : IN  STD_LOGIC_VECTOR( log2(size)-1 downto 0 ); 
    data_a : OUT STD_LOGIC_VECTOR( word_size-1 downto 0 ); 
    data_b : OUT STD_LOGIC_VECTOR( word_size-1 downto 0 );  
    data_c : IN  STD_LOGIC_VECTOR( word_size-1 downto 0 );  
    w_en   : IN  STD_LOGIC;
    clk    : IN  STD_LOGIC
    );
end register_file;


architecture Behavioral of register_file is
    constant addr_size : integer := log2(size);

    type register_data_vector is array ( 0 to size-1 ) of std_logic_vector( word_size-1 downto 0 );
    signal s_register_data_vec : register_data_vector;
    
    signal s_addr_a : unsigned( addr_size-1 downto 0 );
    signal s_addr_b : unsigned( addr_size-1 downto 0 );
    signal s_addr_c : unsigned( addr_size-1 downto 0 );
    

begin
    s_addr_a <= unsigned( addr_a );
    s_addr_b <= unsigned( addr_b );
    s_addr_c <= unsigned( addr_c );
    

    register_in : process( clk )
    begin
        if rising_edge( clk ) and  w_en = '1' then
            s_register_data_vec( to_integer( s_addr_c ) ) <= data_c;
        end if;
    end process register_in;
    
    
    register_out : process( addr_a, addr_b )
    begin
        data_a <= s_register_data_vec( to_integer( s_addr_a ) );
        data_b <= s_register_data_vec( to_integer( s_addr_b ) );
    end process register_out;

end Behavioral;
