library IEEE;
use IEEE.std_logic_1164.ALL;
use IEEE.numeric_std.ALL;

use work.generic_header.ALL;
use work.isa_riscv.ALL;
use work.misc.ALL;


entity cpu is
    port(
        clk : in std_logic;
        rst : in std_logic
    );
end entity cpu;


architecture structure of cpu is
    -- signal for the program counter
    signal s_branch_zero : std_logic;
    signal s_sign_shift  : std_logic_vector( C_BIT_WIDTH-1 downto 0 );

    -- signals for the alu
    signal s_alu_operand_a     : std_logic_vector( C_BIT_WIDTH-1 downto 0 );
    signal s_alu_operand_b     : std_logic_vector( C_BIT_WIDTH-1 downto 0 );
    signal s_alu_result        : std_logic_vector( C_BIT_WIDTH-1 downto 0 );
    signal s_alu_zero_flag     : std_logic;
    signal s_alu_overflow_flag : std_logic;

    -- signals for the instruction memory
    signal s_instruction_memory_write_data : std_logic_vector( C_BIT_WIDTH-1 downto 0 ) ;
    signal s_instruction_memory_write_addr : std_logic_vector( log2(C_IM_MEM_SIZE)-1 downto 0 );
    signal s_instruction_memory_write_rden : std_logic;    
    signal s_instruction_memory_read_data  : std_logic_vector( C_BIT_WIDTH-1 downto 0 ) ;
    signal s_instruction_memory_read_addr  : std_logic_vector( log2(C_IM_MEM_SIZE)-1 downto 0 );
    signal s_instruction_memory_read_rden  : std_logic;  

    -- signals for the data memory    
    signal s_data_memory_write_data : std_logic_vector( C_BIT_WIDTH-1 downto 0 ) ;
    signal s_data_memory_write_addr : std_logic_vector( log2(C_DM_MEM_SIZE)-1 downto 0 );
    signal s_data_memory_write_rden : std_logic;    
    signal s_data_memory_read_data  : std_logic_vector( C_BIT_WIDTH-1 downto 0 ) ;
    signal s_data_memory_read_addr  : std_logic_vector( log2(C_DM_MEM_SIZE)-1 downto 0 );
    signal s_data_memory_read_rden  : std_logic; 

    -- signals for the register file
    signal s_register_file_read_a_data : std_logic_vector( C_REG_SIZE-1 downto 0 );
    signal s_register_file_read_b_data : std_logic_vector( C_REG_SIZE-1 downto 0 );
    signal s_register_write_data       : std_logic_vector( C_REG_SIZE-1 downto 0 );

    -- signals for the control unit
    signal s_cu_pc_src     : std_logic;
    signal s_cu_branch     : std_logic;
    signal s_cu_alu_op     : std_logic_vector( C_BIT_WIDTH-1 downto 0 );
    signal s_cu_alu_src    : std_logic;
    signal s_cu_reg_wren   : std_logic;
    signal s_cu_mem_wren   : std_logic;
    signal s_cu_mem_rden   : std_logic;
    signal s_cu_mem_to_reg : std_logic;


begin
    CU : entity work.control_unit
    port map(
        o_pc_src      =>  s_cu_pc_src,
        o_branch      =>  s_cu_branch,
        o_alu_op      =>  s_cu_alu_op,
        o_alu_src     =>  s_cu_alu_src,
        o_reg_wren    =>  s_cu_reg_wren,
        o_mem_wren    =>  s_cu_mem_wren,
        o_mem_rden    =>  s_cu_mem_rden,
        o_mem_to_reg  =>  s_cu_mem_to_reg
    );

    PC : entity work.program_counter
    generic map(
        bit_width  =>  C_BIT_WIDTH,
        mem_size   =>  C_IM_MEM_SIZE,
        pc_offset  =>  C_PC_OFFSET
    )
    port map(
        clk            =>  clk,
        rst            =>  rst,
        i_sign_shift   =>  s_sign_shift,
        i_pc_src       =>  s_cu_pc_src,
        i_branch_zero  =>  s_branch_zero,
        o_pc_dout      =>  s_instruction_memory_read_addr
    );
     s_branch_zero <= s_alu_zero_flag and s_cu_branch;
    
    
    IM : entity work.memory
    generic map(
        word_size  =>  C_BIT_WIDTH,
        mem_size   =>  C_IM_MEM_SIZE
    )
    port map(
        clk           =>  clk,
        i_write_data  =>  s_instruction_memory_write_data,        
        i_write_addr  =>  s_instruction_memory_write_addr, 
        i_write_wren  =>  s_instruction_memory_write_rden,
        o_read_data   =>  s_instruction_memory_read_data,       
        i_read_addr   =>  s_instruction_memory_read_addr,
        i_read_rden   =>  s_instruction_memory_read_rden                                     
    );
         
     
    JC : entity work.jump_control
    generic map( C_BIT_WIDTH )
    port map(
        din   =>  s_instruction_memory_read_data,
        dout  =>  s_sign_shift
    );


    ALU : entity work.alu
    generic map ( C_BIT_WIDTH )
    port map (
        i_operand_a      =>  s_alu_operand_a,
        i_operand_b      =>  s_alu_operand_b,
        i_operation      =>  s_cu_alu_op,
        o_result         =>  s_alu_result,
        o_zero_flag      =>  s_alu_zero_flag,
        o_overflow_flag  =>  s_alu_overflow_flag
    );
    s_alu_operand_a <= s_register_file_read_a_data;


    ALU_MUX : entity work.mux_switch_2
    generic map( bit_width  =>  C_BIT_WIDTH )
    port map (
        s  =>  s_cu_alu_src,
        a  =>  s_register_file_read_b_data,
        b  =>  s_sign_shift,
        o  =>  s_alu_operand_b
    );


    DM : entity work.memory
    generic map(
        word_size  =>  C_BIT_WIDTH,
        mem_size   =>  C_DM_MEM_SIZE
    )
    port map (
        clk           =>  clk,
        i_write_data  =>  s_register_file_read_b_data,        
        i_write_addr  =>  s_alu_result, 
        i_write_wren  =>  s_cu_mem_wren,
        o_read_data   =>  s_data_memory_read_data,       
        i_read_addr   =>  s_alu_result,
        i_read_rden   =>  s_cu_mem_rden
    );


    RF : entity work.register_file
    generic map(
        word_size  =>  C_REG_WORD_SIZE,
        reg_size   =>  C_REG_SIZE      
    );
    port map (
        clk            =>  clk,
        i_write_data   =>  s_register_write_data,
        i_write_addr   =>  s_instruction_memory_read_data,
        i_write_wren   =>  s_cu_reg_wren,
        o_read_a_data  =>  s_register_file_read_a_data,
        i_read_a_addr  =>  s_instruction_memory_read_data,
        o_read_b_data  =>  s_register_file_read_b_data,
        i_read_b_addr  =>  s_instruction_memory_read_data
    );


    MEM_to_REG_MUX : entity work.mux_switch_2
    generic map( bit_width  =>  C_BIT_WIDTH )
    port map(
        s  =>  s_cu_mem_to_reg,
        a  =>  s_alu_result,
        b  =>  s_data_memory_read_data,
        o  =>  s_register_write_data
    );


end structure;
