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
        i_enable        : in  std_logic;
        i_alu_zero_flag : in  std_logic;
        i_mux_signal    : in  std_logic_vector( 1 downto 0 );
        i_immediate     : in  std_logic_vector( bit_width-1 downto 0 );
        i_jalr_value    : in  std_logic_vector( bit_width-1 downto 0 );
        o_adder_one_reg : out std_logic_vector( bit_width-1 downto 0 );
        o_adder_two_reg : out std_logic_vector( bit_width-1 downto 0 );
        o_pc            : out std_logic_vector( bit_width-1 downto 0 )
    );
end entity program_counter;


architecture behavior of program_counter is
    constant no_jump    : std_logic_vector( 1 downto 0 ) := "00";  -- no jump
    constant con_jump   : std_logic_vector( 1 downto 0 ) := "01";  -- conditional jump
    constant uncon_jump : std_logic_vector( 1 downto 0 ) := "10";  -- unconditional jump
    constant jalr_jump  : std_logic_vector( 1 downto 0 ) := "11";  -- JALR jump

    type alu is record
        pc_counter : std_logic_vector( bit_width-1 downto 0 );
    end record;
    signal r, rin : alu;

    signal s_adder_one : std_logic_vector( bit_width-1 downto 0 );
    signal s_adder_two : std_logic_vector( bit_width-1 downto 0 );
    signal s_pc_offset : std_logic_vector( bit_width-1 downto 0 );
    
    type shift_reg_vec is array( 3 downto 0 ) of std_logic_vector( bit_width-1 downto 0 );
    signal s_pc_counter_reg : shift_reg_vec;
    signal s_adder_one_reg  : shift_reg_vec;
    signal s_adder_two_reg  : shift_reg_vec;
    
    component un_signed_adder
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


begin
    o_pc <= r.pc_counter;
    o_adder_one_reg <= s_adder_one_reg( 3 );
    o_adder_two_reg <= s_adder_two_reg( 1 );
    
    s_pc_offset <= std_logic_vector(to_unsigned(pc_offset, 32));


    -- r.pc_counter + pc_offset
    adder_one_ins : unsigned_adder
    port map(
        A    =>  r.pc_counter, 
        B    =>  s_pc_offset,
        ADD  =>  '1',
        S    =>  s_adder_one 
    );

    -- unsigned( r.pc_counter ) + signed( i_immediate )
    adder_two_ins : un_signed_adder
    port map(
        A    =>  i_immediate, 
        B    =>  s_pc_counter_reg(1),
        ADD  =>  '1',
        S    =>  s_adder_two 
    );

--    s_adder_one <= std_logic_vector(unsigned(r.pc_counter) + pc_offset);
--    s_adder_two <= std_logic_vector(signed(s_pc_counter_reg(1)) + signed(i_immediate));


    reg : process ( clk, rst, i_enable )
    begin
        if rst = '1' then
            r.pc_counter <= (others => '0');
        end if;
        if rising_edge( clk ) and i_enable = '1' then
            r <= rin;
        end if;
    end process reg;


    comb : process ( r, i_mux_signal, i_alu_zero_flag, s_adder_one, s_adder_two_reg(0), i_jalr_value )
        variable v : alu;
    begin
        v := r;
        
        v.pc_counter := s_adder_one;
        case i_mux_signal is
            when no_jump     =>  
            when con_jump    =>  if i_alu_zero_flag = '1' then
                                    v.pc_counter := s_adder_two_reg( 0 );
                                 end if;
            when uncon_jump  =>  v.pc_counter := s_adder_two_reg( 0 );
            when jalr_jump   =>  v.pc_counter := i_jalr_value( bit_width-1 downto 1 ) & '0';
            when others      =>  
        end case;

        rin <= v;
    end process comb;
    
    
    shift_register : process( clk )
    begin
        if rising_edge( clk ) then
            s_pc_counter_reg <= s_pc_counter_reg( s_pc_counter_reg'high-1 downto s_pc_counter_reg'low) & r.pc_counter;
            s_adder_one_reg  <= s_adder_one_reg( s_adder_one_reg'high-1 downto s_adder_one_reg'low) & s_adder_one;
            s_adder_two_reg  <= s_adder_two_reg( s_adder_two_reg'high-1 downto s_adder_two_reg'low) & s_adder_two;
        end if;
    end process;


end behavior;
