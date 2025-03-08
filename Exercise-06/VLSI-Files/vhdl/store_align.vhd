library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;


entity store_align is
    generic( bit_width : integer := 32 );
    port(
        control : in  std_logic_vector( 2 downto 0 );
        din     : in  std_logic_vector( bit_width-1 downto 0 );
        dout    : out std_logic_vector( bit_width-1 downto 0 )
    );
end store_align;


architecture behavior of store_align is
    constant bit_32  : std_logic_vector( 2 downto 0 ) := "010";
    constant bit_16  : std_logic_vector( 2 downto 0 ) := "001";
    constant ubit_16 : std_logic_vector( 2 downto 0 ) := "101";
    constant bit_8   : std_logic_vector( 2 downto 0 ) := "000";
    constant ubit_8  : std_logic_vector( 2 downto 0 ) := "100";


begin
    process( din, control )
    begin
        case control is
            when bit_32   =>    dout <= din;
            
            when bit_16   =>    if din(15) = '0' then
                                    dout <= x"0000" & din(15 downto 0);
                                else
                                    dout <= x"FFFF" & din(15 downto 0);
                                end if;
           
            when ubit_16  =>    dout <= x"0000" & din(15 downto 0);
            
            when bit_8    =>    if din(7) = '0' then
                                    dout <= x"000000" & din(7 downto 0);
                                else
                                    dout <= x"FFFFFF" & din(7 downto 0);
                                end if;

            when ubit_8   =>    dout <= x"000000" & din(7 downto 0);

            when others   =>    dout <= din;
        end case;
    end process;


end behavior;
