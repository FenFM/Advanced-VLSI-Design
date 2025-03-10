library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;


entity multiplier is
    port(
        a      : in  std_logic_vector( 31 downto 0 );
        b      : in  std_logic_vector( 31 downto 0 );
        mul    : out std_logic_vector( 31 downto 0 );
        mulh   : out std_logic_vector( 31 downto 0 );
        mulhu  : out std_logic_vector( 31 downto 0 );
        mulhsu : out std_logic_vector( 31 downto 0 )
    );
end multiplier;


architecture behavior of multiplier is
    signal res, resu, ressu : std_logic_vector( 63 downto 0 );

    component signed_multiplier
        port(
            A : in  std_logic_vector( 31 downto 0 );
            B : in  std_logic_vector( 31 downto 0 );
            P : out std_logic_vector( 63 downto 0 )
        );
    end component;

    component unsigned_multiplier
        port(
            A : in  std_logic_vector( 31 downto 0 );
            B : in  std_logic_vector( 31 downto 0 );
            P : out std_logic_vector( 63 downto 0 )
        );
    end component;

    component un_signed_multiplier
        port(
            A : in  std_logic_vector( 31 downto 0 );
            B : in  std_logic_vector( 31 downto 0 );
            P : out std_logic_vector( 63 downto 0 )
        );
    end component;


begin
--    signed_multiplier_ins : signed_multiplier
--    port map(
--        A  =>  a,
--        B  =>  b,
--        P  =>  res
--    );

--    unsigned_multiplier_ins : unsigned_multiplier
--    port map(
--        A  =>  a,
--        B  =>  b,
--        P  =>  resu
--    );

    un_signed_multiplier_ins : un_signed_multiplier
    port map(
        A  =>  a,
        B  =>  b,
        P  =>  ressu
    );


    res   <= std_logic_vector(  signed(a) * signed(b));
    resu  <= std_logic_vector(unsigned(a) * unsigned(b));
--    ressu <= ( others => '0' );

    mul    <= res  ( 31 downto  0 );
    mulh   <= res  ( 63 downto 32 );
    mulhu  <= resu ( 63 downto 32 );
    mulhsu <= ressu( 63 downto 32 ); 


end behavior;
