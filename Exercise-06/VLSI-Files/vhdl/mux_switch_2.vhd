library IEEE;
use IEEE.std_logic_1164.ALL;
use IEEE.numeric_std.ALL;


entity mux_switch_2 is
    generic ( bit_width : integer := 32 );
    port (
        s : in  std_logic;
        a : in  std_logic_vector( bit_width-1 downto 0 );
        b : in  std_logic_vector( bit_width-1 downto 0 );
        o : out std_logic_vector( bit_width-1 downto 0 )
    );
end entity mux_switch_2;


architecture structure of mux_switch_2 is

begin
    process( s, a, b )
    begin
        case s is
            when '0' =>     o <= a;
            when '1' =>     o <= b;
            when others =>  o <= a;
        end case;
    end process;


end structure;
