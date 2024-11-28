library IEEE;
use IEEE.std_logic_1164.ALL;
use IEEE.numeric_std.ALL;

use work.misc.ALL;

entity register_file_wrapper is
	port (
		switches : in std_logic_vector(7 downto 0);
		leds : out std_logic_vector(7 downto 0);
		buttons : in std_logic_vector(4 downto 0);
		clk : in std_logic
	);
end entity register_file_wrapper;

architecture behav of register_file_wrapper is

    -- 32 register with 8-bit each
	constant mem_size  : integer := 32;
	constant word_size : integer := 8;
	constant addr_size : integer := log2(mem_size);

	type t_state is (r, wv, wa, ww);
	signal state, r_state : t_state;
	signal ir, iw : std_logic;

	signal tleds, r_leds : std_logic_vector(7 downto 0);
	signal sws, r_sws : std_logic_vector(7 downto 0);

	signal val, addr, r_val, r_addr : std_logic_vector(7 downto 0);

	signal addr_a, addr_b, addr_c : std_logic_vector(addr_size-1 downto 0);
	signal data_a, data_b, data_c : std_logic_vector(word_size-1 downto 0);
	signal write, rst : std_logic;

begin

	mem: entity work.register_file
	generic map(word_size => word_size, size => mem_size)
	port map(addr_a => addr_a, addr_b => addr_b, addr_c => addr_c, data_a => data_a, data_b => data_b, data_c => data_c, w_en => write, clk => clk);

	sm: process (ir, iw, r_state)
	begin
		state <= r_state;
		case r_state is
			when r =>
				if ir = '1' then
					state <= r;
				elsif iw = '1' then
					state <= wv;
				end if;
			when wv =>
				if ir = '1' then
					state <= r;
				elsif iw = '1' then
					state <= wa;
				end if;
			when wa =>
				if ir = '1' then
					state <= ww;
				elsif iw = '1' then
					state <= ww;
				end if;
			when ww =>
				state <= r;
		end case;
	end process;

	addr_a <= r_addr(addr_size-1 downto 0);
	addr_c <= r_addr(addr_size-1 downto 0);
	data_c <= r_val;

	logic: process (r_state, r_sws, r_val, r_addr)
	begin
		leds <= data_a;
		write <= '0';
		addr <= r_addr;
		val <= r_val;
		case r_state is
			when r =>
			when wv =>
				tleds <= sws;
				val <= sws;
			when wa =>
				tleds <= sws;
				addr <= sws;
			when ww =>
				write <= '1';
		end case;
	end process;

	sync: process (clk, rst)
	begin
		if rst = '1' then
			r_state <= r;
			r_leds <= (others => '0');
			r_val <= (others => '0');
			r_addr <= (others => '0');
		elsif rising_edge(clk) then
			r_state <= state;
			r_leds <= tleds;
			r_sws <= sws;
			r_val <= val;
			r_addr <= addr;
		end if;
	end process;

	sws <= switches;

	leds <= r_leds;

	rst <= buttons(2);

	ir <= buttons(4);
	iw <= buttons(0);

end behav;

