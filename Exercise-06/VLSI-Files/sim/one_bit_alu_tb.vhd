library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;


entity one_bit_alu_tb is
end one_bit_alu_tb;


architecture testbench of one_bit_alu_tb is
    constant clk_period : time    := 10 ns;

    signal clk_sig : std_logic;
    
    signal a_sig         : std_logic;
    signal b_sig         : std_logic;
    signal a_invert_sig  : std_logic;
    signal b_invert_sig  : std_logic;
    signal operation_sig : integer range 4 downto 0;
    signal less_sig      : std_logic;
    signal carry_in_sig  : std_logic;
    signal carry_out_sig : std_logic;
    signal result_sig    : std_logic;


begin
    vclk: process
    begin
        clk_sig <= '1';
        wait for clk_period / 2;
        clk_sig <= '0';
        wait for clk_period / 2;
    end process vclk;


    UUT: entity work.one_bit_alu
        port map(
            a          =>  a_sig        ,
            b          =>  b_sig        ,
            a_invert   =>  a_invert_sig ,
            b_invert   =>  b_invert_sig ,
            operation  =>  operation_sig,
            less       =>  less_sig     ,
            carry_in   =>  carry_in_sig ,
            carry_out  =>  carry_out_sig,
            result     =>  result_sig
        );

    
    TEST : process
    begin
        a_sig        <= '1';
        b_sig        <= '1';
        a_invert_sig <= '0';
        b_invert_sig <= '0';
        less_sig     <= '0';
        carry_in_sig <= '0';
        
        operation_sig <= 1;
        wait for clk_period;
        operation_sig <= 0;
        wait for clk_period;
        
        operation_sig <= 1;
        wait for clk_period;
        
        operation_sig <= 2;
        wait for clk_period;
        
        operation_sig <= 3;
        wait for clk_period;
        
        operation_sig <= 3;
        b_invert_sig <= '1';
        carry_in_sig <= '1';
        wait for clk_period;
        
        operation_sig <= 4;
        b_invert_sig <= '0';
        carry_in_sig <= '0';
        wait for clk_period;
        
    end process TEST;

end testbench;
