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
    -- signals for the program counter
    signal s_pc_jump          : std_logic;
    signal s_pc_adder_one_reg : std_logic_vector( C_BIT_WIDTH-1 downto 0 );
    signal s_pc_adder_two_reg : std_logic_vector( C_BIT_WIDTH-1 downto 0 );
    signal s_pc_value         : std_logic_vector( C_BIT_WIDTH-1 downto 0 );
    signal s_pc_value_sr      : std_logic_vector( C_BIT_WIDTH-1 downto 0 );

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
    signal s_data_memory_write_wren : std_logic;   
    signal s_data_memory_read_data  : std_logic_vector( C_BIT_WIDTH-1 downto 0 ) ;
    signal s_data_memory_read_data_aligned : std_logic_vector( C_BIT_WIDTH-1 downto 0 ) ;
    signal s_data_memory_read_addr  : std_logic_vector( log2(C_DM_MEM_SIZE)-1 downto 0 );
    signal s_data_memory_read_rden  : std_logic; 

    -- signals for the register file
    signal s_register_file_read_a_data : std_logic_vector( C_REG_SIZE-1 downto 0 );
    signal s_register_file_read_b_data : std_logic_vector( C_REG_SIZE-1 downto 0 );
    signal s_register_write_data       : std_logic_vector( C_REG_SIZE-1 downto 0 );
    signal s_register_file_write_addr  : std_logic_vector( 4 downto 0 );
    signal s_register_file_write_wren  : std_logic;
    signal s_register_file_read_a_addr : std_logic_vector( 4 downto 0 );
    signal s_register_file_read_b_addr : std_logic_vector( 4 downto 0 );

    -- signals for the control unit
    signal s_acu_operation     : std_logic_vector( 1 downto 0 );
    signal s_alu_mux_b_src     : std_logic;
    signal s_alu_passthrough_b : std_logic;
    signal s_pc_mux_src        : std_logic_vector( 1 downto 0 );
    signal s_reg_mux_src       : std_logic_vector( 1 downto 0 );

    -- signals for the alu control unit
    signal s_alu_operation         : std_logic_vector( 4 downto 0 );
    signal s_alu_align_input_a_src : std_logic_vector( 2 downto 0 );
    signal s_dm_align_output_src   : std_logic_vector( 2 downto 0 );
    
    -- signals for the pipliner
    signal s_instruction_memory_read_data_reg_1 : std_logic_vector( 31 downto 0 );
    signal s_instruction_memory_read_data_reg_2 : std_logic_vector( 31 downto 0 );
    signal s_instruction_memory_read_data_reg_3 : std_logic_vector( 31 downto 0 );
    signal s_instruction_memory_read_data_reg_4 : std_logic_vector( 31 downto 0 );
    signal s_register_file_read_a_data_reg   : std_logic_vector( 31 downto 0 );
    signal s_register_file_read_b_data_reg_1 : std_logic_vector( 31 downto 0 );
    signal s_register_file_read_b_data_reg_2 : std_logic_vector( 31 downto 0 );
    signal s_immediate_reg             : std_logic_vector( 31 downto 0 );
    signal s_alu_result_reg_1          : std_logic_vector( 31 downto 0 );
    signal s_alu_result_reg_2          : std_logic_vector( 31 downto 0 );
    signal s_alu_zero_flag_reg         : std_logic;
    signal s_alu_overflow_flag_reg     : std_logic;
    signal s_data_memory_read_data_reg : std_logic_vector( 31 downto 0 );
    
    -- signals for the forwarding unit
    signal s_forwarding_mux_a_src : std_logic_vector( 1 downto 0 );
    signal s_forwarding_mux_b_src : std_logic_vector( 1 downto 0 );
    signal s_alu_forwarding_mux_a_data : std_logic_vector( 31 downto 0 );
    signal s_alu_forwarding_mux_b_data : std_logic_vector( 31 downto 0 );


