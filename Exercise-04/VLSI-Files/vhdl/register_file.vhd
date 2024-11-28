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
    addr_a : IN  STD_LOGIC; 
    addr_b : IN  STD_LOGIC; 
    addr_c : IN  STD_LOGIC; 
    data_a : IN  STD_LOGIC_VECTOR( word_size-1 downto 0 ); 
    data_b : IN  STD_LOGIC_VECTOR( word_size-1 downto 0 );  
    data_c : IN  STD_LOGIC_VECTOR( word_size-1 downto 0 );  
    w_en   : IN  STD_LOGIC;
    clk    : IN  STD_LOGIC
    );
end register_file;


architecture Behavioral of register_file is


begin
    reg_gen : for i in 0 to size-1 generate
        my_register_ins : entity work.my_register
        generic map( word_size  =>  word_size )
        port map(
            clk      =>  clk,
            reg_in   =>  data_c,
            reg_out  =>  
        );
    end generate reg_gen;


end Behavioral;
