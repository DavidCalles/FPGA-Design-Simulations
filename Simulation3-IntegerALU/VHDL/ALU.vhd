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
            bbus    : in std_logic_vector(15 downto 0);
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

begin

    ------------------------ COMPONENTS INSTANCES -----------------------------
    Adder0 : Adder_uint16
        port map (
            A_u16 => aSignal_Adder,    
            B_u16 => bSignal_Adder, 
            Cin => cinSignal_Adder, 
            Op => operationSignal_Adder, 
            Sum_u16 => foutSignal_Adder, 
            Cout => coutSignal_Adder,
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

    ---------------------- FUNCTION SELECT DECODING ---------------------------
    process(FSEL, ABUS, BBUS, CIN) is
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
                foutSignal <= std_logic_vector(ABUS);
                
            when "0001" =>  -- 1: Increment ABUS by 1
                -- ALU signals
                aSignal_Adder <= std_logic_vector(ABUS);
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
                aSignal_Adder <= std_logic_vector(ABUS);
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
                aSignal_Adder <= std_logic_vector(ABUS);
                bSignal_Adder <= std_logic_vector(BBUS);
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
                aSignal_Adder <= std_logic_vector(ABUS);
                bSignal_Adder <= std_logic_vector(BBUS);
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
                aSignal_Bitwise <= std_logic_vector(ABUS);
                bSignal_Bitwise <= std_logic_vector(BBUS);
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
                aSignal_Bitwise <= std_logic_vector(ABUS);
                bSignal_Bitwise <= std_logic_vector(BBUS);
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
                aSignal_Bitwise <= std_logic_vector(ABUS);
                bSignal_Bitwise <= std_logic_vector(BBUS);
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
                aSignal_Bitwise <= std_logic_vector(ABUS);
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
                aSignal_Shifts <= std_logic_vector(ABUS);
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
                aSignal_Shifts <= std_logic_vector(ABUS);
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
                aSignal_Shifts <= std_logic_vector(ABUS);
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
                aSignal_Shifts <= std_logic_vector(ABUS);
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
                aSignal_Shifts <= std_logic_vector(ABUS);
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

        end case; -- case FSEL is

    end process; -- process(FSEL, ABUS, BBUS, CIN)

    -- Get OUTPUT signal out
    with FSEL select
        FOUT <= 
            ABUS                        when "0000", 
            unsigned(foutSignal_Adder)  when "0001" | "0010" | "0011" | "0100",
            unsigned(foutSignal_Bitwise)when "0101" | "0110" | "0111" | "1000",
            unsigned(foutSignal_Shifts) when "1001" | "1010" | "1011" | "1100" | "1101",
            (others => 'X')     when others;

    -- Get Flags out
    C <= coutSignal_Adder OR coutSignal_Shifts;   
    V <= overflowSignal_Adder OR overflowSignal_Shifts;

    Z <= '1' when (
        (FSEL = "0000" and ABUS = x"0000") or 
        ((FSEL = "0001" or FSEL = "0010" or FSEL = "0011" or FSEL = "0100") and (foutSignal_Adder = x"0000")) or
        ((FSEL = "0101" or FSEL = "0110" or FSEL = "0111" or FSEL = "1000") and (foutSignal_Bitwise = x"0000")) or
        ((FSEL = "1001" or FSEL = "1010" or FSEL = "1011" or FSEL = "1100" or FSEL = "1101") and (foutSignal_Shifts = x"0000"))
        ) else '0';
        

    with FSEL select
        S <= 
            ABUS(15)                when "0000", 
            foutSignal_Adder(15)    when "0001" | "0010" | "0011" | "0100",
            foutSignal_Bitwise(15)  when "0101" | "0110" | "0111" | "1000",
            foutSignal_Shifts(15)   when "1001" | "1010" | "1011" | "1100" | "1101",
            '0'                     when others;    

end architecture;