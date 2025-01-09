library IEEE;
use IEEE.std_logic_1164.ALL;
use IEEE.numeric_std.ALL;

use work.isa_riscv.ALL;


entity alu is
	generic ( bit_width : integer := 8 );
	port (
		i_operand_a     : in  std_logic_vector( bit_width-1 downto 0 );
		i_operand_b     : in  std_logic_vector( bit_width-1 downto 0 );
		i_operation     : in  std_logic_vector( 3 downto 0 );
		o_result        : out std_logic_vector( bit_width-1 downto 0 );
        o_zero_flag     : out std_logic;
        o_overflow_flag : out std_logic
	);
end entity alu;


architecture behav of alu is
    signal s_one_bit_alu_operation : integer range 4 downto 0;
    signal s_a_invert, s_b_invert  : std_logic;
    
    signal s_one_bit_alu_result         : std_logic_vector( bit_width-1 downto 0 );
    signal s_one_bit_alu_carry_in       : std_logic_vector( bit_width-1 downto 0 );
    signal s_one_bit_alu_carry_out      : std_logic_vector( bit_width-1 downto 0 );
    signal s_one_bit_alu_less           : std_logic_vector( bit_width-1 downto 0 );    


begin  
    o_result <= s_one_bit_alu_result;

    mux_operation : process( i_operation )
    begin
        s_one_bit_alu_carry_in( 0 ) <= '0';
        s_a_invert <= '0';
        s_b_invert <= '0'; 
    
        case i_operation is
            when "0000" =>  -- and
                s_one_bit_alu_operation <= 0;
        
            when "0001" =>  -- or
                s_one_bit_alu_operation <= 1;           
        
            when "0011" =>  -- xor
                s_one_bit_alu_operation <= 2;          
        
            when "0010" =>  -- add
                s_one_bit_alu_operation <= 3;
                s_one_bit_alu_carry_in( 0 ) <= '0';
                
            when "0110" =>  -- subtract
                s_one_bit_alu_operation <= 3;
                s_b_invert <= '1';
                s_one_bit_alu_carry_in( 0 ) <= '1';
                
            when "0111" => -- set less than
                s_one_bit_alu_operation <= 4;
                
            when others => -- set outputs to 0
                s_one_bit_alu_operation <= 0;
--                o_result <= ( others => '0' );
                
        end case;        
    end process mux_operation;


    one_bit_alu_gen : for i in 0 to bit_width-1 generate
        one_bit_alu_ins : entity work.one_bit_alu
        port map(
        a          =>  i_operand_a( i ),
        b          =>  i_operand_b( i ),
        a_invert   =>  s_a_invert,
        b_invert   =>  s_b_invert,
        operation  =>  s_one_bit_alu_operation,
        less       =>  s_one_bit_alu_less( i ),
        carry_in   =>  s_one_bit_alu_carry_in( i ),
        carry_out  =>  s_one_bit_alu_carry_out( i ),
        result     =>  s_one_bit_alu_result( i )
        );
    end generate one_bit_alu_gen;


    zero_flag_control : process( s_one_bit_alu_result )
        variable temp : std_logic;
    begin
        temp:= '0';
        for i in 0 to bit_width-1 loop
            temp := temp or s_one_bit_alu_result( i );
        end loop;
        o_zero_flag <= not temp;
    end process zero_flag_control;

    
    s_one_bit_alu_carry_in( bit_width-1 downto 1 ) <= s_one_bit_alu_carry_out( bit_width-2 downto 0 );
    s_one_bit_alu_less( 0 ) <= s_one_bit_alu_result( bit_width-1 );
    s_one_bit_alu_less( bit_width-1 downto 1 ) <= ( others => '0' );
    o_overflow_flag <= s_one_bit_alu_carry_out( bit_width-1 );

end behav;
