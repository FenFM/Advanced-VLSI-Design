library IEEE;
use IEEE.std_logic_1164.ALL;
use IEEE.numeric_std.ALL;
use work.isa_riscv.ALL;


entity control_unit is
    generic(
        bit_width : integer := 8
    );
    port(
        clk                : in  std_logic;
        rst                : in  std_logic;
        i_instruction      : in  std_logic_vector( 31 downto 0 );
        i_hazard_mux_src_1 : in  std_logic;
        i_hazard_mux_src_2 : in  std_logic;
        o_alu_op           : out std_logic_vector(  1 downto 0 );
        o_alu_src          : out std_logic;
        o_alu_pass         : out std_logic;
        o_reg_wren_2       : out std_logic;
        o_reg_wren_3       : out std_logic;
        o_reg_wren_4       : out std_logic;
        o_mem_wren         : out std_logic;
        o_mem_rden_1       : out std_logic;
        o_mem_rden_2       : out std_logic;
        o_mux_to_reg       : out std_logic_vector( 1 downto 0 );
        o_mux_to_pc_1      : out std_logic_vector( 1 downto 0 );
        o_mux_to_pc_2      : out std_logic_vector( 1 downto 0 )
    );
end entity;


architecture behavior of control_unit is
    -- constants for the mux switch to the register
    constant from_alu : std_logic_vector( 1 downto 0 ) := "00";  -- alu         to reg
    constant from_mem : std_logic_vector( 1 downto 0 ) := "01";  -- data memory to reg
    constant from_pca : std_logic_vector( 1 downto 0 ) := "10";  -- pc + 4      to reg
    constant from_pcb : std_logic_vector( 1 downto 0 ) := "11";  -- pc + imm    to reg

    -- constants for the mux switch for the program counter
    constant no_jump    : std_logic_vector( 1 downto 0 ) := "00";  -- no jump
    constant con_jump   : std_logic_vector( 1 downto 0 ) := "01";  -- conditional jump
    constant uncon_jump : std_logic_vector( 1 downto 0 ) := "10";  -- unconditional jump
    constant jalr_jump  : std_logic_vector( 1 downto 0 ) := "11";  -- JALR jump
    
    signal s_alu_op     : std_logic_vector( 1 downto 0 );
    signal s_mux_to_reg : std_logic_vector( 1 downto 0 );
    signal s_mux_to_pc  : std_logic_vector( 1 downto 0 );    
    signal s_alu_src    : std_logic;
    signal s_alu_pass   : std_logic;
    signal s_reg_wren   : std_logic;
    signal s_mem_wren   : std_logic;
    signal s_mem_rden   : std_logic;    
    
    type shift_reg_vec_2  is array( 3 downto 0 ) of std_logic_vector( 1 downto 0 );
    signal s_alu_op_reg     : shift_reg_vec_2;
    signal s_mux_to_reg_reg : shift_reg_vec_2;
    signal s_mux_to_pc_reg  : shift_reg_vec_2;    
    signal s_alu_src_reg    : std_logic_vector( 3 downto 0 );
    signal s_alu_pass_reg   : std_logic_vector( 3 downto 0 );
    signal s_reg_wren_reg   : std_logic_vector( 3 downto 0 );
    signal s_mem_wren_reg   : std_logic_vector( 3 downto 0 );
    signal s_mem_rden_reg   : std_logic_vector( 3 downto 0 );


