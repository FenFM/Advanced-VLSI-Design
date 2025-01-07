library IEEE;
use IEEE.std_logic_1164.ALL;
use IEEE.numeric_std.ALL;


entity cotrol_unit is
    port(
        o_pc_src   : out std_logic;
        o_alu_op   : out std_logic;
        o_alu_src  : out std_logic;
        o_reg_wren : out std_logic;
        o_mem_wren : out std_logic;
        o_mem_rden : out std_logic
    );
end entity;


architecture control_unit of cpu is

begin

end control_unit;
