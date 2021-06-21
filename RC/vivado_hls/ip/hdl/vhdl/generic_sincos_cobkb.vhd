-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.2 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity generic_sincos_cobkb_rom is 
    generic(
             DWIDTH     : integer := 126; 
             AWIDTH     : integer := 7; 
             MEM_SIZE    : integer := 128
    ); 
    port (
          addr0      : in std_logic_vector(AWIDTH-1 downto 0); 
          ce0       : in std_logic; 
          q0         : out std_logic_vector(DWIDTH-1 downto 0);
          clk       : in std_logic
    ); 
end entity; 


architecture rtl of generic_sincos_cobkb_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "110010010000111111011010101000100010000101101000110000100011010011000100110001100110001010001011100000001101110000011100110100", 
    1 => "011101101011000110011100000101011000011011101101001111011010001010110111111100100010001011110110010111100001110101000110100000", 
    2 => "001111101011011011101011111100100101100100000001101110101100010101011011011100011110011110111101011111011110100010000101111110", 
    3 => "000111111101010110111010100110101010110000101111011011011100011001011001000100101111001100010011111001111101000100010001110111", 
    4 => "000011111111101010101101110110111001011001111110111101001110001101101100101100100111100100101101110000001110001011100000110101", 
    5 => "000001111111111101010101011011101110101001011101100010010010101000010011101111001110101110111011011011101101010001100011000100", 
    6 => "000000111111111111101010101010110111011101101110010100110101011011101111100111100011000101011001000000000101011111011101100000", 
    7 => "000000011111111111111101010101010101101110111011101010010111001011010000000011000100011010100011111101110111110011000001010111", 
    8 => "000000001111111111111111101010101010101011011101110111011011100101001011101100010010101011111011011010110110110101001111011111", 
    9 => "000000000111111111111111111101010101010101010110111011101110111010100101110010100110101011011110101010110000001000100101000111", 
    10 => "000000000011111111111111111111101010101010101010101101110111011101110110111001010010111001011010000000011001111110111100111010", 
    11 => "000000000001111111111111111111111101010101010101010101011011101110111011101110101001011100101001011101100010010101100010010010", 
    12 => "000000000000111111111111111111111111101010101010101010101010110111011101110111011101101110010100101110010100110101011011110101", 
    13 => "000000000000011111111111111111111111111101010101010101010101010101101110111011101110111011101010010111001010010111001011010000", 
    14 => "000000000000001111111111111111111111111111101010101010101010101010101011011101110111011101110111011011100101001011100101001011", 
    15 => "000000000000000111111111111111111111111111111101010101010101010101010101010110111011101110111011101110111010100101110010100101", 
    16 => "000000000000000011111111111111111111111111111111101010101010101010101010101010101101110111011101110111011101110110111001010010", 
    17 => "000000000000000001111111111111111111111111111111111101010101010101010101010101010101011011101110111011101110111011101110101001", 
    18 => "000000000000000000111111111111111111111111111111111111101010101010101010101010101010101010110111011101110111011101110111011101", 
    19 => "000000000000000000011111111111111111111111111111111111111101010101010101010101010101010101010101101110111011101110111011101110", 
    20 => "000000000000000000001111111111111111111111111111111111111111101010101010101010101010101010101010101011011101110111011101110111", 
    21 => "000000000000000000000111111111111111111111111111111111111111111101010101010101010101010101010101010101010110111011101110111011", 
    22 => "000000000000000000000011111111111111111111111111111111111111111111101010101010101010101010101010101010101010101101110111011101", 
    23 => "000000000000000000000001111111111111111111111111111111111111111111111101010101010101010101010101010101010101010101011011101110", 
    24 => "000000000000000000000000111111111111111111111111111111111111111111111111101010101010101010101010101010101010101010101010110111", 
    25 => "000000000000000000000000011111111111111111111111111111111111111111111111111101010101010101010101010101010101010101010101010101", 
    26 => "000000000000000000000000001111111111111111111111111111111111111111111111111111101010101010101010101010101010101010101010101010", 
    27 => "000000000000000000000000000111111111111111111111111111111111111111111111111111111101010101010101010101010101010101010101010101", 
    28 => "000000000000000000000000000011111111111111111111111111111111111111111111111111111111101010101010101010101010101010101010101010", 
    29 => "000000000000000000000000000001111111111111111111111111111111111111111111111111111111111101010101010101010101010101010101010101", 
    30 => "000000000000000000000000000000111111111111111111111111111111111111111111111111111111111111101010101010101010101010101010101010", 
    31 => "000000000000000000000000000000011111111111111111111111111111111111111111111111111111111111111101010101010101010101010101010101", 
    32 => "000000000000000000000000000000001111111111111111111111111111111111111111111111111111111111111111101010101010101010101010101010", 
    33 => "000000000000000000000000000000000111111111111111111111111111111111111111111111111111111111111111111101010101010101010101010101", 
    34 => "000000000000000000000000000000000011111111111111111111111111111111111111111111111111111111111111111111101010101010101010101010", 
    35 => "000000000000000000000000000000000001111111111111111111111111111111111111111111111111111111111111111111111101010101010101010101", 
    36 => "000000000000000000000000000000000000111111111111111111111111111111111111111111111111111111111111111111111111101010101010101010", 
    37 => "000000000000000000000000000000000000011111111111111111111111111111111111111111111111111111111111111111111111111101010101010101", 
    38 => "000000000000000000000000000000000000001111111111111111111111111111111111111111111111111111111111111111111111111111101010101010", 
    39 => "000000000000000000000000000000000000000111111111111111111111111111111111111111111111111111111111111111111111111111111101010101", 
    40 => "000000000000000000000000000000000000000011111111111111111111111111111111111111111111111111111111111111111111111111111111101010", 
    41 => "000000000000000000000000000000000000000001111111111111111111111111111111111111111111111111111111111111111111111111111111111101", 
    42 => "000000000000000000000000000000000000000000111111111111111111111111111111111111111111111111111111111111111111111111111111111111", 
    43 => "000000000000000000000000000000000000000000011111111111111111111111111111111111111111111111111111111111111111111111111111111111", 
    44 => "000000000000000000000000000000000000000000001111111111111111111111111111111111111111111111111111111111111111111111111111111111", 
    45 => "000000000000000000000000000000000000000000000111111111111111111111111111111111111111111111111111111111111111111111111111111111", 
    46 => "000000000000000000000000000000000000000000000011111111111111111111111111111111111111111111111111111111111111111111111111111111", 
    47 => "000000000000000000000000000000000000000000000001111111111111111111111111111111111111111111111111111111111111111111111111111111", 
    48 => "000000000000000000000000000000000000000000000000111111111111111111111111111111111111111111111111111111111111111111111111111111", 
    49 => "000000000000000000000000000000000000000000000000011111111111111111111111111111111111111111111111111111111111111111111111111111", 
    50 => "000000000000000000000000000000000000000000000000001111111111111111111111111111111111111111111111111111111111111111111111111111", 
    51 => "000000000000000000000000000000000000000000000000000111111111111111111111111111111111111111111111111111111111111111111111111111", 
    52 => "000000000000000000000000000000000000000000000000000011111111111111111111111111111111111111111111111111111111111111111111111111", 
    53 => "000000000000000000000000000000000000000000000000000001111111111111111111111111111111111111111111111111111111111111111111111111", 
    54 => "000000000000000000000000000000000000000000000000000000111111111111111111111111111111111111111111111111111111111111111111111111", 
    55 => "000000000000000000000000000000000000000000000000000000011111111111111111111111111111111111111111111111111111111111111111111111", 
    56 => "000000000000000000000000000000000000000000000000000000001111111111111111111111111111111111111111111111111111111111111111111111", 
    57 => "000000000000000000000000000000000000000000000000000000000111111111111111111111111111111111111111111111111111111111111111111111", 
    58 => "000000000000000000000000000000000000000000000000000000000011111111111111111111111111111111111111111111111111111111111111111111", 
    59 => "000000000000000000000000000000000000000000000000000000000001111111111111111111111111111111111111111111111111111111111111111111", 
    60 => "000000000000000000000000000000000000000000000000000000000000111111111111111111111111111111111111111111111111111111111111111111", 
    61 => "000000000000000000000000000000000000000000000000000000000000011111111111111111111111111111111111111111111111111111111111111111", 
    62 => "000000000000000000000000000000000000000000000000000000000000001111111111111111111111111111111111111111111111111111111111111111", 
    63 => "000000000000000000000000000000000000000000000000000000000000000111111111111111111111111111111111111111111111111111111111111111", 
    64 => "000000000000000000000000000000000000000000000000000000000000000011111111111111111111111111111111111111111111111111111111111111", 
    65 => "000000000000000000000000000000000000000000000000000000000000000001111111111111111111111111111111111111111111111111111111111111", 
    66 => "000000000000000000000000000000000000000000000000000000000000000000111111111111111111111111111111111111111111111111111111111111", 
    67 => "000000000000000000000000000000000000000000000000000000000000000000011111111111111111111111111111111111111111111111111111111111", 
    68 => "000000000000000000000000000000000000000000000000000000000000000000001111111111111111111111111111111111111111111111111111111111", 
    69 => "000000000000000000000000000000000000000000000000000000000000000000000111111111111111111111111111111111111111111111111111111111", 
    70 => "000000000000000000000000000000000000000000000000000000000000000000000011111111111111111111111111111111111111111111111111111111", 
    71 => "000000000000000000000000000000000000000000000000000000000000000000000001111111111111111111111111111111111111111111111111111111", 
    72 => "000000000000000000000000000000000000000000000000000000000000000000000000111111111111111111111111111111111111111111111111111111", 
    73 => "000000000000000000000000000000000000000000000000000000000000000000000000011111111111111111111111111111111111111111111111111111", 
    74 => "000000000000000000000000000000000000000000000000000000000000000000000000001111111111111111111111111111111111111111111111111111", 
    75 => "000000000000000000000000000000000000000000000000000000000000000000000000000111111111111111111111111111111111111111111111111111", 
    76 => "000000000000000000000000000000000000000000000000000000000000000000000000000011111111111111111111111111111111111111111111111111", 
    77 => "000000000000000000000000000000000000000000000000000000000000000000000000000001111111111111111111111111111111111111111111111111", 
    78 => "000000000000000000000000000000000000000000000000000000000000000000000000000000111111111111111111111111111111111111111111111111", 
    79 => "000000000000000000000000000000000000000000000000000000000000000000000000000000011111111111111111111111111111111111111111111111", 
    80 => "000000000000000000000000000000000000000000000000000000000000000000000000000000001111111111111111111111111111111111111111111111", 
    81 => "000000000000000000000000000000000000000000000000000000000000000000000000000000000111111111111111111111111111111111111111111111", 
    82 => "000000000000000000000000000000000000000000000000000000000000000000000000000000000011111111111111111111111111111111111111111111", 
    83 => "000000000000000000000000000000000000000000000000000000000000000000000000000000000001111111111111111111111111111111111111111111", 
    84 => "000000000000000000000000000000000000000000000000000000000000000000000000000000000000111111111111111111111111111111111111111111", 
    85 => "000000000000000000000000000000000000000000000000000000000000000000000000000000000000011111111111111111111111111111111111111111", 
    86 => "000000000000000000000000000000000000000000000000000000000000000000000000000000000000001111111111111111111111111111111111111111", 
    87 => "000000000000000000000000000000000000000000000000000000000000000000000000000000000000000111111111111111111111111111111111111111", 
    88 => "000000000000000000000000000000000000000000000000000000000000000000000000000000000000000011111111111111111111111111111111111111", 
    89 => "000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001111111111111111111111111111111111111", 
    90 => "000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000111111111111111111111111111111111111", 
    91 => "000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000011111111111111111111111111111111111", 
    92 => "000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001111111111111111111111111111111111", 
    93 => "000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000111111111111111111111111111111111", 
    94 => "000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000011111111111111111111111111111111", 
    95 => "000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001111111111111111111111111111111", 
    96 => "000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000111111111111111111111111111111", 
    97 => "000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000011111111111111111111111111111", 
    98 => "000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001111111111111111111111111111", 
    99 => "000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000111111111111111111111111111", 
    100 => "000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000011111111111111111111111111", 
    101 => "000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001111111111111111111111111", 
    102 => "000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000111111111111111111111111", 
    103 => "000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000011111111111111111111111", 
    104 => "000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001111111111111111111111", 
    105 => "000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000111111111111111111111", 
    106 => "000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000011111111111111111111", 
    107 => "000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001111111111111111111", 
    108 => "000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000111111111111111111", 
    109 => "000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000011111111111111111", 
    110 => "000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001111111111111111", 
    111 => "000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000111111111111111", 
    112 => "000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000011111111111111", 
    113 => "000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001111111111111", 
    114 => "000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000111111111111", 
    115 => "000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000011111111111", 
    116 => "000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001111111111", 
    117 => "000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000111111111", 
    118 => "000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000011111111", 
    119 => "000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001111111", 
    120 => "000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000111111", 
    121 => "000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000011111", 
    122 => "000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001111", 
    123 => "000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000111", 
    124 => "000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000011", 
    125 => "000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001", 
    126 to 127=> "000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000" );


