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


architecture behavior of alu is
    signal s_result : std_logic_vector( bit_width-1 downto 0 );

    signal add_res : std_logic_vector( bit_width   downto 0 );
    signal sub_res : std_logic_vector( bit_width-1 downto 0 );
    signal and_res : std_logic_vector( bit_width-1 downto 0 );
    signal or_res  : std_logic_vector( bit_width-1 downto 0 );
    signal xor_res : std_logic_vector( bit_width-1 downto 0 );
    
--    signal mul_res : std_logic_vector( bit_width-1 downto 0 );


begin
    o_result <= s_result;

    -- addition
    add_res <= std_logic_vector( signed( '0' & i_operand_a ) + signed( '0' & i_operand_b ));
    
    -- overflow flag
    o_overflow_flag <= add_res( bit_width );
    
    -- substraction
    sub_res <= std_logic_vector( signed( i_operand_a ) - signed( i_operand_b ));
    
    -- and
    and_res <= i_operand_a and i_operand_b;
    
    -- or
    or_res  <= i_operand_a or  i_operand_b;
    
    -- xor
    xor_res <= i_operand_a xor i_operand_b;
    
    -- mul for testing only
--    mul_res <= std_logic_vector( signed( i_operand_a( bit_width/2-1 downto 0 )) * signed( i_operand_b( bit_width/2-1 downto 0 )));


    operation_mux_switch : process( i_operation )
    begin
        case i_operation is
            when "0000" =>  -- add_res
                s_result <= add_res( bit_width-1 downto 0 );
            
            when "0001" =>  -- sub_res
                s_result <= sub_res;
            
            when "0010" =>  -- and_res
                s_result <= and_res;
            
            when "0100" =>  -- or_res
                s_result <= or_res;
            
            when "1000" =>  -- xor_res
                s_result <= xor_res;
                
--            when "0011" =>  -- mul for testing only
--                s_result <= mul_res;
            
            when others =>  -- output = 0
                s_result <= ( others => '0' );
            
        end case;
    end process operation_mux_switch;


    zero_flag_control : process ( s_result )
        variable temp : std_logic;
    begin
        temp := '0';
        
        for i in 0 to bit_width-1 loop
            temp := temp or s_result( i );
        end loop;
        
        o_zero_flag <= not temp;
    end process zero_flag_control;
    

end behavior;