begin
    CU : entity work.control_unit
    port map(
        clk            =>  clk,
        rst            =>  rst,
        i_instruction  =>  s_instruction_memory_read_data_reg_1,
        o_alu_op       =>  s_acu_operation,
        o_alu_src      =>  s_alu_mux_b_src,
        o_alu_pass     =>  s_alu_passthrough_b,
        o_reg_wren     =>  s_register_file_write_wren,
        o_mem_wren     =>  s_data_memory_write_wren,
        o_mem_rden     =>  s_data_memory_read_rden,
        o_mux_to_pc    =>  s_pc_mux_src,
        o_mux_to_reg   =>  s_reg_mux_src
    );


    PC : entity work.program_counter
    generic map(
        bit_width  =>  C_BIT_WIDTH,
        pc_offset  =>  C_PC_OFFSET
    )
    port map(
        clk              =>  clk,
        rst              =>  rst,
        i_alu_zero_flag  =>  s_alu_zero_flag_reg,
        i_mux_signal     =>  s_pc_mux_src,
        i_immediate      =>  s_immediate_reg,
        i_jalr_value     =>  s_alu_result_reg_1,
        o_adder_one_reg  =>  s_pc_adder_one_reg,
        o_adder_two_reg  =>  s_pc_adder_two_reg,
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
    s_instruction_memory_read_addr     <= s_pc_value_sr( log2(C_IM_MEM_SIZE)-1 downto 0 );
    s_instruction_memory_read_rden     <= '1';
    s_instruction_memory_read_data_reg_1 <= s_instruction_memory_read_data;
    
    o_instruction_memory_read_data     <= s_instruction_memory_read_data;
 

    IG : entity work.imm_gen
    generic map( C_BIT_WIDTH )
    port map(
        din   =>  s_instruction_memory_read_data_reg_1,
        dout  =>  s_immediate
    );


    ALU_CU : entity work.alu_control_unit
    port map(
        clk                =>  clk,
        i_instruction      =>  s_instruction_memory_read_data_reg_2,
        i_alu_instruction  =>  s_acu_operation,
        o_alu_operation    =>  s_alu_operation,
        o_alu_align        =>  s_alu_align_input_a_src,
        o_dm_align         =>  s_dm_align_output_src,
        o_inverse_zero     =>  s_inverse_zero
    );

   
    ALU_MUX_FORW_A : entity work.mux_switch_4
    generic map( C_BIT_WIDTH )
    port map(
        s  =>  s_forwarding_mux_a_src,
        a  =>  s_register_file_read_a_data_reg,
        b  =>  s_register_write_data,
        c  =>  s_alu_result_reg_1,
        d  =>  x"--------",
        o  =>  s_alu_forwarding_mux_a_data
    );
    
    ALU_MUX_FORW_B : entity work.mux_switch_4
    generic map( C_BIT_WIDTH )
    port map(
        s  =>  s_forwarding_mux_b_src,
        a  =>  s_register_file_read_b_data_reg_1,
        b  =>  s_register_write_data,
        c  =>  s_alu_result_reg_1,
        d  =>  x"--------",
        o  =>  s_alu_forwarding_mux_b_data
    );
     
    ALU_IN_A : entity work.store_align
    generic map( C_BIT_WIDTH )
    port map(
        control  =>  s_alu_align_input_a_src,
        din      =>  s_alu_forwarding_mux_a_data,
        dout     =>  s_alu_operand_a
    );
    
    ALU_MUX_B : entity work.mux_switch_2
    generic map( C_BIT_WIDTH )
    port map (
        s  =>  s_alu_mux_b_src,
        a  =>  s_alu_forwarding_mux_b_data,
        b  =>  s_immediate_reg,
        o  =>  s_alu_operand_b
    );
    
    ALU : entity work.alu
    generic map ( C_BIT_WIDTH )
    port map (
        i_operand_a      =>  s_alu_operand_a,
        i_operand_b      =>  s_alu_operand_b,
        i_operation      =>  s_alu_operation,
        i_inverse_zero   =>  s_inverse_zero,
        i_alu_pass       =>  s_alu_passthrough_b,
        o_result         =>  s_alu_result,
        o_zero_flag      =>  s_alu_zero_flag,
        o_overflow_flag  =>  s_alu_overflow_flag
    );
    
    
    FORW_UNIT : entity work.forwarding_unit
    generic map( C_REG_SIZE )
    port map(
        i_instruction_memory_read_data_reg_2  =>  s_instruction_memory_read_data_reg_2,
        i_instruction_memory_read_data_reg_3  =>  s_instruction_memory_read_data_reg_3,
        i_instruction_memory_read_data_reg_4  =>  s_instruction_memory_read_data_reg_4,
        o_mux_a_src  =>  s_forwarding_mux_a_src,
        o_mux_b_src  =>  s_forwarding_mux_b_src
    );


    DM : entity work.memory
    generic map(
        word_size  =>  C_BIT_WIDTH,
        mem_size   =>  C_DM_MEM_SIZE
    )
    port map (
        clk           =>  clk,
        i_write_data  =>  s_register_file_read_b_data_reg_2,        
        i_write_addr  =>  s_alu_result_reg_1( log2(C_DM_MEM_SIZE)-1 downto 0 ), 
        i_write_wren  =>  s_data_memory_write_wren,
        o_read_data   =>  s_data_memory_read_data,       
        i_read_addr   =>  s_alu_result_reg_1( log2(C_DM_MEM_SIZE)-1 downto 0 ),
        i_read_rden   =>  s_data_memory_read_rden
    );
    o_data_memory_read_data <= s_data_memory_read_data;

    DM_OUT : entity work.store_align
    generic map( C_BIT_WIDTH )
    port map(
        control  =>  s_dm_align_output_src,
        din      =>  s_data_memory_read_data,
        dout     =>  s_data_memory_read_data_aligned
    );
    s_data_memory_read_data_reg <= s_data_memory_read_data_aligned;


    RF : entity work.register_file
    generic map(
        word_size  =>  C_REG_WORD_SIZE,
        reg_size   =>  C_REG_SIZE      
    )
    port map (
        clk            =>  clk,
        i_write_data   =>  s_register_write_data,
        i_write_addr   =>  s_register_file_write_addr,
        i_write_wren   =>  s_register_file_write_wren,
        o_read_a_data  =>  s_register_file_read_a_data,
        i_read_a_addr  =>  s_register_file_read_a_addr,        
        o_read_b_data  =>  s_register_file_read_b_data,
        i_read_b_addr  =>  s_register_file_read_b_addr
    );
    s_register_file_read_a_addr <= s_instruction_memory_read_data_reg_1( 19 downto 15 );
    s_register_file_read_b_addr <= s_instruction_memory_read_data_reg_1( 24 downto 20 );
    s_register_file_write_addr  <= s_instruction_memory_read_data_reg_4( 11 downto  7 );
    o_register_file_read_a_data <= s_register_file_read_a_data;
    o_register_file_read_b_data <= s_register_file_read_b_data;

    REG_MUX : entity work.mux_switch_4
    generic map( C_BIT_WIDTH )
    port map(
        s  =>  s_reg_mux_src,
        a  =>  s_alu_result_reg_2,           -- alu         to reg
        b  =>  s_data_memory_read_data_reg,  -- data memory to reg
        c  =>  s_pc_adder_one_reg,           -- pc + 4      to reg
        d  =>  s_pc_adder_two_reg,           -- pc + imm    to reg
        o  =>  s_register_write_data
    );


    PIPE : entity work.pipeliner
    port map(
        clk  =>  clk,
        rst  =>  rst,
      
        i_instruction_memory_read_data_reg  =>  s_instruction_memory_read_data_reg_1,
        i_register_file_read_a_data         =>  s_register_file_read_a_data,
        i_register_file_read_b_data         =>  s_register_file_read_b_data,       
        i_immediate                         =>  s_immediate,     
        i_alu_result                        =>  s_alu_result,
        i_alu_zero_flag                     =>  s_alu_zero_flag,
        i_alu_overflow_flag                 =>  s_alu_overflow_flag,
        
        o_instruction_memory_read_data_reg_2  =>  s_instruction_memory_read_data_reg_2,
        o_instruction_memory_read_data_reg_3  =>  s_instruction_memory_read_data_reg_3,
        o_instruction_memory_read_data_reg_4  =>  s_instruction_memory_read_data_reg_4,
        o_register_file_read_a_data_reg       =>  s_register_file_read_a_data_reg,
        o_register_file_read_b_data_reg_1     =>  s_register_file_read_b_data_reg_1,
        o_register_file_read_b_data_reg_2     =>  s_register_file_read_b_data_reg_2,
        o_immediate_reg                       =>  s_immediate_reg,
        o_alu_result_reg_1                    =>  s_alu_result_reg_1,
        o_alu_result_reg_2                    =>  s_alu_result_reg_2,
        o_alu_zero_flag_reg                   =>  s_alu_zero_flag_reg,
        o_alu_overflow_flag_reg               =>  s_alu_overflow_flag_reg
    );


end structure;
