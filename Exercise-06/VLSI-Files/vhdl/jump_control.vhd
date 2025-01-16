library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;


entity jump_control is
    generic( bit_width : integer := 32 );
    port(
        din  : std_logic_vector( bit_width-1 downto 0 );
        dout : std_logic_vector( bit_width-1 downto 0 )
    );
end jump_control;


architecture behavior of jump_control is
    signal s_din : std_logic_vector( 19 downto 0 );


begin
    s_din <= din( 19 downto 0 );



end behavior;
