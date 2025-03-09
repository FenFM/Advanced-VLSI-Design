library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;


entity divider is
    port(
        divisor  : in  std_logic_vector( 31 downto 0 );
        dividend : in  std_logic_vector( 31 downto 0 );
        divs     : out std_logic_vector( 31 downto 0 );
        rems     : out std_logic_vector( 31 downto 0 );
        divu     : out std_logic_vector( 31 downto 0 );
        remu     : out std_logic_vector( 31 downto 0 )
    );
end divider;


architecture behavior of divider is
    signal resa, resb : std_logic_vector( 63 downto 0 );
    signal vala, valb : std_logic;

    component signed_divider
        port(
            s_axis_divisor_tdata   : in  std_logic_vector( 31 downto 0 );
            s_axis_divisor_tvalid  : in  std_logic;
            s_axis_dividend_tdata  : in  std_logic_vector( 31 downto 0 );
            s_axis_dividend_tvalid : in  std_logic;
            m_axis_dout_tdata      : out std_logic_vector( 63 downto 0 );
            m_axis_dout_tvalid     : out  std_logic
        );
    end component;

    component unsigned_divider
        port(
            s_axis_divisor_tdata   : in  std_logic_vector( 31 downto 0 );
            s_axis_divisor_tvalid  : in  std_logic;
            s_axis_dividend_tdata  : in  std_logic_vector( 31 downto 0 );
            s_axis_dividend_tvalid : in  std_logic;
            m_axis_dout_tdata      : out std_logic_vector( 63 downto 0 );
            m_axis_dout_tvalid     : out  std_logic
        );
    end component;


begin
    signed_divider_ins : signed_divider
    port map(
        s_axis_divisor_tdata    =>  divisor,
        s_axis_divisor_tvalid   =>  '1',
        s_axis_dividend_tdata   =>  dividend,
        s_axis_dividend_tvalid  =>  '1',
        m_axis_dout_tdata       =>  resa
--        m_axis_dout_tvalid       =>  '1'
    );

    unsigned_divider_ins : unsigned_divider
    port map(
        s_axis_divisor_tdata    =>  divisor,
        s_axis_divisor_tvalid   =>  '1',
        s_axis_dividend_tdata   =>  dividend,
        s_axis_dividend_tvalid  =>  '1',
        m_axis_dout_tdata       =>  resb
--        m_axis_dout_tvalid       =>  '1'
    );

    divs <= resa( 63 downto 32 );
    rems <= resa( 31 downto  0 );
    divu <= resb( 63 downto 32 );
    remu <= resb( 31 downto  0 );


end behavior;
