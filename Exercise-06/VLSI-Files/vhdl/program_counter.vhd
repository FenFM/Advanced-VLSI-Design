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
        i_pc_din  : in  std_logic_vector( bit_width-1 downto 0 );
        i_pc_wren : in  std_logic;
        o_pc_dout : out std_logic_vector( bit_width-1 downto 0 )
    );

end entity program_counter;


architecture behavior of program_counter is
    type alu is record
        pc_counter : signed( bit_width-1 downto 0 );
    end record;
    signal r, rin : alu;


begin
    o_pc_dout <= std_logic_vector( r.pc_counter );


    reg : process ( clk, rst, i_pc_wren )
    begin
        if rst = '1' then
            r.pc_counter <= (others => '0');

        elsif i_pc_wren = '1' then
            r.pc_counter <= signed(i_pc_din);

        elsif rising_edge( clk ) then
            r <= rin;

        end if;
    end process reg;


    comb : process ( r )
        variable v : alu;
    begin
        v := r;

        v.pc_counter := r.pc_counter + pc_offset;

        rin <= v;
    end process comb;


end behavior;
