library IEEE;
use IEEE.std_logic_1164.ALL;
use IEEE.numeric_std.ALL;


entity control_unit is
    generic(
        bit_width : integer := 8
    );
    port(
        o_pc_src     : out std_logic;
        o_branch     : out std_logic;
        o_alu_op     : out std_logic_vector( bit_width-1 downto 0 );
        o_alu_src    : out std_logic;
        o_reg_wren   : out std_logic;
        o_mem_wren   : out std_logic;
        o_mem_rden   : out std_logic;
        o_mem_to_reg : out std_logic
    );
end entity;


architecture behavior of control_unit is


begin


end behavior;
