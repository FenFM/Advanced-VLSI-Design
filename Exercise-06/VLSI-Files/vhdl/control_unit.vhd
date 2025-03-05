library IEEE;
use IEEE.std_logic_1164.ALL;
use IEEE.numeric_std.ALL;
use work.isa_riscv.ALL;


entity control_unit is
    generic(
        bit_width : integer := 8
    );
    port(
        i_instruction  : in  std_logic_vector( 31 downto 0 );
        o_con_jump     : out std_logic;
        o_uncon_jump   : out std_logic;
        o_jarl_jump    : out std_logic;
        o_alu_op       : out std_logic_vector(  1 downto 0 );
        o_alu_src      : out std_logic;
        o_reg_wren     : out std_logic;
        o_mem_wren     : out std_logic;
        o_mem_rden     : out std_logic;
        o_mem_to_reg   : out std_logic;
        o_pc_to_reg    : out std_logic
    );
end entity;


architecture behavior of control_unit is
    type op_code_type is (IMM, LUI, AUIPC, OP, JAL, JARL, BRANCH, LOAD, STORE);
    signal op_code : op_code_type;


begin
    -- set op-code based on instruction
    set_op_code : process( i_instruction( 6 downto 0 ) )
    begin
        case i_instruction( 6 downto 0 ) is
            when op_IMM     =>  op_code <= IMM;     --  I-type
            when op_LUI     =>  op_code <= LUI;     --  U-type
            when op_AUIPC   =>  op_code <= AUIPC;   --  U-type
            when op_OP      =>  op_code <= OP;      --  R-type
            when op_JAL     =>  op_code <= JAL;     --  J-type
            when op_JALR    =>  op_code <= JARL;    --  I-type
            when op_BRANCH  =>  op_code <= BRANCH;  --  B-type
            when op_LOAD    =>  op_code <= LOAD;    --  I-type
            when op_STORE   =>  op_code <= STORE;   --  S-type
          when others     =>  op_code <= IMM;
        end case;
    end process set_op_code;


    -- set all output signals based on instruction
    set_output_flags : process( op_code )
    begin
        o_con_jump    <=  '0';
        o_uncon_jump  <=  '0';
        o_jarl_jump   <=  '0';
        o_alu_op      <= "--";
        o_alu_src     <=  '-';
        o_reg_wren    <=  '0';
        o_mem_wren    <=  '0';
        o_mem_rden    <=  '0';
        o_mem_to_reg  <=  '0';
        o_pc_to_reg   <=  '0';

        case op_code is
            when IMM     =>  -- register-immediate instructions
                o_alu_op     <= "10";
                o_alu_src    <=  '1';
                o_reg_wren   <=  '1';

            when LUI     =>  -- load upper immediate
                o_alu_op     <= "11";
                o_alu_src    <=  '1';
                o_reg_wren   <=  '1';

            when AUIPC   =>  -- add upper immediate to program counter
                o_uncon_jump <=  '1';
                o_reg_wren   <=  '1';
            
            when OP      =>  -- register-register instructions
                o_alu_op     <= "10";
                o_alu_src    <=  '0';
                o_reg_wren   <=  '1';

            when JAL     =>  -- jump and link
                o_uncon_jump  <=  '1';
                o_reg_wren    <=  '1';
                o_pc_to_reg   <=  '1';

            when JARL    =>  -- jump and link register
                o_jarl_jump   <=  '1';
                o_reg_wren    <=  '1';
                o_pc_to_reg   <=  '1';

            when BRANCH  =>  -- conditional branches
                o_con_jump    <=  '1';
                o_alu_op      <= "01";
                o_alu_src     <=  '0';

            when LOAD    =>  -- load upper immediate
                o_alu_op      <= "00";
                o_alu_src     <=  '1';
                o_reg_wren    <=  '1';
                o_mem_rden    <=  '1';
                o_mem_to_reg  <=  '1';

            when STORE   =>  -- store data in memory
                o_alu_op      <= "00";
                o_alu_src     <=  '1';
                o_mem_wren    <=  '1';

        end case;
    end process set_output_flags;


end behavior;
