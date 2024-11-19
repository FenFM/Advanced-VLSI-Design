library IEEE;
use IEEE.std_logic_1164.ALL;
use IEEE.numeric_std.ALL;


entity program_counter_tb is
end entity program_counter_tb;


architecture behav of program_counter_tb is
	constant w : integer := 32;
	constant o : integer :=  4;
	constant clk_period : time := 10 ns;

    signal clk_sig, rst_sig, load_sig : STD_LOGIC;
    signal pc_in_sig, pc_out_sig : STD_LOGIC_VECTOR(w-1 DOWNTO 0);
    
    
begin
    uut : entity work.program_counter
    generic map(
        bits   => w,
        offset => o
    )
    port map(
        rst    => rst_sig,
        clk    => clk_sig,
        pc_out => pc_out_sig,
        pc_in  => pc_in_sig,
        load   => load_sig
    );
    

	vclk: process
	begin
		clk_sig <= '1';
		wait for clk_period / 2;
		clk_sig <= '0';
		wait for clk_period / 2;
	end process;    
    
    
    sim : process
    begin
        rst_sig   <= '1';
        pc_in_sig <= STD_LOGIC_VECTOR(to_unsigned(128, w));
        wait for clk_period;
        
        load_sig <= '1';
        wait for clk_period;
        
        rst_sig <= '0';
        wait for clk_period;
        
        load_sig <= '0';
        wait for clk_period;
        
        wait for clk_period;
        wait for clk_period;
        wait for clk_period;
        wait for clk_period;
        wait for clk_period;
        wait for clk_period;
        wait for clk_period;
        wait for clk_period;
        wait for clk_period;
        wait for clk_period;
        
        rst_sig <= '1';
        wait for clk_period;
        
        wait;
    end process sim;

end behav;
