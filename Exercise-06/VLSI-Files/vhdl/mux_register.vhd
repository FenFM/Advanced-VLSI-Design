library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;


entity mux_register is
    generic( bit_width : integer := 32 );
    port(
        s : in  std_logic_vector( 1 downto 0 );
        
        din_a : in  std_logic_vector( bit_width-1 downto 0 );
        din_b : in  std_logic_vector( bit_width-1 downto 0 );
        din_c : in  std_logic_vector( bit_width-1 downto 0 );
        din_d : in  std_logic_vector( bit_width-1 downto 0 );

        dout  : out std_logic_vector( bit_width-1 downto 0 )
    );
end mux_register;


architecture behavior of mux_register is
    constant from_alu : std_logic_vector( 1 downto 0 ) := "00";  -- alu         to reg
    constant from_mem : std_logic_vector( 1 downto 0 ) := "01";  -- data memory to reg
    constant from_pca : std_logic_vector( 1 downto 0 ) := "10";  -- pc + 4      to reg
    constant from_pcb : std_logic_vector( 1 downto 0 ) := "11";  -- pc + imm    to reg


begin
    process( all )
    begin
        case s is
            when from_alu  =>  dout <= din_a;
            when from_mem  =>  dout <= din_b;
            when from_pca  =>  dout <= din_c;
            when from_pcb  =>  dout <= din_d;
            when others    =>  dout <= din_a;
        end case;
    end process;

end behavior;
