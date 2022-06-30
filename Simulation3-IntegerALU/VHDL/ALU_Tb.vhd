library IEEE;
use IEEE.std_logic_1164.ALL;
use IEEE.numeric_std.ALL;

entity ALU_Tb is
    -- Entity testbench
end ALU_Tb;

architecture TB of ALU_Tb is

    signal FSEL_reg:    std_logic_vector(3 downto 0);
    signal ABUS_reg:    unsigned(15 downto 0);
    signal BBUS_reg:    unsigned(15 downto 0);
    signal FOUT_reg:    unsigned(15 downto 0);
    signal CIN_reg:     std_logic;
    signal Z_reg:       std_logic;
    signal C_reg:       std_logic;
    signal S_reg:       std_logic;
    signal V_reg:       std_logic;

    component ALU
        port(
            ABUS : in unsigned(15 downto 0);
            BBUS : in unsigned(15 downto 0);
            FSEL : in std_logic_vector(3 downto 0);
            CIN  : in std_logic;

            C,Z,S,V : out std_logic;
            FOUT : out unsigned(15 downto 0)
        );
    end component;

begin
   
    alu0: ALU 
        port map (
            ABUS => ABUS_reg,
            BBUS => BBUS_reg,
            FSEL => FSEL_reg,
            CIN => CIN_reg,
            C => C_reg,
            Z => Z_reg,
            S => S_reg,
            V => V_reg,
            FOUT => FOUT_reg
        );

    process 
    begin 
        -- Bus transfer
        FSEL_reg <= "0000";
        ABUS_reg <= (0=>'1', others=>'0');
        BBUS_reg <= (others => '0');
        CIN_reg <= '0';
        wait for 100 ps;	

        -- ABUS+1
        FSEL_reg <= "0001";
        ABUS_reg <= (1=>'1', others=>'0');
        BBUS_reg <= (others => '0');
        CIN_reg <= '0';
        wait for 20 ps;
        ABUS_reg <= (2=>'1', others=>'0');
        wait for 20 ps;
        ABUS_reg <= (3=>'1', others=>'0');
        wait for 20 ps;
        ABUS_reg <= (4=>'1', others=>'0');
        wait for 100 ps;

        -- ABUS-1
        FSEL_reg <= "0010";
        ABUS_reg <= (1=>'1', others=>'0');
        BBUS_reg <= (others => '0');
        CIN_reg <= '0';
        wait for 20 ps;
        ABUS_reg <= (2=>'1', others=>'0');
        wait for 20 ps;
        ABUS_reg <= (3=>'1', others=>'0');
        wait for 20 ps;
        ABUS_reg <= (4=>'1', others=>'0');
        wait for 100 ps;

        -- ABUS+BBUS+CIN
        FSEL_reg <= "0011";
        ABUS_reg <= (1=>'1', others=>'0');
        BBUS_reg <= (1=>'1', 2=>'1', others=>'0');
        CIN_reg <= '1';
        wait for 20 ps;
        ABUS_reg <= (2=>'1', others=>'0');
        BBUS_reg <= (2=>'1', 3=>'1', others=>'0');
        wait for 20 ps;
        ABUS_reg <= (3=>'1', others=>'0');
        BBUS_reg <= (2=>'1', 3=>'1', others=>'0');
        wait for 20 ps;
        ABUS_reg <= (4=>'1', others=>'0');
        BBUS_reg <= (2=>'1', 3=>'1', others=>'0');
        wait for 100 ps;

        -- ABUS-BBUS-CIN
        FSEL_reg <= "0100";
        ABUS_reg <= (3=>'1', others=>'0');
        BBUS_reg <= (1=>'1', 2=>'1', others=>'0');
        CIN_reg <= '0';
        wait for 20 ps;
        ABUS_reg <= (2=>'1', others=>'0');
        BBUS_reg <= (2=>'1', 3=>'1', others=>'0');
        wait for 20 ps;
        ABUS_reg <= (3=>'1', others=>'0');
        BBUS_reg <= (2=>'1', 3=>'1', others=>'0');
        wait for 20 ps;
        ABUS_reg <= (4=>'1', others=>'0');
        BBUS_reg <= (2=>'1', 3=>'1', others=>'0');
        wait for 100 ps;

        -- AND
        FSEL_reg <= "0101";
        ABUS_reg <= (4=>'1', others=>'0');
        BBUS_reg <= (4=>'1', 2=>'1', others=>'0');
        CIN_reg <= '1';
        wait for 20 ps;
        ABUS_reg <= (5=>'1', others=>'0');
        BBUS_reg <= (5=>'1', 2=>'1', others=>'0');
        wait for 20 ps;
        ABUS_reg <= (5=>'1', 6=>'1', others=>'0');
        BBUS_reg <= (4=>'1', 2=>'1', others=>'0');
        wait for 100 ps;

        -- OR
        FSEL_reg <= "0110";
        ABUS_reg <= (4=>'1', others=>'0');
        BBUS_reg <= (4=>'1', 2=>'1', others=>'0');
        CIN_reg <= '1';
        wait for 20 ps;
        ABUS_reg <= (5=>'1', others=>'0');
        BBUS_reg <= (5=>'1', 2=>'1', others=>'0');
        wait for 20 ps;
        ABUS_reg <= (5=>'1', 6=>'1', others=>'0');
        BBUS_reg <= (4=>'1', 2=>'1', others=>'0');
        wait for 100 ps;

        --XOR
        FSEL_reg <= "0111";
        ABUS_reg <= (4=>'1', 3=>'1', others=>'0');
        BBUS_reg <= (4=>'1', 2=>'1', others=>'0');
        CIN_reg <= '1';
        wait for 100 ps;

        --NOT ABUS
        FSEL_reg <= "1000";
        ABUS_reg <= (4=>'1', 3=>'1', others=>'0');
        BBUS_reg <= (4=>'1', 2=>'1', others=>'0');
        CIN_reg <= '1';
        wait for 100 ps;

        -- Shift Left
        FSEL_reg <= "1001";
        ABUS_reg <= (4=>'1', 3=>'1', others=>'0');
        BBUS_reg <= (4=>'1', 2=>'1', others=>'0');
        CIN_reg <= '1';
        wait for 100 ps;

        -- Shift Right
        FSEL_reg <= "1010";
        ABUS_reg <= (4=>'1', 3=>'1', others=>'0');
        BBUS_reg <= (4=>'1', 2=>'1', others=>'0');
        CIN_reg <= '1';
        wait for 100 ps;

        -- Arithmetic shift right
        FSEL_reg <= "1011";
        ABUS_reg <= (15=>'1', 0=>'1', others=>'0');
        BBUS_reg <= (4=>'1', 2=>'1', others=>'0');
        CIN_reg <= '1';
        wait for 100 ps;

        -- Rotate Left
        FSEL_reg <= "1100";
        ABUS_reg <= (15=>'1', 0=>'1', others=>'0');
        BBUS_reg <= (4=>'1', 2=>'1', others=>'0');
        CIN_reg <= '1';
        wait for 100 ps;

        -- Rotate Right
        FSEL_reg <= "1101"; 
        ABUS_reg <= (15=>'1', 0=>'1', others=>'0');
        BBUS_reg <= (4=>'1', 2=>'1', others=>'0');
        CIN_reg <= '1';
        wait for 100 ps;

        wait;

    end process; 

end TB; 