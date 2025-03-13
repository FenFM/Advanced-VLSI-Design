library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use work.misc.ALL;


entity hazard_detection_unit is
    generic( reg_size : integer := 32 );  -- # of register in register file
    port(
        clk : std_logic;
        rst : std_logic;
    
        i_instruction_memory_read_data_reg_1 : in std_logic_vector( 31 downto 0 );
        i_instruction_memory_read_data_reg_2 : in std_logic_vector( 31 downto 0 );
        i_data_memory_read_rden_1            : in std_logic;
        i_pc_mux_src_2                       : in std_logic_vector(  1 downto 0 );
        i_alu_zero_flag_reg                  : in std_logic;

        o_control_unit_mux_1 : out std_logic;
        o_control_unit_mux_2 : out std_logic;
        o_im_rden            : out std_logic;
        o_im_mux_src         : out std_logic;
        o_pc_rden            : out std_logic
    );
end hazard_detection_unit;


architecture behavior of hazard_detection_unit is
    signal s_rf_read_a_addr   : std_logic_vector( log2(reg_size)-1 downto 0 );
    signal s_rf_read_b_addr   : std_logic_vector( log2(reg_size)-1 downto 0 );
    signal s_rf_write_addr_2  : std_logic_vector( log2(reg_size)-1 downto 0 );
    signal s_im_mux_reg       : std_logic_vector( 1 downto 0 );
    signal s_im_mux_src       : std_logic;


begin
    s_rf_read_a_addr  <= i_instruction_memory_read_data_reg_1 ( 19 downto 15 );
    s_rf_read_b_addr  <= i_instruction_memory_read_data_reg_1 ( 24 downto 20 );
    s_rf_write_addr_2 <= i_instruction_memory_read_data_reg_2 ( 11 downto  7 );

    o_im_mux_src <= s_im_mux_src and s_im_mux_reg( 0 ) and s_im_mux_reg( 1 );


    hazard : process( rst, i_data_memory_read_rden_1, s_rf_read_a_addr, s_rf_read_b_addr, s_rf_write_addr_2, i_pc_mux_src_2, i_alu_zero_flag_reg )
    begin
        -- control signals when no hazard is detected
        o_control_unit_mux_1 <= '1';
        o_control_unit_mux_2 <= '1';
        o_im_rden            <= '1';
        s_im_mux_reg( 0 )    <= '1';
        s_im_mux_src         <= '1';
        o_pc_rden            <= '1';

        -- control signals when a data hazard is detected
        if i_data_memory_read_rden_1 = '1' and ((s_rf_read_a_addr = s_rf_write_addr_2) or (s_rf_read_b_addr = s_rf_write_addr_2)) then
            o_control_unit_mux_1 <= '0';
            o_im_rden    <= '0';
            s_im_mux_src <= '0';
            o_pc_rden    <= '0';
        end if;
        
        -- control signals when a jump hazard is detected
        if (i_pc_mux_src_2 = "01" and i_alu_zero_flag_reg = '1') or i_pc_mux_src_2 = "10" or i_pc_mux_src_2 = "11" then
            o_control_unit_mux_2 <= '0';
            s_im_mux_reg( 0 )    <= '0';
        end if;
        
        -- control signals on reset: less switching in the beginning
        if rst = '1' then
            o_control_unit_mux_1 <= '0';
            o_control_unit_mux_2 <= '0';
            o_im_rden            <= '0';
            o_pc_rden            <= '0';
            s_im_mux_src         <= '0';
        end if;
    end process hazard;
    
    
    shift_reg : process( clk, s_im_mux_reg(0) )
    begin
        if rising_edge( clk ) then
            s_im_mux_reg( 1 ) <= s_im_mux_reg( 0 );
        end if;
    end process shift_reg;


end behavior;
