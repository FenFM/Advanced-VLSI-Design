library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use work.isa_riscv.ALL;


entity alu_control_unit is
    port(
        clk               : in  std_logic;
        i_instruction     : in  std_logic_vector( 31 downto 0 );
        i_alu_instruction : in  std_logic_vector(  1 downto 0 );
        o_alu_operation   : out std_logic_vector(  4 downto 0 );
        o_alu_align       : out std_logic_vector(  2 downto 0 );
        o_dm_align        : out std_logic_vector(  2 downto 0 );
        o_inverse_zero    : out std_logic
    );
end alu_control_unit;


architecture behavior of alu_control_unit is
    signal s_align     : std_logic_vector ( 2 downto 0 );
    signal s_align_reg : std_logic_vector ( 2 downto 0 );


begin
    o_alu_align <= s_align;

    ALU_OP : process( i_instruction, i_alu_instruction )
    begin
        o_inverse_zero <= '0';
        s_align        <= "010"; 

        case i_alu_instruction is
            when "10" =>  -- R-type operations
                case i_instruction( 31 downto 25 ) is
                    when "0000000"  =>  -- standart
                        case i_instruction( 14 downto 12 ) is
                            when "000"  =>  o_alu_operation <= opcode_ADD;
                            when "001"  =>  o_alu_operation <= opcode_SLL;
                            when "010"  =>  o_alu_operation <= opcode_SLT;
                            when "011"  =>  o_alu_operation <= opcode_SLTU;
                            when "100"  =>  o_alu_operation <= opcode_XOR;
                            when "101"  =>  o_alu_operation <= opcode_SRL;
                            when "110"  =>  o_alu_operation <= opcode_OR;
                            when "111"  =>  o_alu_operation <= opcode_AND;
                            when others =>  o_alu_operation <= "-----"; 
                        end case;
                    when "0100000"  =>  -- sub and sra
                        case i_instruction( 14 downto 12 ) is
                            when "000"  =>  o_alu_operation <= opcode_SUB;
                            when "101"  =>  o_alu_operation <= opcode_SRA;
                            when others =>  o_alu_operation <= "-----"; 
                        end case;                        
                    when "0000001"  =>  -- mul and div
                        case i_instruction( 14 downto 12 ) is
                            when "000"  =>  o_alu_operation <= opcode_MUL;
                            when "001"  =>  o_alu_operation <= opcode_MULH;
                            when "010"  =>  o_alu_operation <= opcode_MULHSU;
                            when "011"  =>  o_alu_operation <= opcode_MULHU;
                            when "100"  =>  o_alu_operation <= opcode_DIV;
                            when "101"  =>  o_alu_operation <= opcode_DIVU;
                            when "110"  =>  o_alu_operation <= opcode_REM;
                            when "111"  =>  o_alu_operation <= opcode_REMU;
                            when others =>  o_alu_operation <= "-----"; 
                        end case;
                    when others  =>  o_alu_operation <= "-----";
                end case;


            when "00" =>  -- LW and SW
                o_alu_operation <= opcode_ADD;
                s_align         <= i_instruction( 14 downto 12 );


            when "01" =>  -- BRANCH
                case i_instruction( 14 downto 12 ) is
                    when func_BEQ  =>  o_alu_operation <= opcode_SUB;   -- if equal
                    when func_BNE  =>  o_alu_operation <= opcode_SUB;   -- if not equal
                                       o_inverse_zero  <= '1';
                    when func_BLT  =>  o_alu_operation <= opcode_SLT;   -- if rs1 <  rs2 (signed)
                                       o_inverse_zero  <= '1';
                    when func_BGE  =>  o_alu_operation <= opcode_SLT;   -- if rs1 >= rs2 (signed)             
                    when func_BLTU =>  o_alu_operation <= opcode_SLTU;  -- if rs1 <  rs2 (unsigned)
                                       o_inverse_zero  <= '1';
                    when func_BGEU =>  o_alu_operation <= opcode_SLTU;  -- if rs1 >= rs2 (unsigned)
                    when others =>     o_alu_operation <= "-----";
                end case;


            when "11" =>  -- I-type operations
                case i_instruction( 14 downto 12 ) is
                    when "000"  =>  o_alu_operation <= opcode_ADD;
                    when "001"  =>  o_alu_operation <= opcode_SLL;
                    when "010"  =>  o_alu_operation <= opcode_SLT;
                    when "011"  =>  o_alu_operation <= opcode_SLTU;
                    when "100"  =>  o_alu_operation <= opcode_XOR;
                    when "101"  =>  
                        case i_instruction( 30 ) is
                            when '0'    =>  o_alu_operation <= opcode_SRL;
                            when '1'    =>  o_alu_operation <= opcode_SRA;
                            when others =>  o_alu_operation <= "-----";
                        end case;
                    when "110"  =>  o_alu_operation <= opcode_OR;
                    when "111"  =>  o_alu_operation <= opcode_AND;
                    when others =>  o_alu_operation <= "-----";      
                end case;

                
            when others  =>  o_alu_operation <= "-----";
                
        end case;
    end process ALU_OP;
    
    
    shift_register : process( clk )
    begin
        if rising_edge( clk ) then
            o_dm_align  <= s_align_reg;
            s_align_reg <= s_align;
        end if;
    end process shift_register;

end behavior;
