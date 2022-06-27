library IEEE;
use IEEE.std_logic_1164.ALL;

entity Flags is
    port(
        num             : in std_logic_vector(15 downto 0);
        carryAdder      : in std_logic;
        overflowAdder   : in std_logic;
        carryShift      : in std_logic;
        overflowShift   : in std_logic;
        S               : out std_logic;
        Z               : out std_logic;
        C               : out std_logic;
        V               : out std_logic
    );
end Flags;

architecture RTL of Flags is
begin

    C <= carryAdder or carryShift;
    V <= overflowAdder or overflowShift;
    Z <= '1' when num = x"0000" else '0';
    S <= num(15);   

end architecture;