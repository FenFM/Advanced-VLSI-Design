library IEEE;
use IEEE.std_logic_1164.ALL;
use IEEE.numeric_std.ALL;

use work.isa_riscv.ALL;


entity alu is
	generic ( bit_width : integer := 8 );
	port (
		i_alu_operand_a : in  std_logic_vector( bit_width-1 downto 0 );
		i_alu_operand_b : in  std_logic_vector( bit_width-1 downto 0 );
		i_alu_op        : in  std_logic_vector( 3 downto 0 );
		o_alu_result    : out std_logic_vector( bit_width-1 downto 0 );
        o_alu_zero_flag : out std_logic
	);
end entity alu;


architecture behav of alu is
    signal s_one_bit_alu_operation : integer range 3 downto 0;
    signal s_a_invert, s_b_invert  : std_logic;


begin  
    mux_operation : process( i_alu_op )
    begin
        case i_alu_op is
            when "0000" =>  -- add
                s_one_bit_alu_operation <= 3;
                s_a_invert <= '0';
                s_b_invert <= '1';
                
            when "0001" =>  -- sub
                s_one_bit_alu_operation <= 3;
                s_a_invert <= '0';
                s_b_invert <= '0';                
                
            when "0010" =>  -- and
                s_one_bit_alu_operation <= 0;
                s_a_invert <= '0';
                s_b_invert <= '0';                
                
            when "0100" =>  -- or
                s_one_bit_alu_operation <= 1;
                s_a_invert <= '0';
                s_b_invert <= '0';                
                
            when "1000" =>  -- xor
                s_one_bit_alu_operation <= 2;
                s_a_invert <= '0';
                s_b_invert <= '0';                
                
        end case;
        
--        when others =>
        
    end process mux_operation;



--    mux_out : process ( i_alu_op )
--    begin
--        case i_alu_op is
--            when "0000" => -- adder
--                o_alu_result <= s_adder;
--            when "0001" => -- substractor
--                o_alu_result <= s_subtractor;
--            when "0010" => -- and
--                o_alu_result <= s_and;
--            when "0100" => -- or
--                o_alu_result <= s_or;
--            when "1000" => -- xor
--                o_alu_result <= s_xor;
--            when others => -- set output to 0
--                o_alu_result <= (others => '0');  
--        end case;
--    end process mux_out;

end behav;
