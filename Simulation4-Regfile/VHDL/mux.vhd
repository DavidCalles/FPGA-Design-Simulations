-- regfile.vhd
--
--   Implementation of a register file.
--
library IEEE;
use IEEE.std_logic_1164.ALL;
use IEEE.numeric_std.ALL;
library WORK;
use WORK.common.all;

entity MUX is
    port(
        DIN:    in unsigned(15 downto 0);
        REGS:   in regArray_t;
        SEL:    in unsigned(2 downto 0);
        OUTBUS: out unsigned(15 downto 0) 
    );
end MUX;

architecture RTL of MUX is
begin
    with SEL select
        OUTBUS <= 
            DIN                     when "000", 
            REGS(to_integer(SEL))   when "001" | "010" | "011" | "100" | "101" | "110" | "111", 
            (others => '0') when others;

end architecture;

