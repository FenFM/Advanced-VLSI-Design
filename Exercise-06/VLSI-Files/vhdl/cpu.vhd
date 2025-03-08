library IEEE;
use IEEE.std_logic_1164.ALL;
use IEEE.numeric_std.ALL;

use work.generic_header.ALL;
use work.isa_riscv.ALL;
use work.program.ALL;
use work.misc.ALL;


entity cpu is
    port(
        clk : in std_logic;
        rst : in std_logic;

        i_instruction_memory_write_data : in  std_logic_vector( C_BIT_WIDTH-1 downto 0 );
        i_instruction_memory_write_addr : in  std_logic_vector( log2(C_IM_MEM_SIZE)-1 downto 0 );
        i_instruction_memory_write_wren : in  std_logic;

        o_instruction_memory_read_data  : out std_logic_vector( C_BIT_WIDTH-1 downto 0 );
        o_data_memory_read_data         : out std_logic_vector( C_BIT_WIDTH-1 downto 0 );
        o_register_file_read_a_data     : out std_logic_vector( C_BIT_WIDTH-1 downto 0 );
        o_register_file_read_b_data     : out std_logic_vector( C_BIT_WIDTH-1 downto 0 )
    );
end entity cpu;


architecture structure of cpu is
    -- signal for the program counter
    signal s_pc_jump      : std_logic;
    signal s_pc_adder_one : std_logic_vector( C_BIT_WIDTH-1 downto 0 );
    signal s_pc_adder_two : std_logic_vector( C_BIT_WIDTH-1 downto 0 );
    signal s_pc_value     : std_logic_vector( C_BIT_WIDTH-1 downto 0 );
    signal s_pc_value_sr  : std_logic_vector( C_BIT_WIDTH-1 downto 0 );

    
    -- signals for the alu
    signal s_alu_operand_a     : std_logic_vector( C_BIT_WIDTH-1 downto 0 );
    signal s_alu_operand_b     : std_logic_vector( C_BIT_WIDTH-1 downto 0 );
    signal s_alu_result        : std_logic_vector( C_BIT_WIDTH-1 downto 0 );
    signal s_alu_zero_flag     : std_logic;
    signal s_alu_overflow_flag : std_logic;

    signal s_inverse_zero      : std_logic;
    signal s_immediate         : std_logic_vector( C_BIT_WIDTH-1 downto 0 );

    -- signals for the instruction memory
    signal s_instruction_memory_read_data  : std_logic_vector( C_BIT_WIDTH-1 downto 0 ) ;
    signal s_instruction_memory_read_addr  : std_logic_vector( log2(C_IM_MEM_SIZE)-1 downto 0 );
    signal s_instruction_memory_read_rden  : std_logic;  

    -- signals for the data memory    
    signal s_data_memory_write_data : std_logic_vector( C_BIT_WIDTH-1 downto 0 ) ;
    signal s_data_memory_write_addr : std_logic_vector( log2(C_DM_MEM_SIZE)-1 downto 0 );
    signal s_data_memory_write_rden : std_logic;    
    signal s_data_memory_read_data  : std_logic_vector( C_BIT_WIDTH-1 downto 0 ) ;
    signal s_data_memory_read_data_aligned : std_logic_vector( C_BIT_WIDTH-1 downto 0 ) ;
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
--    signal s_mem_to_reg_out : std_logic_vector( C_REG_SIZE-1 downto 0 );

    -- signals for the control unit
    signal s_cu_alu_op     : std_logic_vector( 1 downto 0 );
    signal s_cu_alu_src    : std_logic;
    signal s_cu_alu_pass   : std_logic;
    signal s_cu_reg_wren   : std_logic;
    signal s_cu_mem_wren   : std_logic;
    signal s_cu_mem_rden   : std_logic;
    signal s_cu_mux_to_pc  : std_logic_vector( 1 downto 0 );
    signal s_cu_mux_to_reg : std_logic_vector( 1 downto 0 );

    signal s_alu_operation : std_logic_vector( 3 downto 0 );
    signal s_cu_alu_align  : std_logic_vector( 2 downto 0 );


