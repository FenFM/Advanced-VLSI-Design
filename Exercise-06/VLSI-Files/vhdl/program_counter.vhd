library IEEE;
use IEEE.std_logic_1164.ALL;
use IEEE.numeric_std.ALL;

use work.misc.ALL;


entity program_counter is
    generic (
        bit_width : integer := 32;
        mem_size  : integer := 128;
        pc_offset : integer := 4
    );

    port (
        clk               : in  std_logic;
        rst               : in  std_logic;
        i_immediate       : in  std_logic_vector( 31 downto 0 );
        i_pc_src          : in  std_logic;
        i_pc_force_branch : in std_logic;
        o_pc_dout         : out std_logic_vector( log2(mem_size)-1 downto 0 )
    );

end entity program_counter;


architecture behavior of program_counter is
    type alu is record
        pc_counter : unsigned( log2(mem_size)-1 downto 0 );
    end record;
    signal r, rin : alu;

    signal s_branch_zero : std_logic;


begin
    o_pc_dout <= std_logic_vector( r.pc_counter );


    reg : process ( clk, rst )
    begin
        if rst = '1' then
            r.pc_counter <= (others => '0');

        elsif rising_edge( clk ) then
            r <= rin;

        end if;
    end process reg;


    comb : process ( r, i_pc_src )
        variable v : alu;
    begin
        v := r;

        if i_pc_src = '1' or i_pc_force_branch = '1' then
            v.pc_counter := r.pc_counter + unsigned( i_immediate );
        else
            v.pc_counter := r.pc_counter + pc_offset;
        end if;

        rin <= v;
    end process comb;


end behavior;
