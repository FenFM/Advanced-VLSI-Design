library IEEE;
use IEEE.std_logic_1164.ALL;
use IEEE.numeric_std.ALL;


entity mux_switch is
    generic ( bit_width : integer := 32 );
    port (
        i_muxer : in  std_logic;
        i_din_a : in  std_logic_vector( bit_width-1 downto 0 );
        i_din_b : in  std_logic_vector( bit_width-1 downto 0 );
        o_dout  : out std_logic_vector( bit_width-1 downto 0 )
    );
end entity mux_switch;


architecture structure of mux_switch is

begin
    process( i_muxer )
    begin
        case i_muxer is
            when '0' =>
                o_dout <= i_din_a;
            when '1' =>
                o_dout <= i_din_b;
        end case;
    end process;


end structure;
