library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;


entity divider_tb is
end divider_tb;


architecture testbench of divider_tb is
    constant clk_period : time := 10 ps;
    signal clk : std_logic;
    
    signal s_axis_divisor_tdata_sig   : std_logic_vector( 31 downto 0 );  
    signal s_axis_divisor_tvalid_sig  : std_logic;                        
    signal s_axis_dividend_tdata_sig  : std_logic_vector( 31 downto 0 );  
    signal s_axis_dividend_tvalid_sig : std_logic;                        
    signal m_axis_dout_tdata_sig      : std_logic_vector( 63 downto 0 );  
    signal m_axis_dout_tuser_sig      : std_logic_vector(  0 downto 0 );
    signal m_axis_dout_tvalid_sig     : std_logic;
    
    signal div_res : std_logic_vector( 31 downto 0 );
    signal rem_res : std_logic_vector( 31 downto 0 );
    
    component signed_divider
        port(
            s_axis_divisor_tdata   : in  std_logic_vector( 31 downto 0 );
            s_axis_divisor_tvalid  : in  std_logic;
            s_axis_dividend_tdata  : in  std_logic_vector( 31 downto 0 );
            s_axis_dividend_tvalid : in  std_logic;
            m_axis_dout_tdata      : out std_logic_vector( 63 downto 0 );
            m_axis_dout_tuser      : out std_logic_vector(  0 downto 0 );
            m_axis_dout_tvalid     : out std_logic
        );
    end component;


begin
    div_res <= m_axis_dout_tdata_sig( 63 downto 32 );
    rem_res <= m_axis_dout_tdata_sig( 31 downto  0 );

	vc: process
	begin
		clk <= '1';
		wait for clk_period/2;
		clk <= '0';
		wait for clk_period/2;
	end process;

    UUT : signed_divider
    port map(
        s_axis_divisor_tdata    =>  s_axis_divisor_tdata_sig,
        s_axis_divisor_tvalid   =>  s_axis_divisor_tvalid_sig,
        s_axis_dividend_tdata   =>  s_axis_dividend_tdata_sig,
        s_axis_dividend_tvalid  =>  s_axis_dividend_tvalid_sig,
        m_axis_dout_tdata       =>  m_axis_dout_tdata_sig,
        m_axis_dout_tuser       =>  m_axis_dout_tuser_sig,
        m_axis_dout_tvalid      =>  m_axis_dout_tvalid_sig    
    );
    
    
    TEST: process
    begin
        s_axis_divisor_tdata_sig   <= x"00000000";
        s_axis_divisor_tvalid_sig  <= '1';
        s_axis_dividend_tdata_sig  <= x"0000000A";
        s_axis_dividend_tvalid_sig <= '1';
        
        wait for clk_period;
        wait;
    end process;


end testbench;