library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;


entity divider is
    port(
        dividend : in  std_logic_vector( 31 downto 0 );
        divisor  : in  std_logic_vector( 31 downto 0 );
        divs     : out std_logic_vector( 31 downto 0 );
        rems     : out std_logic_vector( 31 downto 0 );
        divu     : out std_logic_vector( 31 downto 0 );
        remu     : out std_logic_vector( 31 downto 0 )
    );
end divider;


architecture behavior of divider is
    signal res, resu     : std_logic_vector( 63 downto 0 );
    signal valid, validu : std_logic;
    signal zero, zerou   : std_logic_vector(  0 downto 0 );

    -- dividend / divisor
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

    component unsigned_divider
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
    signed_divider_ins : signed_divider
    port map(
        s_axis_divisor_tdata    =>  divisor,
        s_axis_divisor_tvalid   =>  '1',
        s_axis_dividend_tdata   =>  dividend,
        s_axis_dividend_tvalid  =>  '1',
        m_axis_dout_tdata       =>  res,
        m_axis_dout_tuser       =>  zero,
        m_axis_dout_tvalid      =>  valid
    );

    unsigned_divider_ins : unsigned_divider
    port map(
        s_axis_divisor_tdata    =>  divisor,
        s_axis_divisor_tvalid   =>  '1',
        s_axis_dividend_tdata   =>  dividend,
        s_axis_dividend_tvalid  =>  '1',
        m_axis_dout_tdata       =>  resu,
        m_axis_dout_tuser       =>  zerou,
        m_axis_dout_tvalid      =>  validu
    );
   
    
    process( valid, validu, res, resu )
    begin
        if valid = '1'  and zero = "0" then
            divs <= res( 63 downto 32 );
            rems <= res( 31 downto  0 );    
        else
            divs <= ( others => '0' );
            rems <= ( others => '0' );
        end if;
        
        if validu = '1' and zerou = "0" then
            divu <= resu( 63 downto 32 );
            remu <= resu( 31 downto  0 );
        else
            divu <= ( others => '0' );
            remu <= ( others => '0' );
        end if;
    end process;


end behavior;
