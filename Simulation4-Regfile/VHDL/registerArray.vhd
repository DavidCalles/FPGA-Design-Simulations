-- regfile.vhd
--
--   Implementation of a register file.
--
library IEEE;
use IEEE.std_logic_1164.ALL;
use IEEE.numeric_std.ALL;
library WORK;
use WORK.common.all;

entity REGISTER_ARRAY is
    port(
        DSEL:   in unsigned(2 downto 0);
        RIN :   in unsigned(15 downto 0);
        CLK :   in std_logic;
        RST :   in std_logic;
        REGS:   out regArray_t
    );
end REGISTER_ARRAY;

architecture RTL of REGISTER_ARRAY is

    -- Array of registers (7) zero-initialized
    signal regArray : regArray_t := (others => (others => '0'));

begin

    process(CLK, RST, DSEL, RIN)
    begin

        if rising_edge(CLK) then

            if (RST = '1') then
                if (DSEL /= "000") then
                    regArray(to_integer(DSEL)) <= RIN; 
                end if;   
            else
                regArray <= (others => (others => '0'));
            end if;

        end if; -- rising_edge(clk)
    
    end process;

    -- Output the registers
    REGS <= regArray;

end architecture;

