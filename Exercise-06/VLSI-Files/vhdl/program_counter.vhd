library IEEE;
use IEEE.std_logic_1164.ALL;
use IEEE.numeric_std.ALL;

use work.misc.ALL;


entity program_counter is
    generic(
        bit_width : integer := 32;
        mem_size  : integer := 128;
        pc_offset : integer := 4
    );

    port(
        clk          : in  std_logic;
        rst          : in  std_logic;
        i_immediate  : in  std_logic_vector( 31 downto 0 );
        i_reg_a      : in  std_logic_vector( 31 downto 0 );
        i_jump       : in  std_logic;
        i_jarl_jump  : in  std_logic;
        o_adder_one  : out std_logic_vector( log2(mem_size)-1 downto 0 );
        o_pc         : out std_logic_vector( log2(mem_size)-1 downto 0 );
    );

end entity program_counter;


architecture behavior of program_counter is
    type alu is record
        pc_counter : signed( log2(mem_size)-1 downto 0 );
    end record;
    signal r, rin : alu;

    signal s_adder_one   : signed( log2(mem_size)-1 downto 0 );
    signal s_adder_two   : signed( log2(mem_size)-1 downto 0 );
    signal s_adder_three : signed( log2(mem_size)-1 downto 0 );


begin
    o_pc_dout   <= std_logic_vector( r.pc_counter );
    o_adder_one <= std_logic_vector( r.s_adder_one );

    s_adder_one   <= r.pc_counter + pc_offset;
    s_adder_two   <= r.pc_counter + signed( i_immediate );
    s_adder_three <= signed( i_reg_a ) + signed( i_immediate );


    reg : process ( clk, rst )
    begin
        if rst = '1' then
            r.pc_counter <= (others => '0');

        elsif rising_edge( clk ) then
            r <= rin;

        end if;
    end process reg;


    comb : process ( r, i_jump )
        variable v : alu;
    begin
        if i_jump = '0' and i_jarl_jump = '0' then
            v.pc_counter := s_adder_one;

        elsif i_jump = '1' then
            v.pc_counter := s_adder_two;

        elsif i_jarl_jump = '1' then
            v.pc_counter := s_adder_three;
        end if;

        rin <= v;
    end process comb;


end behavior;
