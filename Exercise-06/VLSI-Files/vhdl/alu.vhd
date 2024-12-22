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

		o_alu_result    : out std_logic_vector( bit_width-1 downto 0 )
	);
end entity alu;


architecture behav of alu is
	signal s_adder       : std_logic_vector( bit_width-1 downto 0 );
	signal s_subtractor  : std_logic_vector( bit_width-1 downto 0 );
	signal s_and         : std_logic_vector( bit_width-1 downto 0 );
	signal s_or          : std_logic_vector( bit_width-1 downto 0 );
	signal s_xor         : std_logic_vector( bit_width-1 downto 0 );

	signal a  : std_logic_vector( bit_width-1 downto 0 );
	signal b  : std_logic_vector( bit_width-1 downto 0 );


begin
    a <= i_alu_operand_a;
    b <= i_alu_operand_b;

	s_adder      <= std_logic_vector( signed( a ) + signed( b ) );
	s_subtractor <= std_logic_vector( signed( a ) - signed( b ) );


    and_comp : process( a, b )
    begin
        for i in 0 to bit_width-1 loop
            s_and( i ) <= a( i ) and b( i );
        end loop;
    end process and_comp;


    or_comp : process ( a, b )
    begin
        for i in 0 to bit_width-1 loop
            s_or( i ) <= a( i ) or b( i );
        end loop;
    end process or_comp;
	

    process ( a, b )
    begin
        for i in 0 to bit_width-1 loop
            s_or( i ) <= a( i ) xor b( i );
        end loop;
    end process;


    mux_switch : process ( i_alu_op )
    begin
        case i_alu_op is
            when "0000" => -- adder
                o_alu_result <= s_adder;
            when "0001" => -- substractor
                o_alu_result <= s_subtractor;
            when "0010" => -- and
                o_alu_result <= s_and;
            when "0100" => -- or
                o_alu_result <= s_or;
            when "1000" => -- xor
                o_alu_result <= s_xor;
            when others => -- set output to 0
                o_alu_result <= (others => '0');  
        end case;
    end process;

end behav;
