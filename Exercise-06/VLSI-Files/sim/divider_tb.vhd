library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;


entity divider_tb is
end divider_tb;


architecture testbench of divider_tb is
    constant clk_period : time := 10 ps;
    signal clk : std_logic;

    signal divisor_sig  : std_logic_vector( 31 downto 0 );
    signal dividend_sig : std_logic_vector( 31 downto 0 );
    signal divs_sig     : std_logic_vector( 31 downto 0 );
    signal rems_sig     : std_logic_vector( 31 downto 0 );
    signal divu_sig     : std_logic_vector( 31 downto 0 );
    signal remu_sig     : std_logic_vector( 31 downto 0 );


begin
	vc: process
	begin
		clk <= '1';
		wait for clk_period/2;
		clk <= '0';
		wait for clk_period/2;
	end process;
	
	UUT : entity work.divider
    port map(
        divisor   =>  divisor_sig,
        dividend  =>  dividend_sig,
        divs      =>  divs_sig,
        rems      =>  rems_sig,
        divu      =>  divu_sig,    
        remu      =>  remu_sig    
    );
    
    
    -- dividend / divisor
    TEST: process
    begin
        dividend_sig <= x"0000000A";
        divisor_sig  <= x"00000002";
        wait for clk_period;
        
        dividend_sig <= x"0000000A";
        divisor_sig  <= x"00000004";
        wait for clk_period;
        
        dividend_sig <= x"0000000A";
        divisor_sig  <= x"00000005";
        wait for clk_period;
        
        dividend_sig <= x"00000002";
        divisor_sig  <= x"00000000";
        wait for clk_period;
        
        dividend_sig <= x"00000002";
        divisor_sig  <= x"FFFFFFFF";
        wait for clk_period;
        
        wait;
    end process;


end testbench;