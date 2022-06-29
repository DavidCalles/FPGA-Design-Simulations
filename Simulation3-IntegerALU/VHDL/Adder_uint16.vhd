library IEEE;
use IEEE.std_logic_1164.ALL;

entity Adder_uint16 is
  port(
        A_u16       : in std_logic_vector(15 downto 0);
        B_u16       : in std_logic_vector(15 downto 0);
        Cin         : in std_logic;
        Op          : in std_logic_vector(1 downto 0);
        Sum_u16     : out std_logic_vector(15 downto 0);
        Cout        : out std_logic; 
        Overflow    : out std_logic
    );
end Adder_uint16;

architecture RTL of Adder_uint16 is

    signal sumSignal        : std_logic_vector(15 downto 0);
    signal coutSignal       : std_logic_vector(15 downto 1);
    signal aSignal          : std_logic_vector(15 downto 0);
    signal bSignal          : std_logic_vector(15 downto 0);
    signal overflowSignal   : std_logic;
    signal cinSignal        : std_logic;

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
        a => aSignal(0),
        b => bSignal(0),
        cin => cinSignal,
        sum => sumSignal(0),
        cout => coutSignal(0)  
    );

    -- Intermediate bits of Adder    
    GEN_FULL_ADDERS: 
    for I in 1 to 14 generate
        fAdderX : FullAdder
        port map (
            a => aSignal(I),
            b => bSignal(I),
            cin => coutSignal(I-1),
            sum => sumSignal(I),
            cout => coutSignal(I)  
        );
    end generate GEN_FULL_ADDERS;    

    -- MSB of Adder    
    fAdder15 : FullAdder
    port map (
        a => aSignal(15),
        b => bSignal(15),
        cin => coutSignal(14),
        sum => sumSignal(15),
        cout => coutSignal(15)  
    );

    process(A_u16, B_u16, Cin, Op) is
    begin
 
        case Op is
            when "00" =>
                aSignal <= (others => '0');
                bSignal <= (others => '0');
                Sum_u16 <= (others => '0');
                Cout <= '0';
                Overflow <= '0';
                cinSignal <= '0';

            when "01" =>
                aSignal <= A_u16;
                bSignal <= B_u16;
                Sum_u16 <= sumSignal;
                Cout <= coutSignal(15);
                Overflow <= coutSignal(15);
                cinSignal <= Cin;

            when "11" => -- WIP (CIN HAS TO BE NEGATIVE)
                aSignal <= A_u16;
                bSignal <= std_logic_vector(-signed(resize(unsigned(B_u16)), bSignal'length));
                Sum_u16 <= sumSignal;
                Cout <= coutSignal(15);
                Overflow <= coutSignal(15);
                cinSignal <= Cin; -- WILL BE WRONG

            when others =>
                aSignal <= (others => '0');
                bSignal <= (others => '0');
                Sum_u16 <= (others => '0');
                Cout <= '0';
                Overflow <= '0';
                cinSignal <= '0';
        end case;
 
    end process;

end architecture;