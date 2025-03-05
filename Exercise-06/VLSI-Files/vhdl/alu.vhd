library IEEE;
use IEEE.std_logic_1164.ALL;
use IEEE.numeric_std.ALL;
use work.isa_riscv.ALL;


entity alu is
	generic ( bit_width : integer := 32 );
	port (
        i_inverse_zero  : in  std_logic;
		i_operation     : in  std_logic_vector( 3 downto 0 );
		i_operand_a     : in  std_logic_vector( bit_width-1 downto 0 );
		i_operand_b     : in  std_logic_vector( bit_width-1 downto 0 );
		o_result        : out std_logic_vector( bit_width-1 downto 0 );
        o_zero_flag     : out std_logic;
        o_overflow_flag : out std_logic
	);
end entity alu;


architecture behavior of alu is
    signal s_result : std_logic_vector( bit_width-1 downto 0 );

    signal signed_a, signed_b     : signed( bit_width-1 downto 0 );
    signal unsigned_a, unsigned_b : unsigned( bit_width-1 downto 0 );
    signal signed_int_a, unsigned_int_a : integer;
    signal signed_int_b, unsigned_int_b : integer;

    signal add_res  : std_logic_vector( bit_width   downto 0 );
    signal sub_res  : std_logic_vector( bit_width-1 downto 0 );
    signal and_res  : std_logic_vector( bit_width-1 downto 0 );
    signal or_res   : std_logic_vector( bit_width-1 downto 0 );
    signal xor_res  : std_logic_vector( bit_width-1 downto 0 );
    signal sll_res  : std_logic_vector( bit_width-1 downto 0 );
    signal srl_res  : std_logic_vector( bit_width-1 downto 0 );
    signal sra_res  : std_logic_vector( bit_width-1 downto 0 );
    signal slt_res  : std_logic_vector( bit_width-1 downto 0 );
    signal sltu_res : std_logic_vector( bit_width-1 downto 0 );


begin
    o_result <= s_result;

    signed_a       <= signed( i_operand_a );
    signed_b       <= signed( i_operand_b );
    unsigned_a     <= unsigned( i_operand_a );
    unsigned_b     <= unsigned( i_operand_b );
    signed_int_a   <= to_integer( signed_a );
    signed_int_b   <= to_integer( signed_b );
    unsigned_int_a <= to_integer( unsigned_a );
    unsigned_int_b <= to_integer( unsigned_b );

    -- zero flag
    o_zero_flag <= ( not ( or s_result )) xor i_inverse_zero;

    -- addition
    add_res <= std_logic_vector( signed( '0' & i_operand_a ) + signed( '0' & i_operand_b ));
    
    -- overflow flag
    o_overflow_flag <= add_res( bit_width );
    
    -- substraction
    sub_res <= std_logic_vector( signed_a - signed_b);
    
    -- and
    and_res <= i_operand_a and i_operand_b;
    
    -- or
    or_res  <= i_operand_a or  i_operand_b;
    
    -- xor
    xor_res <= i_operand_a xor i_operand_b;

    -- shift left logical
    sll_res <= std_logic_vector( shift_left( unsigned_a, to_integer( unsigned_b ) ));

    -- shift right logical
    srl_res <= std_logic_vector( shift_right( unsigned_a, to_integer( unsigned_b ) ));

    -- shift right arithmetic
    sra_res <= std_logic_vector( shift_right( signed_a, to_integer( unsigned_b ) ));

    -- set less than
    process( signed_int_a, signed_int_b )
        variable temp : std_logic_vector( 30 downto 0 ) := ( others => '0' );
    begin
        if signed_int_a < signed_int_b then
            slt_res <= temp & '1';
        else
            slt_res <= temp & '0';
        end if;
    end process;

    -- set less than unsigned
    process( unsigned_int_a, unsigned_int_b )
        variable temp : std_logic_vector( 30 downto 0 ) := ( others => '0' );
    begin
        if unsigned_int_a < unsigned_int_b then
            sltu_res <= temp & '1';
        else
            sltu_res <= temp & '0';
        end if;

    end process;
    

    operation_mux_switch : process( i_operation, i_operand_a, i_operand_b )
    begin
        case i_operation is
            when opcode_ADD =>
                s_result <= add_res( bit_width-1 downto 0 );
            
            when opcode_SUB =>
                s_result <= sub_res;
            
            when opcode_AND =>
                s_result <= and_res;
            
            when opcode_OR =>
                s_result <= or_res;
            
            when opcode_XOR =>
                s_result <= xor_res;
            
            when opcode_PASS =>
                s_result <= i_operand_b;

            when opcode_SLL =>
                s_result <= sll_res;

            when opcode_SRL =>
                 s_result <= srl_res;

            when opcode_SRA =>
                s_result <= sra_res;

            when opcode_SLT =>
                s_result <= slt_res;

            when opcode_SLTU =>
                s_result <= sltu_res;

            when others =>
                s_result <= ( others => '0' );
            
        end case;
    end process operation_mux_switch;
    

end behavior;
