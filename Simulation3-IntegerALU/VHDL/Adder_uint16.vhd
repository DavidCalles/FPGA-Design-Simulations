library IEEE;
use IEEE.std_logic_1164.ALL;

entity Adder_uint16 is
  port(
        A_u16       : in std_logic_vector(15 downto 0);
        B_u16       : in std_logic_vector(15 downto 0);
        Cin         : in std_logic;
        Enable      : in std_logic;
        Sum_u16     : out std_logic_vector(15 downto 0);
        Cout        : out std_logic; 
        Overflow    : out std_logic
    );
end Adder_uint16;

architecture RTL of Adder_uint16 is

    signal sumSignal        : std_logic_vector(15 downto 0);
    signal coutSignal       : std_logic_vector(15 downto 1);
    signal overflowSignal   : std_logic;

    component FullAdder
        port(
            a       : in std_logic;
            b       : in std_logic;
            cin     : in std_logic;
            sum     : out std_logic;
            cout    : out std_logic; 
        );
    end component FullAdder;

begin

    -- LSB of Adder
    fAdder0 : FullAdder
    port map (
        a => A_u16(0),
        b => B_u16(0),
        cin => Cin,
        sum => sumSignal(0),
        cout => coutSignal(0)  
    );

    -- Intermediate bits of Adder    
    GEN_FULL_ADDERS: 
    for I in 1 to 14 generate
        fAdderX : FullAdder
        port map (
            a => A_u16(I),
            b => B_u16(I),
            cin => coutSignal(I-1),
            sum => sumSignal(I),
            cout => coutSignal(I)  
        );
    end generate GEN_FULL_ADDERS;    

    -- MSB of Adder    
    fAdder15 : FullAdder
    port map (
        a => A_u16(15),
        b => B_u16(15),
        cin => coutSignal(14),
        sum => sumSignal(15),
        cout => coutSignal(15)  
    );

    -- Get signals out of entity
    Sum_u16 <= sumSignal and Enable;
    Cout <= coutSignal(15) and Enable;
    Overflow <= coutSignal(15) and Enable;

end architecture;