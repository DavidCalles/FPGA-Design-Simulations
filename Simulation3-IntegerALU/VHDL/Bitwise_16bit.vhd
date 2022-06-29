library IEEE;
use IEEE.std_logic_1164.ALL;

entity Bitwise_16bit is
    port(
        abus    : in std_logic_vector(15 downto 0);
        bbus    : in std_logic_vector(15 downto 0):
        op      : in std_logic_vector(2 downto 0);
        outbus  : out std_logic_vector(15 downto 0)
    );
end Bitwise_16bit;

architecture RTL of Bitwise_16bit is
begin

    process(op, abus, bbus) is
    begin
 
        case op is
            when "000" =>
                outbus <= (others => '0');
            when "001" =>
                outbus <= abus and bbus;
            when "010" =>
                outbus <= abus or bbus;
            when "011" =>
                outbus <= abus xor bbus;
            when "100" =>
                outbus <= not abus;
            when others =>
                outbus <= (others => '0');
        end case;
 
    end process;

end architecture;