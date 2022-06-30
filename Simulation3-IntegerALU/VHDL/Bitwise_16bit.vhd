library IEEE;
use IEEE.std_logic_1164.ALL;

entity Bitwise_16bit is
    port(
        abus    : in std_logic_vector(15 downto 0);
        bbus    : in std_logic_vector(15 downto 0);
        op      : in std_logic_vector(2 downto 0);
        outbus  : out std_logic_vector(15 downto 0)
    );
end Bitwise_16bit;

architecture RTL of Bitwise_16bit is
begin

    with op select
        outbus <=   (others => '0') when "000",
                    (abus and bbus) when "001",
                    (abus or bbus)  when "010",
                    (abus xor bbus) when "011",
                    (not abus)      when "100",
				    (others => '0') when others;

end architecture;