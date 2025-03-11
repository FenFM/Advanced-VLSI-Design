library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;


entity adder_tb is
end adder_tb;


architecture testing of adder_tb is
    constant clk_period : time := 10 ps;
    signal clk : std_logic;
    
    component un_signed_adder
        port(
            A   : in  std_logic_vector( 31 downto 0 );
            B   : in  std_logic_vector( 31 downto 0 );
            ADD : in  std_logic;
            S   : out std_logic_vector( 31 downto 0 )
        );
    end component;

    signal A_sig   : std_logic_vector( 31 downto 0 );
    signal B_sig   : std_logic_vector( 31 downto 0 );
    signal ADD_sig : std_logic;
    signal S_sig   : std_logic_vector( 31 downto 0 );


begin
	vc: process
	begin
		clk <= '1';
		wait for clk_period/2;
		clk <= '0';
		wait for clk_period/2;
	end process;
	
	UUT : un_signed_adder
	port map(
         A    =>  A_sig,  
         B    =>  B_sig,  
         ADD  =>  ADD_sig,
         S    =>  S_sig  
	);


    TEST : process
    begin
        A_sig   <= x"00000001";
        B_sig   <= x"00000002";
        ADD_sig <= '1';
        wait for clk_period;
        
        A_sig   <= x"0000000A";
        B_sig   <= x"0000000A";
        ADD_sig <= '1';
        wait for clk_period;
        
        A_sig   <= x"00000001";
        B_sig   <= x"00000001";
        ADD_sig <= '0';
        wait for clk_period;
        
        A_sig   <= x"00000002";
        B_sig   <= x"00000004";
        ADD_sig <= '0';
        wait for clk_period;
    
        wait;
    end process;

end testing;
