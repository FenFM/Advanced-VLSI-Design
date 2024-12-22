library IEEE;
use IEEE.std_logic_1164.ALL;
use IEEE.numeric_std.ALL;

use work.GENERIC_HEADER.ALL;
use work.isa_riscv.ALL;


entity cpu is
    port(
        clk : in std_logic;
        rst : in std_logic;
    );
end entity cpu;


architecture structure of cpu is
    -- signals for the program counter
    signal s_pc_din  : std_logic_vector( C_BIT_WIDTH-1 downto 0 );
    signal s_pc_wren : std_logic;
    signal s_pc_dout : std_logic_vector( C_BIT_WIDTH-1 downto 0 );

    -- signals for the alu
    signal s_alu_operand_a : std_logic_vector( C_BIT_WIDTH-1 downto 0 );
    signal s_alu_operand_b : std_logic_vector( C_BIT_WIDTH-1 downto 0 );
    signal s_alu_op        : std_logic_vector( 3 downto 0 );
    signal s_alu_result    : std_logic_vector(  C_BIT_WIDTH-1 downto 0  );   

    -- signals for the instruction memory
    signal s_instruction_memory_write_data : std_logic_vector( C_BIT_WIDTH-1   downto 0);
    signal s_instruction_memory_write_addr : std_logic_vector( C_IM_MEM_SIZE-1 downto 0);
    signal s_instruction_memory_write_wren : std_logic;
    signal s_instruction_memory_read_data  : std_logic_vector( C_BIT_WIDTH-1   downto 0);
    signal s_instruction_memory_read_addr  : std_logic_vector( C_IM_MEM_SIZE-1 downto 0);
    signal s_instruction_memory_read_rden  : std_logic;

    -- signals for the data memory
    signal s_data_memory_write_data : std_logic_vector( C_BIT_WIDTH-1   downto 0);
    signal s_data_memory_write_addr : std_logic_vector( C_DM_MEM_SIZE-1 downto 0);
    signal s_data_memory_write_wren : std_logic;
    signal s_data_memory_read_data  : std_logic_vector( C_BIT_WIDTH-1   downto 0);
    signal s_data_memory_read_addr  : std_logic_vector( C_DM_MEM_SIZE-1 downto 0);
    signal s_data_memory_read_rden  : std_logic;

    -- signals for the register file
    signal s_register_file_read_a_data : std_logic_vector( C_REG_SIZE-1      downto 0);
    signal s_register_file_read_a_addr : std_logic_vector( C_REG_WORD_SIZE-1 downto 0);
    signal s_register_file_read_b_data : std_logic_vector( C_REG_SIZE-1      downto 0);
    signal s_register_file_read_b_addr : std_logic_vector( C_REG_WORD_SIZE-1 downto 0);
    signal s_register_file_write_data  : std_logic_vector( C_REG_SIZE-1      downto 0);
    signal s_register_file_write_addr  : std_logic_vector( C_REG_WORD_SIZE-1 downto 0);
    signal s_register_file_write_wren  : std_logic;


begin
    program_counter_ins : entity work.program_counter
    generic map (
        bit_width  =>  C_BIT_WIDTH,
        pc_offset  =>  C_PC_OFFSET
    )
    port map (
        clk        =>  clk,
        rst        =>  rst,
        i_pc_din   =>  s_pc_din,
        i_pc_wren  =>  s_pc_wren,
        o_pc_dout  =>  s_pc_dout
    );


    entity alu is
    generic map ( bit_width  =>  C_BIT_WIDTH )
    port map (
        i_alu_operand_a  =>  s_alu_operand_a,
        i_alu_operand_b  =>  s_alu_operand_b,
        i_alu_op         =>  s_alu_op,      
        o_alu_result     =>  s_alu_result    
    );
    s_alu_operand_a <= ;
    s_alu_operand_b <= ;
    s_alu_op        <= ;


    instruction_memory_ins : entity work.memory
    generic map (
        word_size  =>  C_BIT_WIDTH,
        mem_size   =>  C_IM_MEM_SIZE
    )
    port map (
        clk                  =>  clk,
        i_memory_write_data  =>  s_instruction_memory_write_data,        
        i_memory_write_addr  =>  s_instruction_memory_write_addr, 
        i_memory_write_wren  =>  s_instruction_memory_write_wren,
        o_memory_read_data   =>  s_instruction_memory_read_data,       
        i_memory_read_addr   =>  s_instruction_memory_read_addr,
        i_memory_read_rden   =>  s_instruction_memory_read_rden                                     
    );
    s_instruction_memory_write_data <= ;
    s_instruction_memory_write_addr <= ;
    s_instruction_memory_write_wren <= ;

    s_instruction_memory_read_addr <= s_pc_dout;
    s_instruction_memory_read_rden <= '1';


    data_memory_ins : entity work.memory
    generic map (
        word_size  =>  C_BIT_WIDTH,
        mem_size   =>  C_DM_MEM_SIZE
    )
    port map (
        clk                  =>  clk,
        i_memory_write_data  =>  s_data_memory_write_data,        
        i_memory_write_addr  =>  s_data_memory_write_addr, 
        i_memory_write_wren  =>  s_data_memory_write_wren,
        o_memory_read_data   =>  s_data_memory_read_data,       
        i_memory_read_addr   =>  s_data_memory_read_addr,
        i_memory_read_rden   =>  s_data_memory_read_rden                                     
    );
    s_data_memory_write_data <= s_register_file_read_b_data;
    s_data_memory_write_addr <= ;
    s_data_memory_write_wren <= ;

    s_data_memory_read_addr <= ;
    s_data_memory_read_rden <= ;


    register_file_ins : entity work.register_file
    generic map (
        word_size  =>  C_REG_WORD_SIZE,
        reg_size   =>  C_REG_SIZE      
    );
    port map (
        clk                     =>  clk,
        i_register_write_data   =>  s_register_file_write_data,
        i_register_write_addr   =>  s_register_file_write_addr,
        i_register_write_wren   =>  s_register_file_write_wren,
        o_register_read_a_data  =>  s_register_file_read_a_data,
        i_register_read_a_addr  =>  s_register_file_read_a_addr,
        o_register_read_b_data  =>  s_register_file_read_b_data,
        i_register_read_b_addr  =>  s_register_file_read_b_addr
    );
    s_register_file_write_data <= ;
    s_register_file_write_addr <= s_instruction_memory_read_data;
    s_register_file_write_wren <= ;

    s_register_file_read_a_data <= s_alu_operand_a;
    s_register_file_read_a_addr <= s_instruction_memory_read_data;

    s_register_file_read_b_data <= s_alu_operand_b;
    s_register_file_read_b_addr <= s_instruction_memory_read_data;


end structure;
