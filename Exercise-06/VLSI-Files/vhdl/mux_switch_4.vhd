library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;


entity mux_switch_4 is
    generic( bit_width : integer := 32 );
    port(
        s : in  std_logic_vector(           1 downto 0 );
        a : in  std_logic_vector( bit_width-1 downto 0 );
        b : in  std_logic_vector( bit_width-1 downto 0 );
        c : in  std_logic_vector( bit_width-1 downto 0 );
        d : in  std_logic_vector( bit_width-1 downto 0 );
        o : out std_logic_vector( bit_width-1 downto 0 )
    );
end mux_switch_4;


architecture behavior of mux_switch_4 is


begin
    process( all )
    begin
        case s is
            when "00"   =>  o <= a;
            when "01"   =>  o <= b;
            when "10"   =>  o <= c;
            when "11"   =>  o <= d;
            when others =>  o <= a;
        end case;
    end process;

end behavior;
