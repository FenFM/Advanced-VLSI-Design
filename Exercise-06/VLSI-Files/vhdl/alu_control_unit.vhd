library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use work.isa_riscv.ALL;


entity alu_control_unit is
    port(
        i_instruction     : in  std_logic_vector( 31 downto 0 );
        i_alu_instruction : in  std_logic_vector(  1 downto 0 );
        o_alu_operation   : out std_logic_vector(  3 downto 0 );
        o_inverse_zero    : out std_logic
    );
end alu_control_unit;


architecture behavior of alu_control_unit is


begin
    ALU_OP : process( i_instruction, i_alu_instruction )
    begin
        o_inverse_zero <= '0';

        case i_alu_instruction is
            when "10" =>  -- R-type operations
                case i_instruction( 14 downto 12 ) is
                    when "000"  =>  
                        case i_instruction( 30 ) is
                            when '0'    =>  o_alu_operation <= opcode_ADD;
                            when '1'    =>  o_alu_operation <= opcode_SUB;
                            when others =>  o_alu_operation <= "----";
                        end case;
                    when "001"  =>  o_alu_operation <= opcode_SLL;
                    when "010"  =>  o_alu_operation <= opcode_SLT;
                    when "011"  =>  o_alu_operation <= opcode_SLTU;
                    when "100"  =>  o_alu_operation <= opcode_XOR;
                    when "101"  =>  
                        case i_instruction( 30 ) is
                            when '0'    =>  o_alu_operation <= opcode_SRL;
                            when '1'    =>  o_alu_operation <= opcode_SRA;
                            when others =>  o_alu_operation <= "----";
                        end case;
                    when "110"  =>  o_alu_operation <= opcode_OR;
                    when "111"  =>  o_alu_operation <= opcode_AND;
                    when others =>  o_alu_operation <= "----";      
                end case;


            when "00" =>  -- LW and SW
                o_alu_operation <= opcode_ADD;


            when "01" =>  -- BRANCH
                case i_instruction( 14 downto 12 ) is
                    when func_BEQ  =>  -- if equal
                        o_alu_operation <= opcode_SUB;

                    when func_BNE  =>  -- if not equal
                        o_alu_operation <= opcode_SUB;
                        o_inverse_zero  <= '1';

                    when func_BLT  =>  -- if rs1 < rs2  (signed)
                        o_alu_operation <= opcode_SLT;
                        o_inverse_zero  <= '1';

                    when func_BGE  =>  -- if rs1 >= rs2 (signed)
                        o_alu_operation <= opcode_SLT;
                    
                    when func_BLTU =>  -- if rs1 < rs2  (unsigned)
                        o_alu_operation <= opcode_SLTU;
                        o_inverse_zero  <= '1';

                    when func_BGEU =>  -- if rs1 >= rs2 (unsigned)
                        o_alu_operation <= opcode_SLTU;
                        
                    when others =>
                        o_alu_operation <= opcode_SUB;
                end case;


            when "11" =>  -- pass through input b
                o_alu_operation <= opcode_PASS;
                
            when others =>
                o_alu_operation <= opcode_PASS;
                
        end case;
    end process ALU_OP;

end behavior;
