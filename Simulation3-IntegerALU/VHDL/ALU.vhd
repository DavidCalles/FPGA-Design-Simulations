
library ieee;
use ieee.std_logic_1164.all;

library IEEE;
use IEEE.std_logic_1164.ALL;
use IEEE.numeric_std.ALL;

entity ALU is
  port(
    ABUS : in unsigned(15 downto 0);
    BBUS : in unsigned(15 downto 0);
    FSEL : in std_logic_vector(3 downto 0);
    CIN  : in std_logic;

    C,Z,S,V : out std_logic;
    FOUT : out unsigned(15 downto 0)
    );
end ALU;

architecture RTL of ALU is
begin

  process(FSEL) is
  begin

      case Sel is
          when "0000" =>
              FOUT
          when "01" =>
              Output2 <= Sig2;
          when "10" =>
              Output2 <= Sig3;
          when "11" =>
              Output2 <= Sig4;
          when others => -- 'U', 'X', '-', etc.
              Output2 <= (others => 'X');
      end case;

  end process;


end architecture;