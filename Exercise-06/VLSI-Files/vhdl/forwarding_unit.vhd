library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use work.misc.ALL;


entity forwarding_unit is
    generic( reg_size : integer := 32 );  -- # of register in register file
    port(
        i_instruction_memory_read_data_reg_2 : in std_logic_vector( 31 downto 0 );
        i_instruction_memory_read_data_reg_3 : in std_logic_vector( 31 downto 0 );
        i_instruction_memory_read_data_reg_4 : in std_logic_vector( 31 downto 0 );
        
        i_reg_wren_reg_2 : in std_logic;
        i_reg_wren_reg_3 : in std_logic;
        
        o_mux_a_src : out std_logic_vector( 1 downto 0 );
        o_mux_b_src : out std_logic_vector( 1 downto 0 )
    );
end forwarding_unit;


architecture behavior of forwarding_unit is
    signal s_rf_read_a_addr  : std_logic_vector( log2(reg_size)-1 downto 0 );
    signal s_rf_read_b_addr  : std_logic_vector( log2(reg_size)-1 downto 0 );
    signal s_rf_write_addr_3 : std_logic_vector( log2(reg_size)-1 downto 0 );
    signal s_rf_write_addr_4 : std_logic_vector( log2(reg_size)-1 downto 0 );
    signal s_rf_write_addr_3u : unsigned( log2(reg_size)-1 downto 0 );
    signal s_rf_write_addr_4u : unsigned( log2(reg_size)-1 downto 0 );


begin
    s_rf_read_a_addr  <= i_instruction_memory_read_data_reg_2 ( 19 downto 15 );
    s_rf_read_b_addr  <= i_instruction_memory_read_data_reg_2 ( 24 downto 20 );
    s_rf_write_addr_3 <= i_instruction_memory_read_data_reg_3 ( 11 downto  7 );
    s_rf_write_addr_4 <= i_instruction_memory_read_data_reg_4 ( 11 downto  7 );
    s_rf_write_addr_3u <= unsigned( s_rf_write_addr_3 );
    s_rf_write_addr_4u <= unsigned( s_rf_write_addr_4 );

    process( all )
    begin
        o_mux_a_src <= "00";
        o_mux_b_src <= "00";
        
        if s_rf_read_a_addr = s_rf_write_addr_3 and s_rf_write_addr_3u /= 0 and i_reg_wren_reg_2 = '1' then
            o_mux_a_src <= "10";
        elsif s_rf_read_a_addr = s_rf_write_addr_4 and s_rf_write_addr_4u /= 0 and i_reg_wren_reg_3 = '1'  then
            o_mux_a_src <= "01";
        end if;
        
        if s_rf_read_b_addr = s_rf_write_addr_3 and s_rf_write_addr_4u /= 0 and i_reg_wren_reg_2 = '1' then
            o_mux_b_src <= "10";
        elsif s_rf_read_b_addr = s_rf_write_addr_3 and s_rf_write_addr_4u /= 0 and i_reg_wren_reg_3 = '1' then
            o_mux_b_src <= "01";
        end if;
    end process;


end behavior;
