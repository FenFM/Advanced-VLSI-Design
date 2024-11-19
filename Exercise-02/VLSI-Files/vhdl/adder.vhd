library IEEE;
use IEEE.std_logic_1164.ALL;
use IEEE.numeric_std.ALL;


entity adder is
    generic (
        bits : integer := 32
    );
    port (
        a : IN  STD_LOGIC_VECTOR (bits-1 DOWNTO 0);
        b : IN  STD_LOGIC_VECTOR (bits-1 DOWNTO 0);
        c : OUT STD_LOGIC_VECTOR (bits-1 DOWNTO 0)
    );
end entity adder;


architecture behav of adder is

begin
    comb : process (a, b)
        variable v_a, v_b, v_c : SIGNED (bits-1 DOWNTO 0);
    begin
        v_a := signed(a);
        v_b := signed(b);
        v_c := v_a + v_b;
        c <= std_logic_vector(v_c);
    end process;


end behav;
