-- test_regfile.vhd
--
--   Register file test bench.
--
library IEEE;
use IEEE.std_logic_1164.ALL;
use IEEE.numeric_std.ALL;

entity TEST_REGFILE is
end TEST_REGFILE;

architecture RTL of TEST_REGFILE is

    signal ASEL, BSEL, DSEL : unsigned(2 downto 0) := (others => '0');
    signal RIN, DIN         : unsigned(15 downto 0) := (others => '0');
    signal A, B             : unsigned(15 downto 0);
    signal CLK, RST         : std_logic;

    signal TestCases        : integer := 0;
    signal Failures         : integer := 0;
    signal Passes           : integer := 0;
    
    component REGFILE is
      port(
        ASEL, BSEL, DSEL : in unsigned(2 downto 0);
        RIN, DIN :         in unsigned(15 downto 0);
        ABUS, BBUS :       out unsigned(15 downto 0);
        CLK,RST :          in std_logic
        );
    end component;

-- Modelsim student edition seems to have a default resolution of
-- 1ns. If we use a time delay less than that, it rounds it to 0, and the
-- time does not advance in the simulation.  Since the time does not advance,
-- all test cases fail.
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

  testbench: process
  -- Procedure to update inputs
  procedure microop(
    ASEL_i, BSEL_i, DSEL_i : in integer;
    DIN_i, RIN_i :           in integer;
    A_i, B_i :               in integer
    ) is
    
    variable SubFails : integer := 0;

  begin
    ASEL <= TO_UNSIGNED(ASEL_i,3);
    BSEL <= TO_UNSIGNED(BSEL_i,3);
    DSEL <= TO_UNSIGNED(DSEL_i,3);
    DIN  <= TO_UNSIGNED(DIN_i,16);
    RIN  <= TO_UNSIGNED(RIN_i,16);
    wait until rising_edge(CLK);
    wait for 0 ps;             -- Wait for all delta cycles to finish
    wait for 0 ps;             -- Wait for all delta cycles to finish
    wait for 0 ps;             -- Wait for all delta cycles to finish
    wait for 0 ps;             -- Wait for all delta cycles to finish
    wait for 0 ps;             -- Wait for all delta cycles to finish
    wait for 0 ps;             -- Wait for all delta cycles to finish
    
    if( TO_UNSIGNED(A_i,16) /= A) then
      report "Mismatch on A bus, expected " & integer'image(A_i) &
          " got " & integer'image(to_integer(A));
      SubFails := SubFails + 1;
    end if;
    if( TO_UNSIGNED(B_i,16) /= B) then
      report "Mismatch on B bus, expected " & integer'image(B_i) &
          " got " & integer'image(to_integer(B));
      SubFails := SubFails + 1;
    end if;

    if(SubFails /= 0) then
      Failures <= Failures + 1;
      report "Failed test case was:";
      report "microop(" &
        integer'image(ASEL_i) & "," &
        integer'image(BSEL_i) & "," &
        integer'image(DSEL_i) & "," &
        integer'image(DIN_i) & "," &
        integer'image(RIN_i) & "," &
        integer'image(A_i) & "," &
        integer'image(B_i) & ");";
      report "";
    else
      Passes <= Passes+1;
    end if;
    TestCases <= TestCases + 1;
  end microop;

  variable Mark : integer;

  begin
    RST <= '1';
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    RST <= '0';
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    RST <= '1';
    wait until rising_edge(CLK);
    -- Check that reset worked... all registers should be '0'
    microop(1,0,0,0,0,0,0);
    microop(2,0,0,0,0,0,0);
    microop(3,0,0,0,0,0,0);
    microop(4,0,0,0,0,0,0);
    microop(5,0,0,0,0,0,0);
    microop(6,0,0,0,0,0,0);
    microop(7,0,0,0,0,0,0);
    microop(0,1,0,0,0,0,0);
    microop(0,2,0,0,0,0,0);
    microop(0,3,0,0,0,0,0);
    microop(0,4,0,0,0,0,0);
    microop(0,5,0,0,0,0,0);
    microop(0,6,0,0,0,0,0);
    microop(0,7,0,0,0,0,0);

    -- Write some values into the registers
    microop(0,0,1,0,1,0,0);
    microop(0,0,2,0,2,0,0);
    microop(0,0,3,0,3,0,0);
    microop(0,0,4,0,4,0,0);
    microop(0,0,5,0,5,0,0);
    microop(0,0,6,0,6,0,0);
    microop(0,0,7,0,7,0,0);

    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    
    --  Read back on A bus 
    microop(0,0,0,15,10,15,15);
    microop(1,0,0,0,10,1,0);
    microop(2,0,0,0,10,2,0);
    microop(3,0,0,0,10,3,0);
    microop(4,0,0,0,10,4,0);
    microop(5,0,0,0,10,5,0);
    microop(6,0,0,0,10,6,0);
    microop(7,0,0,0,10,7,0);

    wait until rising_edge(CLK);
    wait until rising_edge(CLK);

    -- Read back on B bus
    microop(0,0,0,16,12,16,16);
    microop(0,1,0,0,10,0,1);
    microop(0,2,0,0,10,0,2);
    microop(0,3,0,0,10,0,3);
    microop(0,4,0,0,10,0,4);
    microop(0,5,0,0,10,0,5);
    microop(0,6,0,0,10,0,6);
    microop(0,7,0,0,10,0,7);

    wait until rising_edge(CLK);
    wait until rising_edge(CLK);

    -- Check that writing to and reading from the same register works */
    microop(1,1,1,0, 8, 8, 8);
    microop(1,1,1,0,15,15,15);
    microop(2,2,2,0, 9, 9, 9);
    microop(2,2,2,0,16,16,16);
    microop(3,3,3,0,10,10,10);
    microop(3,3,3,0,17,17,17);
    microop(4,4,4,0,11,11,11);
    microop(4,4,4,0,18,18,18);
    microop(5,5,5,0,12,12,12);
    microop(5,5,5,0,19,19,19);
    microop(6,6,6,0,13,13,13);
    microop(6,6,6,0,20,20,20);
    microop(7,7,7,0,14,14,14);
    microop(7,7,7,0,21,21,21);

    microop(0,0,0,0,0,0,0);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);

    -- Apply a second reset, see if it works.
    RST <= '0';
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    RST <= '1';
    wait until rising_edge(CLK);
    -- Check that reset worked... all registers should be '0'
    microop(1,0,0,0,0,0,0);
    microop(2,0,0,0,0,0,0);
    microop(3,0,0,0,0,0,0);
    microop(4,0,0,0,0,0,0);
    microop(5,0,0,0,0,0,0);
    microop(6,0,0,0,0,0,0);
    microop(7,0,0,0,0,0,0);
    microop(0,1,0,0,0,0,0);
    microop(0,2,0,0,0,0,0);
    microop(0,3,0,0,0,0,0);
    microop(0,4,0,0,0,0,0);
    microop(0,5,0,0,0,0,0);
    microop(0,6,0,0,0,0,0);
    microop(0,7,0,0,0,0,0);

    wait until rising_edge(CLK);
    wait until rising_edge(CLK);

    report "Number of passed Test cases:" & integer'image(Passes)
      & " out of " & integer'image(TestCases) & " test cases";
    if (Failures /= 0) then
      report "FAIL: " & integer'image(Failures) & " Test cases failed";
    else
      report "PASS: all test cases passed";
    end if;

    Mark := integer(70.0 + real(Passes)/real(TestCases) * 10.0 );
    report "Your mark will be: " & integer'image(Mark);


    assert false report "end of Simulation" severity failure;
  end process;
end architecture;
  
