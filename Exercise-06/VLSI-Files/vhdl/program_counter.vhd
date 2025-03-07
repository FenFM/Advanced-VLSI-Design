library IEEE;
use IEEE.std_logic_1164.ALL;
use IEEE.numeric_std.ALL;

use work.misc.ALL;


entity program_counter is
    generic(
        bit_width : integer := 32;
        pc_offset : integer := 2
    );

    port(
        clk          : in  std_logic;
        rst          : in  std_logic;
        i_immediate  : in  std_logic_vector( bit_width-1 downto 0 );
        i_reg_a      : in  std_logic_vector( bit_width-1 downto 0 );
        i_jump       : in  std_logic;
        i_jarl_jump  : in  std_logic;
        i_jarl_value : in  std_logic_vector( bit_width-1 downto 0 );
        o_adder_one  : out std_logic_vector( bit_width-1 downto 0 );
        o_pc         : out std_logic_vector( bit_width-1 downto 0 )
    );

end entity program_counter;


architecture behavior of program_counter is
    type alu is record
        pc_counter : signed( bit_width-1 downto 0 );
    end record;
    signal r, rin : alu;

    signal s_adder_one   : signed( bit_width-1 downto 0 );
    signal s_adder_two   : signed( bit_width-1 downto 0 );


begin
    o_pc        <= std_logic_vector( r.pc_counter );
    o_adder_one <= std_logic_vector( s_adder_one );

    s_adder_one   <= r.pc_counter + pc_offset;
    s_adder_two   <= r.pc_counter + signed( i_immediate );


    reg : process ( clk, rst )
    begin
        if rst = '1' then
            r.pc_counter <= (others => '0');

        elsif rising_edge( clk ) then
            r <= rin;

        end if;
    end process reg;


    comb : process ( r, i_jump, i_jarl_jump, i_jarl_value, s_adder_one, s_adder_two )
        variable v : alu;
    begin
        v := r;
    
        if i_jump = '0' and i_jarl_jump = '0' then
            v.pc_counter := s_adder_one;

        elsif i_jump = '1' then
            v.pc_counter := s_adder_two;

        elsif i_jarl_jump = '1' then
            v.pc_counter := signed( i_jarl_value( bit_width-1 downto 1 ) & '0' );
        end if;

        rin <= v;
    end process comb;


end behavior;
