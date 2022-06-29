
library ieee;
use ieee.std_logic_1164.all;

library IEEE;
use IEEE.std_logic_1164.ALL;
use IEEE.numeric_std.ALL;

entity ALU is
    port(
        ABUS : in unsigned(15 downto 0);
        BBUS : in unsigned(15 downto 0);
        FSEL : in std_logic_vector(3 downto 0);
        CIN  : in std_logic;

        C,Z,S,V : out std_logic;
        FOUT : out unsigned(15 downto 0)
    );
end ALU;

architecture RTL of ALU is

    --------------------- SIGNALS AND VARIABLES -------------------------------

    -- General use signals
    signal foutSignal:              std_logic_vector(15 downto 0);

    -- Adder signals
    signal aSignal_Adder:           std_logic_vector(15 downto 0);
    signal bSignal_Adder:           std_logic_vector(15 downto 0);
    signal cinSignal_Adder:         std_logic;
    signal coutSignal_Adder:        std_logic;
    signal overflowSignal_Adder:    std_logic;
    signal operationSignal_Adder:   std_logic_vector(1 downto 0);
    signal foutSignal_Adder:        std_logic_vector(15 downto 0);

    -- Bitwise
    signal aSignal_Bitwise:           std_logic_vector(15 downto 0);
    signal bSignal_Bitwise:           std_logic_vector(15 downto 0);
    signal foutSignal_Bitwise:        std_logic_vector(15 downto 0);
    signal operationSignal_Bitwise:   std_logic_vector(2 downto 0); 

    -- Shift signals
    signal aSignal_Shifts:          std_logic_vector(15 downto 0);
    signal cinSignal_Shifts:        std_logic;
    signal coutSignal_Shifts:       std_logic;
    signal overflowSignal_Shifts:   std_logic;
    signal foutSignal_Shifts:       std_logic_vector(15 downto 0);
    signal operationSignal_Shifts:  std_logic_vector(2 downto 0); 

    -- Flags signals
    signal CSignal_Flag:    std_logic;
    signal ZSignal_Flag:    std_logic;
    signal SSignal_Flag:    std_logic;
    signal VSignal_Flag:    std_logic;

    ------------------------------ COMPONENTS ---------------------------------

    component Adder_uint16
        port(
            A_u16       : in std_logic_vector(15 downto 0);
            B_u16       : in std_logic_vector(15 downto 0);
            Cin         : in std_logic;
            Op          : in std_logic_vector(1 downto 0);
            Sum_u16     : out std_logic_vector(15 downto 0);
            Cout        : out std_logic; 
            Overflow    : out std_logic
        );
    end component Adder_uint16;

    component Bitwise_16bit
        port(
            abus    : in std_logic_vector(15 downto 0);
            bbus    : in std_logic_vector(15 downto 0):
            op      : in std_logic_vector(2 downto 0);
            outbus  : out std_logic_vector(15 downto 0)
        );
    end component Bitwise_16bit;

    component Shifts
        port(
            abus    : in std_logic_vector(15 downto 0);
            cin     : in std_logic;
            op      : in std_logic_vector(2 downto 0);
            outbus  : out std_logic_vector(15 downto 0);
            cout    : out std_logic;
            overflow: out std_logic
        );
    end component Shifts;

    component Flags
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
    end component Flags;

