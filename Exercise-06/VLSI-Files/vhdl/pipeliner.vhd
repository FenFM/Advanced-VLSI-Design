library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;


entity pipeliner is
    port(
        clk : in std_logic;
        rst : in std_logic;
        
        i_instruction_memory_read_data_reg : in std_logic_vector( 31 downto 0 );
        i_register_file_read_a_data        : in std_logic_vector( 31 downto 0 );
        i_register_file_read_b_data        : in std_logic_vector( 31 downto 0 );       
        i_immediate                        : in std_logic_vector( 31 downto 0 );     
        
        i_alu_result                : in std_logic_vector( 31 downto 0 );
        i_alu_forwarding_mux_b_data : in std_logic_vector( 31 downto 0 );
        i_alu_zero_flag             : in std_logic;
        i_alu_overflow_flag         : in std_logic;
        
        o_instruction_memory_read_data_reg_2 : out std_logic_vector( 31 downto 0 );
        o_instruction_memory_read_data_reg_3 : out std_logic_vector( 31 downto 0 );
        o_instruction_memory_read_data_reg_4 : out std_logic_vector( 31 downto 0 );
        o_instruction_memory_read_data_reg_5 : out std_logic_vector( 31 downto 0 );
        o_register_file_read_a_data_reg : out std_logic_vector( 31 downto 0 );
        o_register_file_read_b_data_reg : out std_logic_vector( 31 downto 0 );
        o_immediate_reg : out std_logic_vector( 31 downto 0 );
        
        o_alu_result_reg_1         : out std_logic_vector( 31 downto 0 );
        o_alu_result_reg_2         : out std_logic_vector( 31 downto 0 );
        o_alu_forwarding_mux_b_reg : out std_logic_vector( 31 downto 0 );
        o_alu_zero_flag_reg        : out std_logic;
        o_alu_overflow_flag_reg    : out std_logic
    );
end pipeliner;


architecture behavior of pipeliner is
    type shift_reg_vec is array( 3 downto 0 ) of std_logic_vector( 31 downto 0 );
    signal s_instruction_memory_read_data_reg : shift_reg_vec;
    signal s_register_file_read_a_data_reg    : shift_reg_vec;
    signal s_register_file_read_b_data_reg    : shift_reg_vec;
    signal s_immediate_reg            : shift_reg_vec;
    signal s_alu_result_reg           : shift_reg_vec;
    signal s_alu_forwarding_mux_b_reg : shift_reg_vec;
    signal s_alu_zero_flag_reg     : std_logic_vector( 3 downto 0 );
    signal s_alu_overflow_flag_reg : std_logic_vector( 3 downto 0 );
    

begin
    process( clk )
    begin
        if rising_edge( clk ) then
            for i in 3 downto 1 loop
                s_instruction_memory_read_data_reg( i ) <= s_instruction_memory_read_data_reg( i-1 );
                s_register_file_read_a_data_reg( i )    <= s_register_file_read_a_data_reg( i-1 );
                s_register_file_read_b_data_reg( i )    <= s_register_file_read_b_data_reg( i-1 );
                s_immediate_reg( i )                    <= s_immediate_reg( i-1 );        
                s_alu_result_reg( i )                   <= s_alu_result_reg( i-1 ); 
                s_alu_forwarding_mux_b_reg( i )         <= s_alu_forwarding_mux_b_reg( i-1 );      
                s_alu_zero_flag_reg( i )                <= s_alu_zero_flag_reg( i-1 );    
                s_alu_overflow_flag_reg( i )            <= s_alu_overflow_flag_reg( i-1 );
            end loop;
            
            s_instruction_memory_read_data_reg( 0 ) <= i_instruction_memory_read_data_reg;
            s_register_file_read_a_data_reg( 0 )    <= i_register_file_read_a_data;
            s_register_file_read_b_data_reg( 0 )    <= i_register_file_read_b_data;
            s_immediate_reg( 0 )                    <= i_immediate;
            s_alu_result_reg( 0 )                   <= i_alu_result;
            s_alu_forwarding_mux_b_reg( 0 )         <= i_alu_forwarding_mux_b_data;
            s_alu_zero_flag_reg( 0 )                <= i_alu_zero_flag;
            s_alu_overflow_flag_reg( 0 )            <= i_alu_overflow_flag;
            end if;    
    end process;


    o_instruction_memory_read_data_reg_2 <= s_instruction_memory_read_data_reg( 0 );
    o_instruction_memory_read_data_reg_3 <= s_instruction_memory_read_data_reg( 1 );
    o_instruction_memory_read_data_reg_4 <= s_instruction_memory_read_data_reg( 2 );
    o_instruction_memory_read_data_reg_5 <= s_instruction_memory_read_data_reg( 3 );
    o_register_file_read_a_data_reg      <= s_register_file_read_a_data_reg( 0 );
    o_register_file_read_b_data_reg      <= s_register_file_read_b_data_reg( 0 );
    o_immediate_reg                      <= s_immediate_reg( 0 );                                                  
    o_alu_result_reg_1                   <= s_alu_result_reg( 0 );           
    o_alu_result_reg_2                   <= s_alu_result_reg( 1 );
    o_alu_forwarding_mux_b_reg           <= s_alu_forwarding_mux_b_reg( 0 );
    o_alu_zero_flag_reg                  <= s_alu_zero_flag_reg( 0 );           
    o_alu_overflow_flag_reg              <= s_alu_overflow_flag_reg( 0 );           

end behavior;
