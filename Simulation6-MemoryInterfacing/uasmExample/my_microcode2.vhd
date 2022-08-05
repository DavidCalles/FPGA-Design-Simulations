--
-- DO NOT EDIT THIS FILE, your changes will be overwritten
-- This is an automatically generated file.
-- It was generated with uasm, the microassembler, on
-- Fri Aug  5 09:51:15 2022
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
          when "00000000000" => DATA_OUT_R <= "00000000100000000000000000000001100100100000";
          when "00000000001" => DATA_OUT_R <= "00000001000000000000000000000011001000100000";
          when "00000000010" => DATA_OUT_R <= "00000001100000000000000000000100101100100000";
          when "00000000011" => DATA_OUT_R <= "00000011000000000000000000000011111111100000";
          when "00000000100" => DATA_OUT_R <= "00000011100000000000000000000011111111100000";
          -- WRITE_TO_RAM0:
          when "00000000101" => DATA_OUT_R <= "00000000100000000000000000111010000010100000";
          when "00000000110" => DATA_OUT_R <= "11000011000100000000000000000000000000000100";
          when "00000000111" => DATA_OUT_R <= "00100000000000000000000000000000000000000010";
          -- WRITE_TO_RAM1:
          when "00000001000" => DATA_OUT_R <= "00000000100000000000000001000010000010100000";
          when "00000001001" => DATA_OUT_R <= "11000011000100000000000000000000000000000100";
          when "00000001010" => DATA_OUT_R <= "00100000000000000000000000000000000000000010";
          -- WRITE_TO_RAM2:
          when "00000001011" => DATA_OUT_R <= "00000000100000000000000000110011010011100000";
          when "00000001100" => DATA_OUT_R <= "11000011000100000000000000000000000000000100";
          when "00000001101" => DATA_OUT_R <= "00100000000000000000000000000000000000000010";
          -- FETCHING:
          when "00000001110" => DATA_OUT_R <= "11100011100100000000000000000000000000000100";
          when "00000001111" => DATA_OUT_R <= "00000000000000000000000000000000000000000001";
          when "00000010000" => DATA_OUT_R <= "00000000000000000000000000000000000000001001";
          when "00000010001" => DATA_OUT_R <= "00000000000000000100010000000000000000000000";
          when "00000010010" => DATA_OUT_R <= "00100000000000000000010000000001000001000000";
          when "00000110000" => DATA_OUT_R <= "00000000000111000000010000000000001110010000";
          when "00000111000" => DATA_OUT_R <= "00000000000011000000010000000000001110010000";
          when "00001000000" => DATA_OUT_R <= "00000000000101000000010000000000001110010000";
          -- IDLE:
          when "00001000001" => DATA_OUT_R <= "10100000000000000000010000000001000001000000";
          when "11111111111" => DATA_OUT_R <= "00000000000000000000000000000000000000000000";
          when others => DATA_OUT_R <= "00000000000000000000000000000000000000000000";
       end case;
     end process;
end RTL;