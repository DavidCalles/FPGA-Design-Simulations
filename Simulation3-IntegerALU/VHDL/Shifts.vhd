library IEEE;
use IEEE.std_logic_1164.ALL;

entity Shifts is
    port(
        abus    : in std_logic_vector(15 downto 0);
        cin     : in std_logic;
        op      : in std_logic_vector(2 downto 0);
        outbus  : out std_logic_vector(15 downto 0);
        cout    : out std_logic;
        overflow: out std_logic
    );
end Shifts;

architecture RTL of Shifts is
begin

    process(op, abus, cin) is
    begin
 
        case op is
            when "000" => -- No operation
                outbus <= (others => '0');
                cout <= '0';
                overflow <= '0';

            when "001" => -- Shift left
                outbus <= abus(14 downto 0) & '0';
                cout <= abus(15);
                overflow <= abus(15);
            
            when "010" => -- Shift right
                outbus <= '0' & abus(15 downto 1);
                cout <= abus(0);
                overflow <= '0';

            when "011" => -- Arithmetic shift right
                outbus <= abus(15) & abus(15 downto 1);
                cout <= abus(0);
                overflow <= '0';

            when "100" => -- Rotate left through carry
                outbus <= abus(14 downto 0) & cin;
                cout <= abus(15);
                overflow <= abus(15);

            when "101" => -- Rotate right through carry
                outbus <= cin & abus(15 downto 1);
                cout <= abus(0);
                overflow <= '0';

            when others =>
                outbus <= (others => '0');
                cout <= '0';

        end case;
 
    end process;

end architecture;