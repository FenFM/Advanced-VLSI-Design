library IEEE;
use IEEE.std_logic_1164.ALL;
use IEEE.numeric_std.ALL;

use work.isa_riscv.ALL;


entity alu is
	generic (
		bits : integer := 8 -- bitwidth
	);
	port (
		a : in  std_logic_vector(bits-1 downto 0);
		b : in  std_logic_vector(bits-1 downto 0);
		c : out std_logic_vector(bits-1 downto 0);
		op : in std_logic_vector(3 downto 0)
	);
end entity alu;


architecture behav of alu is
	signal adder_out  : STD_LOGIC_VECTOR(bits-1 DOWNTO 0);
	signal subtractor_out  : STD_LOGIC_VECTOR(bits-1 DOWNTO 0);
	signal and_out  : STD_LOGIC_VECTOR(bits-1 DOWNTO 0);
	signal or_out  : STD_LOGIC_VECTOR(bits-1 DOWNTO 0);
	signal xor_out  : STD_LOGIC_VECTOR(bits-1 DOWNTO 0);


begin
	adder_ins : entity work.op_add
	generic map(bits => bits)
	port map(
	   a => a,
	   b => b,
	   c => adder_out
	);
	
	substractor_ins : entity work.op_sub
	generic map(bits => bits)
	port map(
	   a => a,
	   b => b,
	   c => subtractor_out
	);
	
	and_ins : entity work.op_and
	generic map(bits => bits)
	 port map(
	   a => a,
	   b => b,
	   c => and_out
	);
	
	or_ins : entity work.op_or
	generic map(bits => bits)
	 port map(
	   a => a,
	   b => b,
	   c => or_out
	);
	
	xor_ins : entity work.op_xor
	generic map(bits => bits)
	 port map(
	   a => a,
	   b => b,
	   c => xor_out
	);

    mux_switch : process (op)
    begin
        case op is
            when "0000" => -- adder
                c <= adder_out;
            when "0001" => -- substractor
                c <= subtractor_out;
            when "0010" => -- and
                c <= and_out;
            when "0100" => -- or
                c <= or_out;
            when "1000" => -- xor
                c <= xor_out;
            when others => -- set output to 0
                c <= (others => '0');  
        end case;
    end process;

end behav;
