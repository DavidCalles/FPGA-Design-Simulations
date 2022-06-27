library IEEE;
use IEEE.std_logic_1164.ALL;

entity Select is
    port(
        fsel    : in std_logic_vector(3 downto 0);
        enables : out std_logic_vector(2 downto 0)
    );
end Select;

architecture RTL of Select is
begin

    process(fsel) is
    begin
 
        case Sel is
            when "000" =>
                Output2 <= Sig1;
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