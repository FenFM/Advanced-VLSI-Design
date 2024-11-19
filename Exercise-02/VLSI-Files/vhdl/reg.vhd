library IEEE;
use IEEE.std_logic_1164.ALL;
use IEEE.numeric_std.ALL;

entity reg is
    generic (
        bits : INTEGER := 32
    );
    port (
        d   : IN  STD_LOGIC_VECTOR(bits-1 DOWNTO 0);
        q   : OUT STD_LOGIC_VECTOR(bits-1 DOWNTO 0);
        clk : IN  STD_LOGIC;
        rst : IN  STD_LOGIC
    );
end entity reg;


architecture behav of reg is


begin

    reg : process (clk, rst)
    begin
        if rising_edge(clk) then
            q <= d;
        end if;
        if rst = '1' then
            q <= (others => '0');
        end if;
    end process reg;

end behav;

