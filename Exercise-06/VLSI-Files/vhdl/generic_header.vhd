library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;


package GENERIC_HEADER is

    constant C_BIT_WIDTH : integer := 32;
    
    -- constant for program_counter 
    constant C_PC_OFFSET : integer :=  4;

    -- constant for the instruction memory
    constant C_IM_MEM_SIZE := integer := 128;

    -- constant for data_memory
    constant C_DM_MEM_SIZE := integer := 128;

    -- constant for register_file
    constant C_REG_SIZE      : integer := 32;
    constant C_REG_WORD_SIZE : integer := 32;


end package GENERIC_HEADER;
