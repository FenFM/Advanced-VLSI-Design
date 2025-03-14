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
    constant con_store_pos : std_logic_vector( 31 downto 12 ) := ( others => '0' );
    constant con_store_neg : std_logic_vector( 31 downto 12 ) := ( others => '1' );

    constant con_branch_pos : std_logic_vector( 31 downto 13 ) := ( others => '0' );
    constant con_branch_neg : std_logic_vector( 31 downto 13 ) := ( others => '1' );

    constant con_jal_pos : std_logic_vector( 31 downto 21 ) := ( others => '0' );
    constant con_jal_neg : std_logic_vector( 31 downto 21 ) := ( others => '1' );

    constant con_lui : std_logic_vector( 11 downto  0 ) := ( others => '0' );


begin
    process( din )
    begin
        case din(6 downto 0) is
            when op_IMM | op_LOAD | op_JALR  =>  -- I-type
                if din(31) = '0' then
                    dout <= con_store_pos & din(31 downto 20);
                else
                    dout <= con_store_neg & din(31 downto 20);
                end if;


            when op_STORE              =>  -- S-type
                if din(31) = '0' then
                    dout <= con_store_pos & din(31 downto 25) & din(11 downto 7);
                else
                    dout <= con_store_neg & din(31 downto 25) & din(11 downto 7);
                end if;


            when op_BRANCH             =>  -- B-type
                if din(31) = '0' then
                    dout <= con_branch_pos & din(31) & din(7) & din(30 downto 25) & din(11 downto 8) & '0'; 
                else
                    dout <= con_branch_neg & din(31) & din(7) & din(30 downto 25) & din(11 downto 8) & '0'; 
                end if;


            when op_JAL                =>  -- J-type
                if din(31) = '0' then
                    dout <= con_jal_pos & din(31) & din(19 downto 12) & din(20) & din(30 downto 21) & '0'; 
                else 
                    dout <= con_jal_neg & din(31) & din(19 downto 12) & din(20) & din(30 downto 21) & '0'; 
                end if;


            when op_LUI | op_AUIPC        =>  -- U-type
                dout <= din(31 downto 12) & con_lui;


            when others             =>
                dout <= ( others => '-' );

        end case;
    end process;


end behavior;
