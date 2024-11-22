library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use work.isa_riscv.ALL;

entity alu_tb is
end alu_tb;


architecture Behavioral of alu_tb is
    constant clk_period : time := 10 ns;

    signal bits : integer := 8;
    
    signal a, b, c : std_logic_vector(bits-1 downto 0);
    signal comparison : std_logic_vector(bits-1 downto 0);
	signal instr : std_logic_vector(3 downto 0);
	
	
begin
    uut : entity work.alu
    generic map (bits => bits)
    port map (a => a, b => b, c => c, op => instr);

    TEST : process
    begin
        a <= std_logic_vector(to_signed(8, bits));
        b <= std_logic_vector(to_signed(1, bits));
        comparison <= (others => '0');
        instr <= "1111";
        wait for clk_period;
    
        -- adder test
        instr <= "0000";
        comparison <= std_logic_vector(signed(a) + signed(b));
        wait for clk_period;
        
        -- sub test
        instr <= "0001";
        comparison <= std_logic_vector(signed(a) - signed(b));
        wait for clk_period;
        
        -- and test
        instr <= "0010";
        for i in 0 to bits-1 loop
            comparison(i) <= a(i) and b(i);
        end loop;
        wait for clk_period;
        
        -- or test
        instr <= "0100";
        for i in 0 to bits-1 loop
            comparison(i) <= a(i) or b(i);
        end loop;
        wait for clk_period;
        
        -- xor test
        instr <= "1000";
        for i in 0 to bits-1 loop
            comparison(i) <= a(i) xor b(i);
        end loop;
        wait for clk_period;
        
        -- fail safe test
        instr <= "1111";
        comparison <= (others => '0');
        wait;
        
    end process;

end Behavioral;
