-- test_regfile.vhd
--
--   CPU test bench.
--
library IEEE;
use IEEE.std_logic_1164.ALL;
use IEEE.numeric_std.ALL;

entity TEST_CPU is
end TEST_CPU;

architecture RTL of TEST_CPU is

  signal DATA_O   : unsigned(15 downto 0);
  signal DATA_I   : unsigned(15 downto 0);
  signal MADDR    : unsigned(15 downto 0);
  signal RD, WR   : std_logic;
  signal CLK, RST : std_logic := '1';

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
  begin
    RST <= '1';
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    RST <= '0';
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    RST <= '1';
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);        
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);        
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);        
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);        
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);        
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);        
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
    wait until rising_edge(CLK);
  
    assert false report "end of Simulation" severity failure;
  end process;


end architecture;
  
