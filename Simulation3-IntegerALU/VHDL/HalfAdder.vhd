library ieee;
use ieee.std_logic_1164.all;

library IEEE;
use IEEE.std_logic_1164.ALL;
use IEEE.numeric_std.ALL;

entity HalfAdder is
  port(
    a : in unsigned(15 downto 0);
    b : in unsigned(15 downto 0);
    cin : in std_logic_vector(3 downto 0);
    CIN  : in std_logic;

    C,Z,S,V : out std_logic;
    FOUT : out unsigned(15 downto 0)
    );
end ALU;

architecture RTL of ALU is
begin


end architecture;