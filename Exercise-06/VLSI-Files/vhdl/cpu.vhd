library IEEE;
use IEEE.std_logic_1164.ALL;
use IEEE.numeric_std.ALL;

use work.generic_header.ALL;
use work.isa_riscv.ALL;


entity cpu is
    port(
        clk : in std_logic;
        rst : in std_logic
    );
end entity cpu;


architecture structure of cpu is
    -- signal for the program counter
    signal s_pc_dout : std_logic_vector( C_BIT_WIDTH-1 downto 0 );

    -- signals for the alu
    signal s_alu_operand_b     : std_logic_vector( C_BIT_WIDTH-1 downto 0 );
    signal s_alu_result        : std_logic_vector( C_BIT_WIDTH-1 downto 0 );
    signal s_alu_zero_flag     : std_logic;
    signal s_alu_overflow_flag : std_logic;

    -- signal for the instruction memory
    signal s_instruction_memory_read_data  : std_logic_vector( C_BIT_WIDTH-1 downto 0) ;

    -- signal for the data memory
    signal s_data_memory_read_data  : std_logic_vector( C_BIT_WIDTH-1 downto 0 );

    -- signals for the register file
    signal s_register_file_read_a_data : std_logic_vector( C_REG_SIZE-1 downto 0 );
    signal s_register_file_read_b_data : std_logic_vector( C_REG_SIZE-1 downto 0 );
    signal s_register_write_data       : std_logic_vector( C_REG_SIZE-1 downto 0 );


begin
    program_counter_ins : entity work.program_counter
    generic map (
        bit_width  =>  C_BIT_WIDTH,
        pc_offset  =>  C_PC_OFFSET
    )
    port map (
        clk              =>  clk,
        rst              =>  rst,
        i_sign_shift     =>  ,
        i_pc_src         =>  ,
        i_branch         =>  ,
        i_alu_zero_flag  =>  s_alu_zero_flag,
        o_pc_dout        =>  s_pc_dout
    );


    alu_ins : entity work.alu
    generic map ( bit_width  =>  C_BIT_WIDTH )
    port map (
        i_alu_operand_a      =>  s_register_file_read_a_data,
        i_alu_operand_b      =>  s_alu_operand_b,
        i_alu_op             =>  ,
        o_alu_result         =>  s_alu_result,
        o_alu_zero_flag      =>  s_alu_zero_flag,
        o_alu_overflow_flag  =>  s_alu_overflow_flag
    );


    alu_mux_ins : entity work.mux_switch_2
    generic map( bit_width  =>  C_BIT_WIDTH )
    port map (
        s  =>  ,
        a  =>  s_register_file_read_b_data,
        b  =>  ,
        o  =>  s_alu_operand_b
    )


    instruction_memory_ins : entity work.memory
    generic map (
        word_size  =>  C_BIT_WIDTH,
        mem_size   =>  C_IM_MEM_SIZE
    )
    port map (
        clk                  =>  clk,
        i_memory_write_data  =>  ,        
        i_memory_write_addr  =>  s_pc_dout, 
        i_memory_write_wren  =>  ,
        o_memory_read_data   =>  s_instruction_memory_read_data,       
        i_memory_read_addr   =>  ,
        i_memory_read_rden   =>                                       
    );


    data_memory_ins : entity work.memory
    generic map (
        word_size  =>  C_BIT_WIDTH,
        mem_size   =>  C_DM_MEM_SIZE
    )
    port map (
        clk                  =>  clk,
        i_memory_write_data  =>  s_register_file_read_b_data,        
        i_memory_write_addr  =>  s_alu_result, 
        i_memory_write_wren  =>  ,
        o_memory_read_data   =>  s_data_memory_read_data,       
        i_memory_read_addr   =>  ,
        i_memory_read_rden   =>                                       
    );


    register_file_ins : entity work.register_file
    generic map (
        word_size  =>  C_REG_WORD_SIZE,
        reg_size   =>  C_REG_SIZE      
    );
    port map (
        clk                     =>  clk,
        i_register_write_data   =>  s_register_write_data,
        i_register_write_addr   =>  s_instruction_memory_read_data,
        i_register_write_wren   =>  ,
        o_register_read_a_data  =>  s_register_file_read_a_data,
        i_register_read_a_addr  =>  s_instruction_memory_read_data,
        o_register_read_b_data  =>  s_register_file_read_b_data,
        i_register_read_b_addr  =>  s_instruction_memory_read_data
    );


    mem_to_reg_mux_ins : entity work.mux_switch_2
    generic map( bit_width  =>  C_BIT_WIDTH )
    port map (
        s  =>  ,
        a  =>  s_pc_dout,
        b  =>  s_data_memory_read_data,
        o  =>  s_register_write_data
    )


end structure;
