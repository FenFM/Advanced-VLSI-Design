library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;


entity multiplier_tb is
end multiplier_tb;


architecture testbench of multiplier_tb is
    constant clk_period : time := 10 ps;
    signal clk : std_logic;

    signal a_sig      : std_logic_vector( 31 downto 0 );
    signal b_sig      : std_logic_vector( 31 downto 0 );
    signal mul_sig    : std_logic_vector( 31 downto 0 );
    signal mulh_sig   : std_logic_vector( 31 downto 0 );
    signal mulhu_sig  : std_logic_vector( 31 downto 0 );
    signal mulhsu_sig : std_logic_vector( 31 downto 0 );


begin
	vc: process
	begin
		clk <= '1';
		wait for clk_period/2;
		clk <= '0';
		wait for clk_period/2;
	end process;
	
    UUT : entity work.multiplier
    port map(
        a       =>  a_sig,      
        b       =>  b_sig,      
        mul     =>  mul_sig,    
        mulh    =>  mulh_sig,   
        mulhu   =>  mulhu_sig,  
        mulhsu  =>  mulhsu_sig 
    );


    TEST: process
    begin
        a_sig <= x"00000001";
        b_sig <= x"FFFFFFFF";
        wait for clk_period;
        
        a_sig <= x"00000002";
        b_sig <= x"00000002";
        wait for clk_period;
        
        a_sig <= x"FFFFFFFF";
        b_sig <= x"00000002";
        wait for clk_period;
        
        a_sig <= x"00000000";
        b_sig <= x"00000001";
        wait for clk_period;
        
        wait;
    end process;


end testbench;
