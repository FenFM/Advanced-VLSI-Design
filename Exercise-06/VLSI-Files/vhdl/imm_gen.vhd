library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use work.generic_header.ALL;
use work.isa_riscv.ALL;
use work.misc.ALL;


entity imm_gen is
    generic( bit_width : integer := 32 );
    port(
        din  : in  std_logic_vector( bit_width-1 downto 0 );
        dout : out std_logic_vector( bit_width-1 downto 0 )
    );
end imm_gen;


architecture behavior of imm_gen is    
    type op_code_type is (IMM, LUI, AUIPC, OP, JAL, JARL, BRANCH, LOAD, STORE);
    signal op_code : op_code_type;

    constant con_store_pos : std_logic_vector( 31 downto 12 ) := ( others => '0' );
    constant con_store_neg : std_logic_vector( 31 downto 12 ) := ( others => '1' );

    constant con_branch_pos : std_logic_vector( 31 downto 13 ) := ( others => '0' );
    constant con_branch_neg : std_logic_vector( 31 downto 13 ) := ( others => '1' );

    constant con_jal_pos : std_logic_vector( 31 downto 21 ) := ( others => '0' );
    constant con_jal_neg : std_logic_vector( 31 downto 21 ) := ( others => '1' );

    constant con_lui : std_logic_vector( 11 downto  0 ) := ( others => '0' );


begin
    -- set op-code based on instruction
    set_op_code : process( din )
    begin
        case din( 6 downto 0 ) is
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


    process( din, op_code )
    begin
        case op_code is
            when IMM | LOAD | JARL  =>  -- I-type
                if din(31) = '0' then
                    dout <= con_store_pos & din(31 downto 20);
                else
                    dout <= con_store_neg & din(31 downto 20);
                end if;


            when STORE              =>  -- S-type
                if din(31) = '0' then
                    dout <= con_store_pos & din(31 downto 25) & din(11 downto 7);
                else
                    dout <= con_store_neg & din(31 downto 25) & din(11 downto 7);
                end if;


            when BRANCH             =>  -- B-type
                if din(31) = '0' then
                    dout <= con_branch_pos & din(31) & din(7) & din(30 downto 25) & din(11 downto 8) & '0'; 
                else
                    dout <= con_branch_neg & din(31) & din(7) & din(30 downto 25) & din(11 downto 8) & '0'; 
                end if;


            when JAL                =>  -- J-type
                if din(31) = '0' then
                    dout <= con_jal_pos & din(31) & din(19 downto 12) & din(20) & din(30 downto 21) & '0'; 
                else 
                    dout <= con_jal_neg & din(31) & din(19 downto 12) & din(20) & din(30 downto 21) & '0'; 
                end if;


            when LUI | AUIPC        =>  -- U-type
                dout <= din(31 downto 12) & con_lui;


            when others             =>
                dout <= ( others => '-' );

        end case;
    end process;


end behavior;
