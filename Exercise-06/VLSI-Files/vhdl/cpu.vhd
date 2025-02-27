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
    signal s_pc_jump      : std_logic;
    signal s_immediate    : std_logic_vector( C_BIT_WIDTH-1 downto 0 );
    signal s_pc_adder_one : std_logic_vector( log2(C_IM_MEM_SIZE)-1 downto 0 );
    signal s_pc_adder_two : std_logic_vector( log2(C_IM_MEM_SIZE)-1 downto 0 );

    -- signals for the alu
    signal s_alu_operand_a     : std_logic_vector( C_BIT_WIDTH-1 downto 0 );
    signal s_alu_operand_b     : std_logic_vector( C_BIT_WIDTH-1 downto 0 );
    signal s_alu_result        : std_logic_vector( C_BIT_WIDTH-1 downto 0 );
    signal s_alu_zero_flag     : std_logic;
    signal s_alu_overflow_flag : std_logic;
    signal s_inverse_zero      : std_logic;

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
    signal s_register_file_write_addr  : std_logic_vector( 4 downto 0 );
    signal s_register_file_read_a_addr : std_logic_vector( 4 downto 0 );
    signal s_register_file_read_b_addr : std_logic_vector( 4 downto 0 );

    -- signal for the mux siwtches
    signal s_mem_to_reg_out : std_logic_vector( C_REG_SIZE-1 downto 0 );

    -- signals for the control unit
    signal s_cu_con_jump   : std_logic;
    signal s_cu_uncon_jump : std_logic;
    signal s_cu_jarl_jump  : std_logic;
    signal s_cu_alu_op     : std_logic_vector( 1 downto 0 );
    signal s_cu_alu_src    : std_logic;
    signal s_cu_reg_wren   : std_logic;
    signal s_cu_mem_wren   : std_logic;
    signal s_cu_mem_rden   : std_logic;
    signal s_cu_mem_to_reg : std_logic;
    signal s_cu_pc_to_reg  : std_logic;
    signal s_alu_operation : std_logic_vector( 3 downto 0 );


begin
    CU : entity work.control_unit
    port map(
        i_instruction  =>  s_instruction_memory_read_data,
        o_con_jump     =>  s_cu_con_jump,
        o_uncon_jump   =>  s_cu_uncon_jump,
        o_jarl_jump    =>  s_cu_jarl_jump
        o_alu_op       =>  s_cu_alu_op,
        o_alu_src      =>  s_cu_alu_src,
        o_reg_wren     =>  s_cu_reg_wren,
        o_mem_wren     =>  s_cu_mem_wren,
        o_mem_rden     =>  s_cu_mem_rden,
        o_mem_to_reg   =>  s_cu_mem_to_reg,
        o_pc_to_reg    =>  s_cu_pc_to_reg
    );


    PC : entity work.program_counter
    generic map(
        bit_width  =>  C_BIT_WIDTH,
        mem_size   =>  C_IM_MEM_SIZE,
        pc_offset  =>  C_PC_OFFSET
    )
    port map(
        clk          =>  clk,
        rst          =>  rst,
        i_immediate  =>  s_immediate,
        i_reg_a      =>  s_register_file_read_a_data,
        i_jump       =>  s_pc_jump,
        i_jarl_jump  =>  s_cu_jarl_jump,
        o_adder_one  =>  s_pc_adder_one,
        o_pc         =>  s_instruction_memory_read_addr
    );
    s_pc_jump <= (s_alu_zero_flag and s_cu_con_jump) or s_cu_uncon_jump;
    
    
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
 
     
    IG : entity work.imm_gen
    generic map( C_BIT_WIDTH )
    port map(
        din   =>  s_instruction_memory_read_data,
        dout  =>  s_immediate
    );


    ALU_IN : entity work.alu_control_unit
    port map(
        i_instruction      =>  s_instruction_memory_read_data,
        i_alu_instruction  =>  s_cu_alu_op,
        o_alu_operation    =>  s_alu_operation,
        o_inverse_zero     =>  s_inverse_zero
    );


    ALU : entity work.alu
    generic map ( C_BIT_WIDTH )
    port map (
        i_operand_a      =>  s_alu_operand_a,
        i_operand_b      =>  s_alu_operand_b,
        i_operation      =>  s_alu_operation,
        i_inverse_zero   =>  s_inverse_zero,
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
        b  =>  s_immediate,
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
    )
    port map (
        clk            =>  clk,
        i_write_data   =>  s_register_write_data,
        i_write_addr   =>  s_register_file_write_addr,
        i_write_wren   =>  s_cu_reg_wren,
        o_read_a_data  =>  s_register_file_read_a_data,
        i_read_a_addr  =>  s_register_file_read_a_addr,        
        o_read_b_data  =>  s_register_file_read_b_data,
        i_read_b_addr  =>  s_register_file_read_b_addr
    );
    s_register_file_read_a_addr <= s_instruction_memory_read_data( 19 downto 15 );
    s_register_file_read_b_addr <= s_instruction_memory_read_data( 24 downto 20 );
    s_register_file_write_addr  <= s_instruction_memory_read_data( 11 downto  7 );


    MEM_to_REG_MUX : entity work.mux_switch_2
    generic map( bit_width  =>  C_BIT_WIDTH )
    port map(
        s  =>  s_cu_mem_to_reg,
        a  =>  s_alu_result,
        b  =>  s_data_memory_read_data,
        o  =>  s_mem_to_reg_out
    );

    
    PC_to_REG_MUX : entity work.mux_switch_2
    generic map( bit_width  =>  C_BIT_WIDTH )
    port map(
        s  =>  s_cu_pc_to_reg,
        a  =>  s_mem_to_reg_out,
        b  =>  s_pc_adder_one,
        o  =>  s_register_write_data
    );


end structure;