begin 


memory_access_guard_0: process (addr0) 
begin
      addr0_tmp <= addr0;
--synthesis translate_off
      if (CONV_INTEGER(addr0) > mem_size-1) then
           addr0_tmp <= (others => '0');
      else 
           addr0_tmp <= addr0;
      end if;
--synthesis translate_on
end process;

p_rom_access: process (clk)  
begin 
    if (clk'event and clk = '1') then
        if (ce0 = '1') then 
            q0 <= mem(CONV_INTEGER(addr0_tmp)); 
        end if;
    end if;
end process;

end rtl;

Library IEEE;
use IEEE.std_logic_1164.all;

entity generic_sincos_cobkb is
    generic (
        DataWidth : INTEGER := 126;
        AddressRange : INTEGER := 128;
        AddressWidth : INTEGER := 7);
    port (
        reset : IN STD_LOGIC;
        clk : IN STD_LOGIC;
        address0 : IN STD_LOGIC_VECTOR(AddressWidth - 1 DOWNTO 0);
        ce0 : IN STD_LOGIC;
        q0 : OUT STD_LOGIC_VECTOR(DataWidth - 1 DOWNTO 0));
end entity;

architecture arch of generic_sincos_cobkb is
    component generic_sincos_cobkb_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    generic_sincos_cobkb_rom_U :  component generic_sincos_cobkb_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


