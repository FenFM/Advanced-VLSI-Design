library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;


entity alu_tb is
end alu_tb;


architecture testbench of alu_tb is
--    constant clk_period : time    := 10 ns;
    constant bit_width  : integer := 4;

    signal clk_sig : std_logic;
    
    signal i_alu_operand_a_sig     : std_logic_vector( bit_width-1 downto 0 );
    signal i_alu_operand_b_sig     : std_logic_vector( bit_width-1 downto 0 );
    signal i_alu_op_sig            : std_logic_vector( 3 downto 0 );
    signal o_alu_result_sig        : std_logic_vector( bit_width-1 downto 0 );
    signal o_alu_zero_flag_sig     : std_logic;
    signal o_alu_overflow_flag_sig : std_logic;

    signal ref_signal : std_logic_vector( bit_width-1 downto 0 );


begin
--    vclk: process
--    begin
--        clk_sig <= '1';
--        wait for clk_period / 2;
--        clk_sig <= '0';
--        wait for clk_period / 2;
--    end process vclk;


    UUT: entity work.alu
        generic map( bit_width => bit_width )
        port map(
            i_alu_operand_a       =>   i_alu_operand_a_sig,
            i_alu_operand_b       =>   i_alu_operand_b_sig,
            i_alu_op              =>   i_alu_op_sig,
            o_alu_result          =>   o_alu_result_sig,
            o_alu_zero_flag       =>   o_alu_zero_flag_sig,
            o_alu_overflow_flag   =>   o_alu_overflow_flag_sig
        );

    
    TEST : process
    begin
        i_alu_operand_a_sig <= "0101";
        i_alu_operand_b_sig <= "0001";
        i_alu_op_sig <= "1000";
        wait for 20ns;
        
        i_alu_op_sig <= "0000";
        for j in 0 to bit_width-1 loop
            ref_signal( j ) <= i_alu_operand_a_sig( j ) and i_alu_operand_b_sig( j );
        end loop;
        wait for 20ns;
        
        i_alu_op_sig <= "0001";
        for j in 0 to bit_width-1 loop
            ref_signal( j ) <= i_alu_operand_a_sig( j ) or i_alu_operand_b_sig( j );
        end loop;
        wait for 20ns;      
        
        i_alu_op_sig <= "0011";
        for j in 0 to bit_width-1 loop
            ref_signal( j ) <= i_alu_operand_a_sig( j ) xor i_alu_operand_b_sig( j );
        end loop;
        wait for 20ns;
        
        i_alu_op_sig <= "0010";
        ref_signal   <= std_logic_vector( unsigned( i_alu_operand_a_sig ) + unsigned( i_alu_operand_b_sig ) );
        wait for 20ns;
        
        i_alu_op_sig <= "0110";
        ref_signal   <= std_logic_vector( unsigned( i_alu_operand_a_sig ) - unsigned( i_alu_operand_b_sig ) );
        wait for 20ns;
        
        i_alu_op_sig <= "0111";
        ref_signal   <= ( others => '0' );
        wait for 20ns;
        
--        i_alu_op_sig <= "1000";
        wait for 20ns;
        wait for 20ns;
        wait for 20ns;
        
        i_alu_op_sig <= "0000";
        for j in 0 to bit_width-1 loop
            ref_signal( j ) <= i_alu_operand_a_sig( j ) and i_alu_operand_b_sig( j );
        end loop;
        wait for 20ns;
        
        i_alu_op_sig <= "0001";
        for j in 0 to bit_width-1 loop
            ref_signal( j ) <= i_alu_operand_a_sig( j ) or i_alu_operand_b_sig( j );
        end loop;
        wait for 20ns;       
        
        i_alu_op_sig <= "0011";
        for j in 0 to bit_width-1 loop
            ref_signal( j ) <= i_alu_operand_a_sig( j ) xor i_alu_operand_b_sig( j );
        end loop;
        wait for 20ns;
        
        i_alu_op_sig <= "0010";
        ref_signal   <= std_logic_vector( unsigned( i_alu_operand_a_sig ) + unsigned( i_alu_operand_b_sig ) );
        wait for 20ns;
        
        i_alu_op_sig <= "0110";
        ref_signal   <= std_logic_vector( unsigned( i_alu_operand_a_sig ) - unsigned( i_alu_operand_b_sig ) );
        wait for 20ns;
        
        i_alu_operand_a_sig <= "0010";
        i_alu_operand_b_sig <= "0010";
        i_alu_op_sig <= "0110";
        wait for 20ns;
        
        ref_signal   <= std_logic_vector( unsigned( i_alu_operand_a_sig ) - unsigned( i_alu_operand_b_sig ) );
        wait for 20ns;
        
        i_alu_op_sig <= "0000";
        for j in 0 to bit_width-1 loop
            ref_signal( j ) <= i_alu_operand_a_sig( j ) and i_alu_operand_b_sig( j );
        end loop;
        wait for 20ns;        
        
        i_alu_op_sig <= "0111";
        ref_signal   <= ( others => '0' );
        wait for 20ns;      
        
        wait;
        
    end process TEST;

end testbench;
