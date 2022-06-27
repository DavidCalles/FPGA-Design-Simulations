library IEEE;
use IEEE.std_logic_1164.ALL;

entity FullAdder is
    port(
        a       : in std_logic;
        b       : in std_logic;
        cin     : in std_logic;
        sum     : out std_logic;
        cout    : out std_logic; 
    );
end FullAdder;

architecture RTL of FullAdder is
begin

    sum <= (a XOR b) XOR cin;
    cout <= (a AND b) OR (cin AND (A XOR B));

end architecture;