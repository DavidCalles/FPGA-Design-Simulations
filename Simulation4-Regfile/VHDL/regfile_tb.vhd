library IEEE;
use IEEE.std_logic_1164.ALL;
use IEEE.numeric_std.ALL;

entity REGFILE_Tb is
    -- Entity testbench
end REGFILE_Tb;

architecture TB of REGFILE_Tb is

    signal ASEL, BSEL, DSEL : unsigned(2 downto 0) := (others => '0');
    signal RIN, DIN         : unsigned(15 downto 0) := (others => '0');
    signal A, B             : unsigned(15 downto 0);
    signal CLK, RST         : std_logic;


    component REGFILE is
        port(
          ASEL, BSEL, DSEL : in unsigned(2 downto 0);
          RIN, DIN :         in unsigned(15 downto 0);
          ABUS, BBUS :       out unsigned(15 downto 0);
          CLK,RST :          in std_logic
          );
      end component;

    constant clk_period : time := 2 ns;
begin
      REGFILE1 : REGFILE port map (
        ASEL => ASEL,
        BSEL => BSEL,
        DSEL => DSEL,
        RIN  => RIN,
        DIN  => DIN,
        ABUS => A,
        BBUS => B,
        RST  => RST,
        CLK  => CLK);
      
    -- Clock process definition
    clk_process: process
    begin
        CLK <= '0';
        wait for clk_period/2;
        CLK <= '1';
        wait for clk_period/2;
    end process;

    process 
    begin 
        
        RST <= '0';
        DIN <= to_unsigned(15, 16);
        RIN <= to_unsigned(1, 16);
        DSEL <= to_unsigned(1, 3);
        ASEL <= to_unsigned(1, 3);
        BSEL <= to_unsigned(0, 3);
        wait for 10 ns;

        RIN <= to_unsigned(2, 16);
        DSEL <= to_unsigned(2, 3);
        ASEL <= to_unsigned(2, 3);
        BSEL <= to_unsigned(1, 3);
        wait for 10 ns;

        RIN <= to_unsigned(3, 16);
        DSEL <= to_unsigned(3, 3);
        ASEL <= to_unsigned(3, 3);
        BSEL <= to_unsigned(2, 3);
        wait for 10 ns;

        RIN <= to_unsigned(44, 16);
        DSEL <= to_unsigned(4, 3);
        ASEL <= to_unsigned(5, 3);
        BSEL <= to_unsigned(1, 3);
        wait for 10 ns;

        RIN <= to_unsigned(50, 16);
        DSEL <= to_unsigned(1, 3);
        ASEL <= to_unsigned(5, 3);
        BSEL <= to_unsigned(1, 3);
        wait for 10 ns;

        RIN <= to_unsigned(69, 16);
        DSEL <= to_unsigned(0, 3);
        ASEL <= to_unsigned(5, 3);
        BSEL <= to_unsigned(1, 3);
        wait for 10 ns;

        wait;

    end process; 

end TB; 