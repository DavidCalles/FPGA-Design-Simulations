-- test_regfile.vhd
--
--   CPU test bench.
--
library IEEE;
use IEEE.std_logic_1164.ALL;
use IEEE.numeric_std.ALL;

entity TEST_CPU_FULL is
end TEST_CPU_FULL;

architecture RTL of TEST_CPU_FULL is

  signal DATA_O   : unsigned(15 downto 0);
  signal DATA_I   : unsigned(15 downto 0);
  signal MADDR    : unsigned(15 downto 0);
  signal RD, WR   : std_logic;
  signal CLK, RST : std_logic := '1';
  signal Passes     : integer := 0;
  signal Failures   : integer := 0;
  signal TestCases  : integer := 0;

  component CPU is
    port(
      DATA_I : in unsigned(15 downto 0);
      DATA_O : out unsigned(15 downto 0);
      MADDR  : out unsigned(15 downto 0);
      RD     : out std_logic;
      WR     : out std_logic;
      CLK    : in std_logic;
      RST    : in std_logic
      );
  end component;

  component RAM is
    port (
      Q         : out unsigned(15 downto 0);
      DATA      : in  unsigned(15 downto 0);
      ADDRESS   : in  unsigned(7 downto 0);
      WREN, CLK : in  std_logic
      );
  end component;

constant clk_period : time := 2 ps;  
constant delay_time : time := 1 ps;

begin
  CPU1 : CPU port map(
    DATA_I => DATA_I,
    DATA_O => DATA_O,
    MADDR  => MADDR,
    RD     => RD,
    WR     => WR,
    RST    => RST,
    CLK    => CLK
    );

  RAM1 : RAM port map(
    Q       => DATA_I,
    DATA    => DATA_O,
    ADDRESS => MADDR(7 downto 0),
    WREN    => WR,
    CLK     => CLK
    );
  
  
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
    procedure cpuop(
      FOUT_i    : in integer
      ) is
      variable SubFails : integer := 0;
    begin

      wait for delay_time;

      if(DATA_O /= TO_UNSIGNED(FOUT_i,16)) then
        report "Mismatch on FOUT expected " & integer'image(FOUT_i) &
          " got " & integer'image(to_integer(DATA_O));
        SubFails := SubFails + 1;
      end if;

      if(SubFails /= 0) then
        Failures <= Failures + 1;
        report "Failed test case was:";
        report "cpuop(" & integer'image(FOUT_i) & ");";
        report "";
      else
        Passes <= Passes+1;
      end if;
      TestCases <= TestCases+1;
    end cpuop;

    variable Mark : integer;
  begin
    -- START simulation reseting CPU
    RST <= '1';
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    RST <= '0';
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    RST <= '1';

    -- REGISTER Initialization
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    cpuop(200); -- Expected value for R1

    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    cpuop(201); -- Expected value for R1
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    cpuop(500); -- Expected value for R1
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);

    -- Test ends
    wait until rising_edge(CLK);
    

    report "----> Number of passed Test cases: " & integer'image(Passes)
      & " out of " & integer'image(TestCases) & " test cases";
    if (Failures /= 0) then
      report "FAIL: " & integer'image(Failures) & " Test cases failed";
    else
      report "PASS: all test cases passed";
    end if;

    Mark := integer(100);
    report "-----> Your mark SHOULD be: " & integer'image(Mark);

    assert false report "end of Simulation" severity failure;
  end process;


end architecture;
  
