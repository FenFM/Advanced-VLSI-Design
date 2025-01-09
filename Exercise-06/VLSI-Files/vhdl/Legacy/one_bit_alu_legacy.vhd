library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;


entity one_bit_alu is
    port(
        a         : in  std_logic;
        b         : in  std_logic;
        a_invert  : in  std_logic;
        b_invert  : in  std_logic;
        operation : in  integer range 4 downto 0;
        less      : in  std_logic;
        carry_in  : in  std_logic;
        carry_out : out std_logic;
        result    : out std_logic 
    );
end one_bit_alu;


architecture behavioral of one_bit_alu is
    signal a_muxed, b_muxed : std_logic;
    signal add_res : std_logic;
    signal and_res : std_logic;
    signal or_res  : std_logic;
    signal xor_res : std_logic;


begin
    a_mux : process( a, a_invert )
    begin
        case a_invert is
            when '0' =>
                a_muxed <= a;
            when '1' =>
                a_muxed <= not a;
            when others =>
                a_muxed <= not a;
        end case;
    end process a_mux;
    
    
    b_mux : process( b, b_invert )
    begin
        case b_invert is
            when '0' =>
                b_muxed <= b;
            when '1' =>
                b_muxed <= not b;
            when others =>
                b_muxed <= not b;
        end case;
    end process b_mux;
    
    
    addition : process( a_muxed, b_muxed, carry_in )
        variable a_temp, b_temp, carry_in_temp : unsigned( 0 downto 0 );
        variable add_temp : unsigned( 1 downto 0 );
    begin
        a_temp( 0 ) := a_muxed;
        b_temp( 0 ) := b_muxed;
        carry_in_temp( 0 ) := carry_in;
        
        add_temp := to_unsigned( to_integer( a_temp ) + to_integer( b_temp ) + to_integer( carry_in_temp ) , 2 );
        add_res   <= add_temp( 0 );
        carry_out <= add_temp( 1 );
    end process addition;
    
--    add_res   <= ( a_muxed xor b_muxed xor carry_in ) or ( a_muxed and b_muxed and carry_in );
--    carry_out <= ( a_muxed and ( b_muxed xor carry_in )) or (( a_muxed xor b_muxed ) and carry_in ) or ( a_muxed and b_muxed and carry_in );
    
    and_res <= a_muxed and b_muxed;
    or_res  <= a_muxed or  b_muxed;
    xor_res <= a_muxed xor b_muxed;
    
    
    res_mux : process( operation )
    begin
        case operation is
            when 0 =>
                result <= and_res;
            when 1 =>
                result <= or_res;
            when 2 =>
                result <= xor_res;
            when 3 =>
                result <= add_res;         
            when 4 =>
                result <= less;
            when others =>
                result <= '0';
        end case;
    end process;
    

end behavioral;
