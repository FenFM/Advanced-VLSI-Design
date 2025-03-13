library IEEE;
use IEEE.std_logic_1164.ALL;
use IEEE.numeric_std.ALL;
use work.isa_riscv.ALL;


entity alu is
	generic ( bit_width : integer := 32 );
	port (
        i_inverse_zero  : in std_logic;
        i_alu_bypass    : in std_logic;

		i_operation     : in  std_logic_vector( 4 downto 0 );
		i_operand_a     : in  std_logic_vector( bit_width-1 downto 0 );
		i_operand_b     : in  std_logic_vector( bit_width-1 downto 0 );

		o_result        : out std_logic_vector( bit_width-1 downto 0 );

        o_zero_flag     : out std_logic;
        o_overflow_flag : out std_logic
	);
end entity alu;


architecture behavior of alu is   
    component signed_adder
    port(
        A   : in  std_logic_vector( 31 downto 0 );
        B   : in  std_logic_vector( 31 downto 0 );
        ADD : in  std_logic;
        S   : out std_logic_vector( 31 downto 0 )
    );
    end component;

    signal s_result : std_logic_vector( bit_width-1 downto 0 );

    signal signed_a, signed_b     : signed( bit_width-1 downto 0 );
    signal unsigned_a, unsigned_b : unsigned( bit_width-1 downto 0 );

    signal std_b_cut  : std_logic_vector( 4 downto 0 );
    signal sll_uint_b : integer range 0 to 31;
    
    signal add_src : std_logic;

    signal add_res  : std_logic_vector( bit_width-1 downto 0 );
    signal and_res  : std_logic_vector( bit_width-1 downto 0 );
    signal or_res   : std_logic_vector( bit_width-1 downto 0 );
    signal xor_res  : std_logic_vector( bit_width-1 downto 0 );
    signal sll_res  : std_logic_vector( bit_width-1 downto 0 );
    signal srl_res  : std_logic_vector( bit_width-1 downto 0 );
    signal sra_res  : std_logic_vector( bit_width-1 downto 0 );
    signal slt_res  : std_logic_vector( bit_width-1 downto 0 );
    signal sltu_res : std_logic_vector( bit_width-1 downto 0 );

    signal mul_res    : std_logic_vector( bit_width-1 downto 0 );
    signal mulh_res   : std_logic_vector( bit_width-1 downto 0 );
    signal mulhu_res  : std_logic_vector( bit_width-1 downto 0 );
    signal mulhsu_res : std_logic_vector( bit_width-1 downto 0 );
    signal div_res    : std_logic_vector( bit_width-1 downto 0 );
    signal divu_res   : std_logic_vector( bit_width-1 downto 0 );
    signal rem_res    : std_logic_vector( bit_width-1 downto 0 );
    signal remu_res   : std_logic_vector( bit_width-1 downto 0 );


begin
    o_result <= s_result;

    signed_a   <= signed( i_operand_a );
    signed_b   <= signed( i_operand_b );
    unsigned_a <= unsigned( i_operand_a );
    unsigned_b <= unsigned( i_operand_b );

    std_b_cut  <= i_operand_b( 4 downto 0 );
    sll_uint_b <= to_integer( unsigned( std_b_cut ));


    -- addition and subtraction
    signed_adder_ins : signed_adder
    port map( 
        A    =>  i_operand_a, 
        B    =>  i_operand_b, 
        ADD  =>  add_src,
        S    =>  add_res 
    );
    
    -- add and sub only for testbench
--    process( add_src, i_operand_a, i_operand_b )
--    begin
--        case add_src is
--            when '0'     =>  add_res <= std_logic_vector(signed(i_operand_a) - signed(i_operand_b));
--            when others  =>  add_res <= std_logic_vector(signed(i_operand_a) + signed(i_operand_b));
--        end case;
--    end process;
     
    -- overflow flag
    overflow_detection : process( add_src, add_res )
    begin
        case add_src is
            when '0'     =>  o_overflow_flag <= not add_res( bit_width-1 );  -- sub: overflow when MSB == 0
            when others  =>  o_overflow_flag <= add_res( bit_width-1 );      -- add: overflow when MSB == 1
        end case;
    end process overflow_detection;
    
    -- zero flag
    o_zero_flag <= ( not ( or s_result )) xor i_inverse_zero;

    
    -- and
    and_res <= i_operand_a and i_operand_b;
    
    -- or
    or_res  <= i_operand_a or  i_operand_b;
    
    -- xor
    xor_res <= i_operand_a xor i_operand_b;

    -- shift left logical
    sll_res <= std_logic_vector( shift_left ( unsigned_a, sll_uint_b ));

    -- shift right logical
    srl_res <= std_logic_vector( shift_right( unsigned_a, sll_uint_b ));

    -- shift right arithmetic
    sra_res <= std_logic_vector( shift_right(   signed_a, sll_uint_b ));


    -- set less than
    process( signed_a, signed_b )
        variable temp : std_logic_vector( 30 downto 0 ) := ( others => '0' );
    begin
        if signed_a < signed_b then
            slt_res <= temp & '1';
        else
            slt_res <= temp & '0';
        end if;
    end process;


    -- set less than unsigned
    process( unsigned_a, unsigned_b )
        variable temp : std_logic_vector( 30 downto 0 ) := ( others => '0' );
    begin
        if unsigned_a < unsigned_b then
            sltu_res <= temp & '1';
        else
            sltu_res <= temp & '0';
        end if;
    end process;
    

    -- multiplication
    multiplier_ins : entity work.multiplier
    port map(
        a       =>  i_operand_a,
        b       =>  i_operand_b,
        mul     =>  mul_res,
        mulh    =>  mulh_res,
        mulhu   =>  mulhu_res,
        mulhsu  =>  mulhsu_res
    );


    -- division : dividend/divisor  -  rs1/rs2
    divider_ins : entity work.divider
    port map(
        dividend  =>  i_operand_a,
        divisor   =>  i_operand_b,
        divs      =>  div_res,
        rems      =>  rem_res,
        divu      =>  divu_res,
        remu      =>  remu_res
    );


    operation_mux_switch : process( all )
    begin
        add_src <= '1';
        case i_operation is
            when opcode_ADD     =>  s_result <= add_res;
            when opcode_SUB     =>  s_result <= add_res;
                                    add_src  <= '0';
            when opcode_AND     =>  s_result <= and_res;
            when opcode_OR      =>  s_result <= or_res;
            when opcode_XOR     =>  s_result <= xor_res;
            when opcode_SLL     =>  s_result <= sll_res;
            when opcode_SRL     =>  s_result <= srl_res;
            when opcode_SRA     =>  s_result <= sra_res;
            when opcode_SLT     =>  s_result <= slt_res;
            when opcode_SLTU    =>  s_result <= sltu_res;
            when opcode_MUL     =>  s_result <= mul_res;
            when opcode_MULH    =>  s_result <= mulh_res;
            when opcode_MULHSU  =>  s_result <= mulhsu_res;
            when opcode_MULHU   =>  s_result <= mulhu_res;
            when opcode_DIV     =>  s_result <= div_res;
            when opcode_DIVU    =>  s_result <= divu_res;
            when opcode_REM     =>  s_result <= rem_res;
            when opcode_REMU    =>  s_result <= remu_res;
            when others         =>  s_result <= ( others => '0' );
        end case;

        if i_alu_bypass = '1' then
            s_result <= i_operand_b;
        end if;

    end process operation_mux_switch;
    

end behavior;
