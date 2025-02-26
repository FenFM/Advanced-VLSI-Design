library IEEE;
use IEEE.std_logic_1164.ALL;
use IEEE.numeric_std.ALL;
use work.isa_riscv.ALL;


entity control_unit is
    generic(
        bit_width : integer := 8
    );
    port(
        i_instruction : in  std_logic_vector( 31 downto 0 );
        o_branch      : out std_logic;
        o_branch_f    : out std_logic;                        -- forced branch
        o_alu_op      : out std_logic_vector( 1 downto 0 );
        o_alu_src     : out std_logic;
        o_reg_wren    : out std_logic;
        o_mem_wren    : out std_logic;
        o_mem_rden    : out std_logic;
        o_mem_to_reg  : out std_logic
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
--          when others     =>  op_code <= IMM;
        end case;
    end process set_op_code;


    -- set all output signals based on instruction
    set_output_flags : process( i_instruction( 6 downto 0 ) )
    begin
        case op_code is
            when IMM     =>  -- register-immediate instructions
                o_branch     <=  '0';
                o_branch_f   <=  '0';
                o_alu_op     <= "10";
                o_alu_src    <=  '1';
                o_reg_wren   <=  '1';
                o_mem_wren   <=  '0';
                o_mem_rden   <=  '0';
                o_mem_to_reg <=  '0';

            when LUI     =>  -- load upper immediate
                o_branch     <=  '0';
                o_branch_f   <=  '0';
                o_alu_op     <= "11";
                o_alu_src    <=  '1';
                o_reg_wren   <=  '1';
                o_mem_wren   <=  '0';
                o_mem_rden   <=  '0';
                o_mem_to_reg <=  '0';

            when AUIPC   =>  -- load upper immediate to program counter
                o_branch     <=  '0';
                o_branch_f   <=  '1';
                o_alu_op     <= "XX";
                o_alu_src    <=  'X';
                o_reg_wren   <=  '0';
                o_mem_wren   <=  '0';
                o_mem_rden   <=  '0';
                o_mem_to_reg <=  '0';
            
            when OP      =>  -- register-register instructions
                o_branch     <=  '0';
                o_branch_f   <=  '0';
                o_alu_op     <= "10";
                o_alu_src    <=  '0';
                o_reg_wren   <=  '1';
                o_mem_wren   <=  '0';
                o_mem_rden   <=  '0';
                o_mem_to_reg <=  '0';

            when JAL     =>  -- jump and link
                o_branch     <=  '';
                o_branch_f   <=  '';
                o_alu_op     <= "  ";
                o_alu_src    <=  '';
                o_reg_wren   <=  '';
                o_mem_wren   <=  '';
                o_mem_rden   <=  '';
                o_mem_to_reg <=  '';

            when JARL    =>
                o_branch     <= '';
                o_branch_f   <=  '';
                o_alu_op     <= "  ";
                o_alu_src    <= '';
                o_reg_wren   <= '';
                o_mem_wren   <= '';
                o_mem_rden   <= '';
                o_mem_to_reg <= '';

            when BRANCH  =>
                o_branch     <= '';
                o_branch_f   <=  '';
                o_alu_op     <= "  ";
                o_alu_src    <= '';
                o_reg_wren   <= '';
                o_mem_wren   <= '';
                o_mem_rden   <= '';
                o_mem_to_reg <= '';

            when LOAD    =>
                o_branch     <= '';
                o_branch_f   <=  '';
                o_alu_op     <= "  ";
                o_alu_src    <= '';
                o_reg_wren   <= '';
                o_mem_wren   <= '';
                o_mem_rden   <= '';
                o_mem_to_reg <= '';

            when STORE   =>
                o_branch     <= '';
                o_branch_f   <=  '';
                o_alu_op     <= "  ";
                o_alu_src    <= '';
                o_reg_wren   <= '';
                o_mem_wren   <= '';
                o_mem_rden   <= '';
                o_mem_to_reg <= '';
        end case;
    end process set_output_flags;


end behavior;
