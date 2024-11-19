library IEEE;
use IEEE.std_logic_1164.ALL;
use IEEE.numeric_std.ALL;


entity program_counter is
    generic (
        bits   : INTEGER := 32;
        offset : INTEGER := 4
    );

    port (
        rst    : IN  STD_LOGIC;
        clk    : IN  STD_LOGIC;
        pc_out : OUT STD_LOGIC_VECTOR(bits-1 DOWNTO 0);
        pc_in  : IN  STD_LOGIC_VECTOR(bits-1 DOWNTO 0);
        load   : IN  STD_LOGIC
    );

end entity program_counter;


architecture behav of program_counter is
    type alu is record
        pc_counter : SIGNED(bits-1 DOWNTO 0);
    end record;

    signal r, rin : alu;


begin
    -- register
    reg : process (clk, rst, load)
    begin
        if rst = '1' then
            r.pc_counter <= (others => '0');
        elsif load = '1' then
            r.pc_counter <= SIGNED(pc_in);
        elsif rising_edge(clk) then
            r <= rin;
        end if;
    end process reg;

    -- adder
    comb : process (r)
        variable v : alu;
    begin
        v.pc_counter := r.pc_counter + offset;
        rin    <= v;
    end process comb;

    pc_out <= STD_LOGIC_VECTOR(r.pc_counter);

end behav;
