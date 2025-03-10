library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;


entity pipeliner is
    port(
        clk : in std_logic;
        rst : in std_logic;
        
        -- IF/ID
        i_instruction_memory_read_data     : in  std_logic_vector( 31 downto 0 );
        o_instruction_memory_read_data_reg : out std_logic_vector( 31 downto 0 );
        
        -- ID/EX
        i_register_file_read_a_data       : in  std_logic_vector( 31 downto 0 );
        i_register_file_read_b_data       : in  std_logic_vector( 31 downto 0 );
        o_register_file_read_a_data_reg   : out std_logic_vector( 31 downto 0 );
        o_register_file_read_b_data_reg_1 : out std_logic_vector( 31 downto 0 );
        
        i_immediate       : in  std_logic_vector( 31 downto 0 );
        o_immediate_reg_1 : out std_logic_vector( 31 downto 0 );
        
        -- EX/MEM
        o_immediate_reg_2 : out std_logic_vector( 31 downto 0 );
        
        i_alu_result            : in  std_logic_vector( 31 downto 0 );
        i_alu_zero_flag         : in  std_logic;
        i_alu_overflow_flag     : in  std_logic;
        o_alu_result_reg_1      : out std_logic_vector( 31 downto 0 );
        o_alu_zero_flag_reg     : out std_logic;
        o_alu_overflow_flag_reg : out std_logic;
        
        
        o_register_file_read_b_data_reg_2 : out std_logic_vector( 31 downto 0 );
        
        -- MEM/WB
        i_data_memory_read_data     : in  std_logic_vector( 31 downto 0 );
        o_data_memory_read_data_reg : out std_logic_vector( 31 downto 0 );
        o_alu_result_reg_2          : out std_logic_vector( 31 downto 0 )
    );
end pipeliner;


architecture behavior of pipeliner is


begin
    process( clk )
    begin
        if rising_edge( clk ) then
            -- MEM/WB
            o_data_memory_read_data_reg <= i_data_memory_read_data;
            o_alu_result_reg_2 <= o_alu_result_reg_1;
            
            -- EX/MEM
            o_alu_result_reg_1      <= i_alu_result;
            o_alu_zero_flag_reg     <= i_alu_zero_flag;
            o_alu_overflow_flag_reg <= i_alu_overflow_flag;
            o_register_file_read_b_data_reg_2 <= o_register_file_read_b_data_reg_1;
            
            -- ID/EX 
            o_register_file_read_a_data_reg   <= i_register_file_read_a_data;
            o_register_file_read_b_data_reg_1 <= i_register_file_read_b_data;
            o_immediate_reg_1 <= i_immediate;
            
            -- IF/ID
            o_instruction_memory_read_data_reg <= i_instruction_memory_read_data;
        end if;    
    end process;

end behavior;
