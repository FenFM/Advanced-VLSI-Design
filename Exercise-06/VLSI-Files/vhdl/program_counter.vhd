library IEEE;
use IEEE.std_logic_1164.ALL;
use IEEE.numeric_std.ALL;


entity program_counter is
    generic (
        bit_width : integer := 32;
        pc_offset : integer := 4
    );

    port (
        clk : in  std_logic;
        rst : in  std_logic;
        i_sign_shift    : in  std_logic_vector( bit_width-1 downto 0 );
        i_pc_src        : in  std_logic;
        i_branch        : in  std_logic;
        i_alu_zero_flag : in  std_logic;
        o_pc_dout       : out std_logic_vector( bit_width-1 downto 0 )
    );

end entity program_counter;


architecture behavior of program_counter is
    type alu is record
        pc_counter : unsigned( bit_width-1 downto 0 );
    end record;
    signal r, rin : alu;

    signal s_branch_zero : std_logic; -- needs to be implemented


begin
    o_pc_dout <= std_logic_vector( r.pc_counter );
    
    s_branch_zero <= i_branch and i_alu_zero_flag;


    reg : process ( clk, rst )
    begin
        if rst = '1' then
            r.pc_counter <= (others => '0');

        elsif rising_edge( clk ) then
            r <= rin;

        end if;
    end process reg;


    comb : process ( r, i_pc_src, s_branch_zero )
        variable v : alu;
    begin
        v := r;

        v.pc_counter := r.pc_counter + pc_offset;

        if i_pc_src = '1' and s_branch_zero = '1' then
            v.pc_counter := v.pc_counter + unsigned( i_sign_shift );
        end if;

        rin <= v;
    end process comb;


end behavior;
