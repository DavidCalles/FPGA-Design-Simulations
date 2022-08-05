--
-- DO NOT EDIT THIS FILE, your changes will be overwritten
-- This is an automatically generated file.
-- It was generated with uasm, the microassembler, on
-- Sat Jul 23 12:02:04 2022
--
--
--
-- Yeilding a total data width of 44 bits for 9 fields.
-- The maximum address encountered was 0x7ff, needing 11 bits
--
library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;

entity MICROCODE_ROM is
port( ADDR_IN  : in  unsigned(10 downto 0);
      DATA_OUT : out std_logic_vector(43 downto 0));
end MICROCODE_ROM;

architecture RTL of MICROCODE_ROM is

   signal DATA_OUT_R : std_logic_vector(43 downto 0);
begin
   DATA_OUT <= DATA_OUT_R;

   process(ADDR_IN)
     begin
        case ADDR_IN is
          -- START:
          when "00000000000" => DATA_OUT_R <= "00000000100000000000000000000000000000100000";
          when "00000000001" => DATA_OUT_R <= "00000001000000000000000000000000000001100000";
          when "00000000010" => DATA_OUT_R <= "00000010000000000000000000000000000010100000";
          when "00000000011" => DATA_OUT_R <= "00101001101001111000000000000000000000000000";
          when "00000000100" => DATA_OUT_R <= "00000000000000000000100000000000000110000000";
          when "00000000101" => DATA_OUT_R <= "10000110000111111000010000000000001001000000";
          -- L1:
          when "00000000110" => DATA_OUT_R <= "00000000000000000001010000000000001000000000";
          when "00000000111" => DATA_OUT_R <= "10000010000011100000010000000000001001000000";
          -- L2:
          when "00000001000" => DATA_OUT_R <= "10001010000111111000000000000000000000000000";
          -- DONE:
          when "00000001001" => DATA_OUT_R <= "10000000000000000000010000000000000000000000";
          when "11111111111" => DATA_OUT_R <= "00000000000000000000000000000000000000000000";
          when others => DATA_OUT_R <= "00000000000000000000000000000000000000000000";
       end case;
     end process;
end RTL;
