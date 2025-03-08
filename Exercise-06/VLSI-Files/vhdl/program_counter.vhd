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
        clk             : in  std_logic;
        rst             : in  std_logic;
        i_alu_zero_flag : in  std_logic;
        i_mux_signal    : in  std_logic_vector( 1 downto 0 );
        i_immediate     : in  std_logic_vector( bit_width-1 downto 0 );
        i_jalr_value    : in  std_logic_vector( bit_width-1 downto 0 );
        o_adder_one     : out std_logic_vector( bit_width-1 downto 0 );
        o_adder_two     : out std_logic_vector( bit_width-1 downto 0 );
        o_pc            : out std_logic_vector( bit_width-1 downto 0 )
    );
end entity program_counter;


architecture behavior of program_counter is
    constant no_jump    : std_logic_vector( 1 downto 0 ) := "00";  -- no jump
    constant con_jump   : std_logic_vector( 1 downto 0 ) := "01";  -- conditional jump
    constant uncon_jump : std_logic_vector( 1 downto 0 ) := "10";  -- unconditional jump
    constant jalr_jump  : std_logic_vector( 1 downto 0 ) := "11";  -- JALR jump

    type alu is record
        pc_counter : signed( bit_width-1 downto 0 );
    end record;
    signal r, rin : alu;

    signal s_adder_one : signed( bit_width-1 downto 0 );
    signal s_adder_two : signed( bit_width-1 downto 0 );


begin
    o_pc        <= std_logic_vector( r.pc_counter );
    o_adder_one <= std_logic_vector( s_adder_one );
    o_adder_two <= std_logic_vector( s_adder_two );

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


    comb : process ( r, i_mux_signal, i_alu_zero_flag, s_adder_one, s_adder_two, i_jalr_value )
        variable v : alu;
    begin
        v := r;
        v.pc_counter := s_adder_one;
    
        case i_mux_signal is
            when no_jump     =>  
            when con_jump    =>  if i_alu_zero_flag = '1' then
                                     v.pc_counter := s_adder_two;
                                 end if;
            when uncon_jump  =>  v.pc_counter := s_adder_two;
            when jalr_jump   =>  v.pc_counter := signed(i_jalr_value( bit_width-1 downto 1 ) & '0');
            when others      =>  
        end case;

        rin <= v;
    end process comb;


end behavior;
