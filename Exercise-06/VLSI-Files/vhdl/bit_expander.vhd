library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

use work.generic_header.ALL;
use work.misc.ALL;


entity bit_expander is
    generic( 
        bit_width_in  : integer :=  8;
        bit_width_out : integer := 32
        );
    port(
        din  : in  std_logic_vector( bit_width_in-1  downto 0 );
        dout : out std_logic_vector( bit_width_out-1 downto 0 )
    );
end bit_expander;


architecture behavior of bit_expander is


begin
    process( din )
    begin
        dout <= ( others => '0' );
        dout( bit_width_in-1 downto 0) <= din;
    end process;


end behavior;
