library IEEE;
use IEEE.std_logic_1164.ALL;
use IEEE.numeric_std.ALL;


entity my_register is
    generic( constant word_size : integer := 8 );
    port(
        clk     : in  std_logic;
        reg_in  : in  std_logic_vector( word_size-1 downto 0 );
        reg_out : out std_logic_vector( word_size-1 downto 0 )
    );
end my_register;


architecture Behavioral of my_register is

begin
    process( clk )
    begin
        if rising_edge( clk ) then
            reg_out <= reg_in;
        end if;
    end process;

end Behavioral;