begin

    ------------------------ COMPONENTS INSTANCES -----------------------------
    Adder0 : Adder_uint16
        port map (
            A_u16 => aSignal_Adder,    
            B_u16 => bSignal_Adder, 
            Cin => cinSignal_Adder, 
            Op => operationSignal_Adder, 
            Sum_u16 => coutSignal_Adder, 
            Cout => foutSignal_Adder, 
            Overflow => overflowSignal_Adder
        );

    Bitwise0 : Bitwise_16bit
        port map (
            abus => aSignal_Bitwise,
            bbus => bSignal_Bitwise,
            op => operationSignal_Bitwise,
            outbus => foutSignal_Bitwise
        );

    Shifts0 : Shifts
        port map (
            abus => aSignal_Shifts,
            cin => cinSignal_Shifts,
            op => operationSignal_Shifts,
            outbus => foutSignal_Shifts,
            cout => coutSignal_Shifts,
            overflow => overflowSignal_Shifts
        );
    
    Flags0 : Flags
        port map (
            num => foutSignal,
            carryAdder => foutSignal_Adder,
            overflowAdder => overflowSignal_Adder,
            carryShift => coutSignal_Shifts,
            overflowShift => overflowSignal_Shifts,
            S => SSignal_Flag,
            Z => ZSignal_Flag,
            C => CSignal_Flag,
            V => VSignal_Flag
        );

    
    ---------------------- FUNCTION SELECT DECODING ---------------------------
    process(FSEL) is
    begin
        case FSEL is
            when "0000" =>  -- 0: Transfer ABUS
                -- ALU signals
                aSignal_Adder <= (others => '0');
                bSignal_Adder <= (others => '0');
                cinSignal_Adder <= '0';
                operationSignal_Adder <= "00";
                -- Bitwise signals
                aSignal_Bitwise <= (others => '0');
                bSignal_Bitwise <= (others => '0');
                operationSignal_Bitwise <= "000";
                -- Shift Signals
                aSignal_Shifts <= (others => '0');
                cinSignal_Shifts <= '0';
                operationSignal_Shifts <= "000";
                -- Output Selector
                foutSignal <= ABUS;
                
            when "0001" =>  -- 1: Increment ABUS by 1
                -- ALU signals
                aSignal_Adder <= ABUS;
                bSignal_Adder <= (0=>'1', others =>'0');
                cinSignal_Adder <= '0';
                operationSignal_Adder <= "01";
                -- Bitwise signals
                aSignal_Bitwise <= (others => '0');
                bSignal_Bitwise <= (others => '0');
                operationSignal_Bitwise <= "000";
                -- Shift Signals
                aSignal_Shifts <= (others => '0');
                cinSignal_Shifts <= '0';
                operationSignal_Shifts <= "000";
                -- Output Selector
                foutSignal <= foutSignal_Adder;

            when "0010" =>  -- 2: Decrement ABUS by 1
                -- ALU signals
                aSignal_Adder <= ABUS;
                bSignal_Adder <= (0=>'1', others =>'0');
                cinSignal_Adder <= '0';
                operationSignal_Adder <= "11";
                -- Bitwise signals
                aSignal_Bitwise <= (others => '0');
                bSignal_Bitwise <= (others => '0');
                operationSignal_Bitwise <= "000";
                -- Shift Signals
                aSignal_Shifts <= (others => '0');
                cinSignal_Shifts <= '0';
                operationSignal_Shifts <= "000";
                -- Output Selector
                foutSignal <= foutSignal_Adder;

            when "0011" =>  -- 3: Add ABUS + BBUS + CIN
                -- ALU signals
                aSignal_Adder <= ABUS;
                bSignal_Adder <= BBUS;
                cinSignal_Adder <= CIN;
                operationSignal_Adder <= "01";
                -- Bitwise signals
                aSignal_Bitwise <= (others => '0');
                bSignal_Bitwise <= (others => '0');
                operationSignal_Bitwise <= "000";
                -- Shift Signals
                aSignal_Shifts <= (others => '0');
                cinSignal_Shifts <= '0';
                operationSignal_Shifts <= "000";
                -- Output Selector
                foutSignal <= foutSignal_Adder;

            when "0100" =>  -- 4: Subtract ABUS-BBUS-CIN
                -- ALU signals
                aSignal_Adder <= ABUS;
                bSignal_Adder <= BBUS;
                cinSignal_Adder <= CIN;
                operationSignal_Adder <= "11";
                -- Bitwise signals
                aSignal_Bitwise <= (others => '0');
                bSignal_Bitwise <= (others => '0');
                operationSignal_Bitwise <= "000";
                -- Shift Signals
                aSignal_Shifts <= (others => '0');
                cinSignal_Shifts <= '0';
                operationSignal_Shifts <= "000";
                -- Output Selector
                foutSignal <= foutSignal_Adder;

            when "0101" =>  -- 5: Bitwise ABUS AND BBUS
                -- ALU signals
                aSignal_Adder <= (others => '0');
                bSignal_Adder <= (others => '0');
                cinSignal_Adder <= '0';
                operationSignal_Adder <= "00";
                -- Bitwise signals
                aSignal_Bitwise <= ABUS;
                bSignal_Bitwise <= BBUS;
                operationSignal_Bitwise <= "001";
                -- Shift Signals
                aSignal_Shifts <= (others => '0');
                cinSignal_Shifts <= '0';
                operationSignal_Shifts <= "000";
                -- Output Selector
                foutSignal <= foutSignal_Bitwise;

            when "0110" =>  -- 6: Bitwise ABUS OR BBUS
                -- ALU signals
                aSignal_Adder <= (others => '0');
                bSignal_Adder <= (others => '0');
                cinSignal_Adder <= '0';
                operationSignal_Adder <= "00";
                -- Bitwise signals
                aSignal_Bitwise <= ABUS;
                bSignal_Bitwise <= BBUS;
                operationSignal_Bitwise <= "010";
                -- Shift Signals
                aSignal_Shifts <= (others => '0');
                cinSignal_Shifts <= '0';
                operationSignal_Shifts <= "000";
                -- Output Selector
                foutSignal <= foutSignal_Bitwise;

            when "0111" =>  -- 7: Bitwise ABUS XOR BBUS
                -- ALU signals
                aSignal_Adder <= (others => '0');
                bSignal_Adder <= (others => '0');
                cinSignal_Adder <= '0';
                operationSignal_Adder <= "00";
                -- Bitwise signals
                aSignal_Bitwise <= ABUS;
                bSignal_Bitwise <= BBUS;
                operationSignal_Bitwise <= "011";
                -- Shift Signals
                aSignal_Shifts <= (others => '0');
                cinSignal_Shifts <= '0';
                operationSignal_Shifts <= "000";
                -- Output Selector
                foutSignal <= foutSignal_Bitwise;

            when "1000" =>  -- 8: Bitwise NOT ABUS
                -- ALU signals
                aSignal_Adder <= (others => '0');
                bSignal_Adder <= (others => '0');
                cinSignal_Adder <= '0';
                operationSignal_Adder <= "00";
                -- Bitwise signals
                aSignal_Bitwise <= ABUS;
                bSignal_Bitwise <= (others => '0');
                operationSignal_Bitwise <= "100";
                -- Shift Signals
                aSignal_Shifts <= (others => '0');
                cinSignal_Shifts <= '0';
                operationSignal_Shifts <= "000";
                -- Output Selector
                foutSignal <= foutSignal_Bitwise;

            when "1001" =>  -- 9: Shift ABUS left, C contains ABUS[15], FOUT[0] contains 0.
                -- ALU signals
                aSignal_Adder <= (others => '0');
                bSignal_Adder <= (others => '0');
                cinSignal_Adder <= '0';
                operationSignal_Adder <= "00";
                -- Bitwise signals
                aSignal_Bitwise <= (others => '0');
                bSignal_Bitwise <= (others => '0');
                operationSignal_Bitwise <= "000";
                -- Shift Signals
                aSignal_Shifts <= ABUS;
                cinSignal_Shifts <= '0';
                operationSignal_Shifts <= "001";
                -- Output Selector
                foutSignal <= foutSignal_Shifts;

            when "1010" =>  -- 10: Shift ABUS right, C contains ABUS[0], FOUT[15] contains 0.
                -- ALU signals
                aSignal_Adder <= (others => '0');
                bSignal_Adder <= (others => '0');
                cinSignal_Adder <= '0';
                operationSignal_Adder <= "00";
                -- Bitwise signals
                aSignal_Bitwise <= (others => '0');
                bSignal_Bitwise <= (others => '0');
                operationSignal_Bitwise <= "000";
                -- Shift Signals
                aSignal_Shifts <= ABUS;
                cinSignal_Shifts <= '0';
                operationSignal_Shifts <= "010";
                -- Output Selector
                foutSignal <= foutSignal_Shifts;

            when "1011" =>  -- 11: Arithmetic Shift A right, Bit C contains ABUS[0]
                -- ALU signals
                aSignal_Adder <= (others => '0');
                bSignal_Adder <= (others => '0');
                cinSignal_Adder <= '0';
                operationSignal_Adder <= "00";
                -- Bitwise signals
                aSignal_Bitwise <= (others => '0');
                bSignal_Bitwise <= (others => '0');
                operationSignal_Bitwise <= "000";
                -- Shift Signals
                aSignal_Shifts <= ABUS;
                cinSignal_Shifts <= '0';
                operationSignal_Shifts <= "011";
                -- Output Selector
                foutSignal <= foutSignal_Shifts;

            when "1100" =>  -- 12: Rotate Left through Carry, FOUT[0] contains CIN, C contains ABUS[15]
                -- ALU signals
                aSignal_Adder <= (others => '0');
                bSignal_Adder <= (others => '0');
                cinSignal_Adder <= '0';
                operationSignal_Adder <= "00";
                -- Bitwise signals
                aSignal_Bitwise <= (others => '0');
                bSignal_Bitwise <= (others => '0');
                operationSignal_Bitwise <= "000";
                -- Shift Signals
                aSignal_Shifts <= ABUS;
                cinSignal_Shifts <= CIN;
                operationSignal_Shifts <= "100";
                -- Output Selector
                foutSignal <= foutSignal_Shifts;

            when "1101" =>  -- 13: Rotate Right through Carry, FOUT[15] contains CIN, C contains ABUS[0]
                -- ALU signals
                aSignal_Adder <= (others => '0');
                bSignal_Adder <= (others => '0');
                cinSignal_Adder <= '0';
                operationSignal_Adder <= "00";
                -- Bitwise signals
                aSignal_Bitwise <= (others => '0');
                bSignal_Bitwise <= (others => '0');
                operationSignal_Bitwise <= "000";
                -- Shift Signals
                aSignal_Shifts <= ABUS;
                cinSignal_Shifts <= CIN;
                operationSignal_Shifts <= "101";
                -- Output Selector
                foutSignal <= foutSignal_Shifts;

            when "1110" =>  -- 14: Reserved 1 (Can set FOUT = all 'X, or implement something custom.)
                -- ALU signals
                aSignal_Adder <= (others => '0');
                bSignal_Adder <= (others => '0');
                cinSignal_Adder <= '0';
                operationSignal_Adder <= "00";
                -- Bitwise signals
                aSignal_Bitwise <= (others => '0');
                bSignal_Bitwise <= (others => '0');
                operationSignal_Bitwise <= "000";
                -- Shift Signals
                aSignal_Shifts <= (others => '0');
                cinSignal_Shifts <= '0';
                operationSignal_Shifts <= "000";
                -- Output Selector
                foutSignal <= (others => 'X');

            when "1111" =>  -- 15: Reserved 2 (Can set FOUT = all 'X, or implement something custom.)
                -- ALU signals
                aSignal_Adder <= (others => '0');
                bSignal_Adder <= (others => '0');
                cinSignal_Adder <= '0';
                operationSignal_Adder <= "00";
                -- Bitwise signals
                aSignal_Bitwise <= (others => '0');
                bSignal_Bitwise <= (others => '0');
                operationSignal_Bitwise <= "000";
                -- Shift Signals
                aSignal_Shifts <= (others => '0');
                cinSignal_Shifts <= '0';
                operationSignal_Shifts <= "000";
                -- Output Selector
                foutSignal <= (others => 'X');

            when others => -- 'U', 'X', '-', etc.
                -- ALU signals
                aSignal_Adder <= (others => '0');
                bSignal_Adder <= (others => '0');
                cinSignal_Adder <= '0';
                operationSignal_Adder <= "00";
                -- Bitwise signals
                aSignal_Bitwise <= (others => '0');
                bSignal_Bitwise <= (others => '0');
                operationSignal_Bitwise <= "000";
                -- Shift Signals
                aSignal_Shifts <= (others => '0');
                cinSignal_Shifts <= '0';
                operationSignal_Shifts <= "000";
                -- Output Selector
                foutSignal <= (others => 'X');

        end case;

    end process;

    -- Get signals out
    FOUT <= foutSignal;
    C <= CSignal_Flag;
    Z <= ZSignal_Flag;
    S <= SSignal_Flag;
    V <= VSignal_Flag;

end architecture;