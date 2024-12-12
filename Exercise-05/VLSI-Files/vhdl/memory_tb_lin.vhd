library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

use work.misc.all;

entity tb_linear is
end tb_linear;

architecture Behavioral of tb_linear is

		constant word_size : integer := 32;
		constant mem_size  : integer := 128;
	
		signal addr_read  : std_logic_vector(log2(mem_size)-1 downto 0);
		signal addr_write : std_logic_vector(log2(mem_size)-1 downto 0);
		signal data_read  : std_logic_vector(word_size-1 downto 0);
		signal data_write : std_logic_vector(word_size-1 downto 0);
		signal write_en   : std_logic;
		signal read_en    : std_logic;
		signal clk        : std_logic;
	
begin

    vc: process
    begin
        clk <= '1';
        wait for 25 ns;
        clk <= '0';
        wait for 25 ns;
    end process;
    
    uut: entity work.memory
    generic map(word_size => word_size, mem_size => mem_size)
    port map(addr_read => addr_read, addr_write => addr_write, data_read => data_read, data_write => data_write, write_en => write_en, read_en => read_en, clk => clk);

    sim: process
    begin
		read_en <= '0';
        write_en <= '1';
        for i in 0 to mem_size loop
            addr_write <= std_logic_vector(to_unsigned(i, addr_write'length));
            data_write <= std_logic_vector(to_unsigned(i**2, data_write'length));
            wait for 50 ns;
        end loop;
        write_en <= '0';
    
		read_en <= '1';
        for i in 0 to mem_size loop
            addr_read <= std_logic_vector(to_unsigned(i, addr_read'length));
            wait for 50 ns;
        end loop;
    
        wait;
    end process;

end Behavioral;
