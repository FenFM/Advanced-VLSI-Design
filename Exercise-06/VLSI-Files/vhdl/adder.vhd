library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;


entity adder is
    port(
        a     : in  std_logic_vector( 31 downto 0 ); 
        b     : in  std_logic_vector( 31 downto 0 );
        adds  : out std_logic_vector( 31 downto 0 );
        addu  : out std_logic_vector( 31 downto 0 );
        addsu : out std_logic_vector( 31 downto 0 );
        add33 : out std_logic_vector( 32 downto 0 );
        subs  : out std_logic_vector( 31 downto 0 );
        subu  : out std_logic_vector( 31 downto 0 );
        subsu : out std_logic_vector( 31 downto 0 )
    );
end adder;


architecture behavior of adder is
    component signed_adder
        port(
            A   : in  std_logic_vector( 31 downto 0 );
            B   : in  std_logic_vector( 31 downto 0 );
            ADD : in  std_logic;
            S   : out std_logic_vector( 31 downto 0 )
        );
    end component;
    
    component unsigned_adder
        port(
            A   : in  std_logic_vector( 31 downto 0 );
            B   : in  std_logic_vector( 31 downto 0 );
            ADD : in  std_logic;
            S   : out std_logic_vector( 31 downto 0 )
        );
    end component;
    
    component un_signed_adder
        port(
            A   : in  std_logic_vector( 31 downto 0 );
            B   : in  std_logic_vector( 31 downto 0 );
            ADD : in  std_logic;
            S   : out std_logic_vector( 31 downto 0 )
        );
    end component;
    
    component signed_adder_33
        port(
            A   : in  std_logic_vector( 31 downto 0 );
            B   : in  std_logic_vector( 31 downto 0 );
            S   : out std_logic_vector( 32 downto 0 )
        );
    end component;


begin
    signed_adder_ins : signed_adder
    port map(
        A    =>  a,
        B    =>  b,
        ADD  => '1',
        S    =>  adds
    );

    unsigned_adder_ins : unsigned_adder
    port map(
        A    =>  a,
        B    =>  b,
        ADD  => '1',
        S    =>  addu
    );

    un_signed_adder_ins : un_signed_adder
    port map(
        A    =>  a,
        B    =>  b,
        ADD  => '1',
        S    =>  addsu
    );

    signed_adder_33_ins : signed_adder_33
    port map(
        A    =>  a,
        B    =>  b,
        S    =>  add33
    );

    signed_subtractor_ins : signed_adder
    port map(
        A    =>  a,
        B    =>  b,
        ADD  => '0',
        S    =>  subs
    );

    unsigned_subtractor_ins : unsigned_adder
    port map(
        A    =>  a,
        B    =>  b,
        ADD  => '0',
        S    =>  subu
    );

    un_signed_subtractor_ins : un_signed_adder
    port map(
        A    =>  a,
        B    =>  b,
        ADD  => '0',
        S    =>  subsu
    );

end behavior;
