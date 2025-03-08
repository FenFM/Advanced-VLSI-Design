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
        o_alu_op       : out std_logic_vector( 1 downto 0 );
        o_alu_src      : out std_logic;
        o_alu_pass     : out std_logic;
        o_reg_wren     : out std_logic;
        o_mem_wren     : out std_logic;
        o_mem_rden     : out std_logic;
        o_mux_to_reg   : out std_logic_vector( 1 downto 0 );
        o_mux_to_pc    : out std_logic_vector( 1 downto 0 )
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


begin
    -- set all output signals based on instruction
    set_output_flags : process( i_instruction(6 downto 0) )
    begin
        o_alu_op      <= "00";
        o_alu_src     <=  '0';
        o_alu_pass    <=  '0';
        o_reg_wren    <=  '0';
        o_mem_wren    <=  '0';
        o_mem_rden    <=  '0';
        o_mux_to_reg  <= from_alu;
        o_mux_to_pc   <= no_jump;

        case i_instruction(6 downto 0) is
            when op_IMM     =>  -- register-immediate instructions
                o_alu_op     <= "11";
                o_alu_src    <=  '1';
                o_reg_wren   <=  '1';

            when op_LUI     =>  -- load upper immediate
                o_alu_src     <=  '1';
                o_alu_pass    <=  '1';
                o_reg_wren    <=  '1';

            when op_AUIPC   =>  -- add upper immediate to program counter
                o_reg_wren    <=  '1';
                o_mux_to_reg  <= from_pcb;
            
            when op_OP      =>  -- register-register instructions
                o_alu_op      <= "10";
                o_alu_src     <=  '0';
                o_reg_wren    <=  '1';

            when op_JAL     =>  -- jump and link
                o_reg_wren    <=  '1';
                o_mux_to_pc   <= uncon_jump;
                o_mux_to_reg  <= from_pca;

            when op_JALR    =>  -- jump and link register
                o_alu_op      <= "11";
                o_alu_src     <=  '1';
                o_reg_wren    <=  '1';
                o_mux_to_pc   <= jalr_jump;
                o_mux_to_reg  <= from_pca;

            when op_BRANCH  =>  -- conditional branches
                o_alu_op      <= "01";
                o_alu_src     <=  '0';
                o_mux_to_pc   <= con_jump;

            when op_LOAD    =>  -- load upper immediate
                o_alu_op      <= "00";
                o_alu_src     <=  '1';
                o_reg_wren    <=  '1';
                o_mem_rden    <=  '1';
                o_mux_to_reg  <= from_mem;

            when op_STORE   =>  -- store data in memory
                o_alu_op      <= "00";
                o_alu_src     <=  '1';
                o_mem_wren    <=  '1';

            when others     =>

        end case;
    end process set_output_flags;


end behavior;