begin
    -- set all output signals based on instruction
    set_output_flags : process( i_instruction(6 downto 0) )
    begin
        s_alu_op      <= "00";
        s_alu_src     <=  '0';
        s_alu_pass    <=  '0';
        s_reg_wren    <=  '0';
        s_mem_wren    <=  '0';
        s_mem_rden    <=  '0';
        s_mux_to_reg  <= from_alu;
        s_mux_to_pc   <= no_jump;

        case i_instruction(6 downto 0) is
            when op_IMM     =>  -- register-immediate instructions
                s_alu_op     <= "11";
                s_alu_src    <=  '1';
                s_reg_wren   <=  '1';

            when op_LUI     =>  -- load upper immediate
                s_alu_src     <=  '1';
                s_alu_pass    <=  '1';
                s_reg_wren    <=  '1';

            when op_AUIPC   =>  -- add upper immediate to program counter
                s_reg_wren    <=  '1';
                s_mux_to_reg  <= from_pcb;
            
            when op_OP      =>  -- register-register instructions
                s_alu_op      <= "10";
                s_alu_src     <=  '0';
                s_reg_wren    <=  '1';

            when op_JAL     =>  -- jump and link
                s_reg_wren    <=  '1';
                s_mux_to_pc   <= uncon_jump;
                s_mux_to_reg  <= from_pca;

            when op_JALR    =>  -- jump and link register
                s_alu_op      <= "11";
                s_alu_src     <=  '1';
                s_reg_wren    <=  '1';
                s_mux_to_pc   <= jalr_jump;
                s_mux_to_reg  <= from_pca;

            when op_BRANCH  =>  -- conditional branches
                s_alu_op      <= "01";
                s_alu_src     <=  '0';
                s_mux_to_pc   <= con_jump;

            when op_LOAD    =>  -- load upper immediate
                s_alu_op      <= "00";
                s_alu_src     <=  '1';
                s_reg_wren    <=  '1';
                s_mem_rden    <=  '1';
                s_mux_to_reg  <= from_mem;

            when op_STORE   =>  -- store data in memory
                s_alu_op      <= "00";
                s_alu_src     <=  '1';
                s_mem_wren    <=  '1';

            when others     =>
        end case;
    end process set_output_flags;
    
    
    shift_registers : process( all )
    begin
        if rising_edge( clk ) then
            s_alu_op_reg     <= s_alu_op_reg    (s_alu_op_reg    'high -1 downto s_alu_op_reg    'low) & s_alu_op;
            s_mux_to_reg_reg <= s_mux_to_reg_reg(s_mux_to_reg_reg'high -1 downto s_mux_to_reg_reg'low) & s_mux_to_reg;
            s_mux_to_pc_reg  <= s_mux_to_pc_reg (s_mux_to_pc_reg 'high -1 downto s_mux_to_pc_reg 'low) & s_mux_to_pc;
            s_alu_src_reg    <= s_alu_src_reg   (s_alu_src_reg   'high -1 downto s_alu_src_reg   'low) & s_alu_src;
            s_alu_pass_reg   <= s_alu_pass_reg  (s_alu_pass_reg  'high -1 downto s_alu_pass_reg  'low) & s_alu_pass;
            s_reg_wren_reg   <= s_reg_wren_reg  (s_reg_wren_reg  'high -1 downto s_reg_wren_reg  'low) & s_reg_wren;
            s_mem_wren_reg   <= s_mem_wren_reg  (s_mem_wren_reg  'high -1 downto s_mem_wren_reg  'low) & s_mem_wren;
            s_mem_rden_reg   <= s_mem_rden_reg  (s_mem_rden_reg  'high -1 downto s_mem_rden_reg  'low) & s_mem_rden;        

            if i_hazard_mux_src_2 = '0' then
                s_alu_op_reg(1)     <= "00";     
                s_mux_to_reg_reg(1) <=  from_alu;     
                s_mux_to_pc_reg(1)  <=  no_jump;     
                s_alu_src_reg(1)    <=  '0';    
                s_alu_pass_reg(1)   <=  '0';    
                s_reg_wren_reg(1)   <=  '0';    
                s_mem_wren_reg(1)   <=  '0';
                s_mem_rden_reg(1)   <=  '0';
            end if;     
        
            if rst = '1' then
                for i in 0 to 3 loop
                    s_alu_op_reg(i)     <= "00";     
                    s_mux_to_reg_reg(i) <=  from_alu;     
                    s_mux_to_pc_reg(i)  <=  no_jump;     
                    s_alu_src_reg(i)    <=  '0';    
                    s_alu_pass_reg(i)   <=  '0';    
                    s_reg_wren_reg(i)   <=  '0';    
                    s_mem_wren_reg(i)   <=  '0';
                    s_mem_rden_reg(i)   <=  '0';
                end loop;
            end if;
        end if;
        
--        if i_hazard_mux_src_2 = '0' then
--            s_alu_op_reg(0)     <= "00";     
--            s_mux_to_reg_reg(0) <=  from_alu;     
--            s_mux_to_pc_reg(0)  <=  no_jump;     
--            s_alu_src_reg(0)    <=  '0';    
--            s_alu_pass_reg(0)   <=  '0';    
--            s_reg_wren_reg(0)   <=  '0';    
--            s_mem_wren_reg(0)   <=  '0';
--            s_mem_rden_reg(0)   <=  '0';
--        end if;          
        
    end process shift_registers;

    
    -- wire output to corresponding register
    o_alu_op      <= s_alu_op_reg  ( 0 );
    o_alu_src     <= s_alu_src_reg ( 0 );
    o_alu_pass    <= s_alu_pass_reg( 0 );
    o_reg_wren_2  <= s_reg_wren_reg( 1 );
    o_reg_wren_3  <= s_reg_wren_reg( 2 );
    o_reg_wren_4  <= s_reg_wren_reg( 3 );
    o_mem_wren    <= s_mem_wren_reg( 1 );
    o_mem_rden_1  <= s_mem_rden_reg( 0 );
    o_mem_rden_2  <= s_mem_rden_reg( 1 );
    o_mux_to_reg  <= s_mux_to_reg_reg( 2 );
    o_mux_to_pc_1 <= s_mux_to_pc_reg ( 0 );
    o_mux_to_pc_2 <= s_mux_to_pc_reg ( 1 );


end behavior;
