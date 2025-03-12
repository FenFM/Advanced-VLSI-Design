library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use work.misc.ALL;


entity hazard_detection_unit is
    generic( reg_size : integer := 32 );  -- # of register in register file
    port(
        rst : std_logic;
    
        i_instruction_memory_read_data_reg_1 : in std_logic_vector( 31 downto 0 );
        i_instruction_memory_read_data_reg_2 : in std_logic_vector( 31 downto 0 );
        i_data_memory_read_rden_1            : in std_logic;

        o_control_unit_mux : out std_logic;
        o_if_df_write      : out std_logic;
        o_pc_write         : out std_logic
    );
end hazard_detection_unit;


architecture behavior of hazard_detection_unit is
    signal s_rf_read_a_addr  : std_logic_vector( log2(reg_size)-1 downto 0 );
    signal s_rf_read_b_addr  : std_logic_vector( log2(reg_size)-1 downto 0 );
    signal s_rf_write_addr_2 : std_logic_vector( log2(reg_size)-1 downto 0 );


begin
    s_rf_read_a_addr  <= i_instruction_memory_read_data_reg_1 ( 19 downto 15 );
    s_rf_read_b_addr  <= i_instruction_memory_read_data_reg_1 ( 24 downto 20 );
    s_rf_write_addr_2 <= i_instruction_memory_read_data_reg_2 ( 11 downto  7 );


    process( rst, i_data_memory_read_rden_1, s_rf_read_a_addr, s_rf_read_b_addr, s_rf_write_addr_2 )
    begin
        -- control signals when no hazard is detected
        o_control_unit_mux <= '1';
        o_if_df_write      <= '1';
        o_pc_write         <= '1';

        -- control signals when a hazard is detected
        if i_data_memory_read_rden_1 = '1' and ((s_rf_read_a_addr = s_rf_write_addr_2) or (s_rf_read_b_addr = s_rf_write_addr_2)) then
            o_control_unit_mux <= '0';
            o_if_df_write      <= '0';
            o_pc_write         <= '0';
        end if;
        
        -- control signals on reset: less switching in the beginning
        if rst = '1' then
            o_control_unit_mux <= '0';
            o_if_df_write      <= '0';
            o_pc_write         <= '0';
        end if;
    end process;


end behavior;