begin
    CU : entity work.control_unit
    port map(
        i_instruction  =>  s_instruction_memory_read_data,
        o_alu_op       =>  s_cu_alu_op,
        o_alu_src      =>  s_cu_alu_src,
        o_alu_pass     =>  s_cu_alu_pass,
        o_reg_wren     =>  s_cu_reg_wren,
        o_mem_wren     =>  s_cu_mem_wren,
        o_mem_rden     =>  s_cu_mem_rden,
        o_mux_to_pc    =>  s_cu_mux_to_pc,
        o_mux_to_reg   =>  s_cu_mux_to_reg
    );


    PC : entity work.program_counter
    generic map(
        bit_width  =>  C_BIT_WIDTH,
        pc_offset  =>  C_PC_OFFSET
    )
    port map(
        clk              =>  clk,
        rst              =>  rst,
        i_alu_zero_flag  =>  s_alu_zero_flag,
        i_mux_signal     =>  s_cu_mux_to_pc,
        i_immediate      =>  s_immediate,
        i_jalr_value     =>  s_alu_result,
        o_adder_one      =>  s_pc_adder_one,
        o_adder_two      =>  s_pc_adder_two,
        o_pc             =>  s_pc_value 
    );
    s_pc_value_sr <= std_logic_vector(shift_right(unsigned(s_pc_value), 1));
    
    
    IM : entity work.memory
    generic map(
        word_size  =>  C_BIT_WIDTH,
        mem_size   =>  C_IM_MEM_SIZE
    )
    port map(
        clk           =>  clk,
        i_write_data  =>  i_instruction_memory_write_data,        
        i_write_addr  =>  i_instruction_memory_write_addr, 
        i_write_wren  =>  i_instruction_memory_write_wren,
        o_read_data   =>  s_instruction_memory_read_data,
        i_read_addr   =>  s_instruction_memory_read_addr,
        i_read_rden   =>  s_instruction_memory_read_rden                                     
    );
    s_instruction_memory_read_addr <= s_pc_value_sr( log2(C_IM_MEM_SIZE)-1 downto 0 );
    s_instruction_memory_read_rden <= '1';
    o_instruction_memory_read_data <= s_instruction_memory_read_data;
 

     
    IG : entity work.imm_gen
    generic map( C_BIT_WIDTH )
    port map(
        din   =>  s_instruction_memory_read_data,
        dout  =>  s_immediate
    );


    ALU_CU : entity work.alu_control_unit
    port map(
        i_instruction      =>  s_instruction_memory_read_data,
        i_alu_instruction  =>  s_cu_alu_op,
        o_alu_operation    =>  s_alu_operation,
        o_store_align      =>  s_cu_alu_align,
        o_inverse_zero     =>  s_inverse_zero
    );


    ALU_IN : entity work.store_align
    generic map( C_BIT_WIDTH )
    port map(
        control  =>  s_cu_alu_align,
        din      =>  s_register_file_read_a_data,
        dout     =>  s_alu_operand_a
    );


    ALU : entity work.alu
    generic map ( C_BIT_WIDTH )
    port map (
        i_operand_a      =>  s_alu_operand_a,
        i_operand_b      =>  s_alu_operand_b,
        i_operation      =>  s_alu_operation,
        i_inverse_zero   =>  s_inverse_zero,
        i_alu_pass       =>  s_cu_alu_pass,
        o_result         =>  s_alu_result,
        o_zero_flag      =>  s_alu_zero_flag,
        o_overflow_flag  =>  s_alu_overflow_flag
    );


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
        i_write_addr  =>  s_alu_result( log2(C_DM_MEM_SIZE)-1 downto 0 ), 
        i_write_wren  =>  s_cu_mem_wren,
        o_read_data   =>  s_data_memory_read_data,       
        i_read_addr   =>  s_alu_result( log2(C_DM_MEM_SIZE)-1 downto 0 ),
        i_read_rden   =>  s_cu_mem_rden
    );
    o_data_memory_read_data <= s_data_memory_read_data;


    DM_IN : entity work.store_align
    generic map( C_BIT_WIDTH )
    port map(
        control  =>  s_cu_alu_align,
        din      =>  s_data_memory_read_data,
        dout     =>  s_data_memory_read_data_aligned
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
    o_register_file_read_a_data <= s_register_file_read_a_data;
    o_register_file_read_b_data <= s_register_file_read_b_data;


    REG_MUX : entity work.mux_register
    generic map( C_BIT_WIDTH )
    port map(
        s      =>  s_cu_mux_to_reg,
        din_a  =>  s_alu_result,
        din_b  =>  s_data_memory_read_data_aligned,
        din_c  =>  s_pc_adder_one,
        din_d  =>  s_pc_adder_two,
        dout   =>  s_register_write_data
    );


end structure;
