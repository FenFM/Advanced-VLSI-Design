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
--    signal sub_res : std_logic;    
    signal and_res : std_logic;
    signal or_res  : std_logic;
    signal xor_res : std_logic;
    
    signal add_reg : unsigned( 1 downto 0 );
    signal a_reg, b_reg, carry_in_reg : std_logic_vector( 1 downto 0 );


begin
    a_reg( 0 ) <= a_muxed;
    a_reg( 1 ) <= '0';
    b_reg( 0 ) <= b_muxed;
    b_reg( 1 ) <= '0';
    carry_in_reg( 0 ) <= carry_in;
    carry_in_reg( 1 ) <= '0';


    a_mux : process( a, a_invert )
    begin
        case a_invert is
            when '0' =>
                a_muxed <= a;
            when '1' =>
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
        end case;
    end process b_mux;    


    add_reg   <= unsigned( a_reg ) + unsigned( b_reg ) + unsigned( carry_in_reg );
    add_res   <= add_reg( 0 );
    carry_out <= add_reg( 1 );
    
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
        end case;
    end process;
    

end behavioral;
