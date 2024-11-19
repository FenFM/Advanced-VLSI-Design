library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use work.isa_riscv.ALL;

entity alu_tb is

end alu_tb;

architecture Behavioral of alu_tb is
    
    signal bits : integer := 32;
    
    signal a, b, c : std_logic_vector(bits-1 downto 0);
	signal instr : std_logic_vector(3 downto 0);
	
begin

uut : entity work.alu
generic map (bits => bits)
port map (a => a, b => b, c => c, op => instr);

process
begin
    -- TODO: Define TB here
end process;

end Behavioral;
