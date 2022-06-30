library IEEE;
use IEEE.std_logic_1164.ALL;
use IEEE.numeric_std.ALL;

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
    signal coutSignal       : std_logic_vector(15 downto 0);
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
            cout    : out std_logic
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
        variable v_aux_Cin : unsigned(0 downto 0);
    begin
        -- Used to create a "negative carry"
        v_aux_Cin(0) := Cin;

        case Op is
            when "00" =>
                aSignal <= (others => '0');
                bSignal <= (others => '0');
                cinSignal <= '0';

            when "01" =>
                aSignal <= A_u16;
                bSignal <= B_u16;
                cinSignal <= Cin;

            when "11" => -- THERE HAS TO BE ANOTHER WAY!
                aSignal <= A_u16;
                bSignal <= std_logic_vector(-signed(resize(unsigned(B_u16), bSignal'length))
                                            -signed(resize(v_aux_Cin, bSignal'length)));
                cinSignal <= '0'; 

            when others =>
                aSignal <= (others => '0');
                bSignal <= (others => '0');
                cinSignal <= '0';
        end case;
    end process;

    -- Get outputs out
    Sum_u16 <= sumSignal;
    -- WHEN SUBTRACTING... WHEN IS THIS SUPPOSED TO BE ON
    Cout <= coutSignal(15)          when (Op = "01") else
            (not coutSignal(15))    when (Op = "11") else
            '0';
    Overflow <= '1' when ( 
        (A_u16(15) = '1' and bSignal(15) = '1' and sumSignal(15) = '0') or
        (A_u16(15) = '0' and bSignal(15) = '0' and sumSignal(15) = '1')
        ) else '0';

end architecture;