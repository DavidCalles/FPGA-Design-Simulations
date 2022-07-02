-- regfile.vhd
--
--   Implementation of a register file.
--
library IEEE;
use IEEE.std_logic_1164.ALL;
use IEEE.numeric_std.ALL;
library WORK;
use WORK.common.all;

entity REGFILE is
  port(
    ASEL, BSEL, DSEL : in unsigned(2 downto 0);
    RIN, DIN :         in unsigned(15 downto 0);
    ABUS, BBUS :       out unsigned(15 downto 0);
    CLK :              in std_logic;
    RST :              in std_logic
    );
end REGFILE;

architecture RTL of REGFILE is

  -- Intermediate signals
  signal regs_signal:     regArray_t;
  signal abusOut_signal:  unsigned(15 downto 0);
  signal bbusOut_signal:  unsigned(15 downto 0);

  -- Component declarations
  component REGISTER_ARRAY
    port(
      DSEL:   in unsigned(2 downto 0);
      RIN :   in unsigned(15 downto 0);
      CLK :   in std_logic;
      RST :   in std_logic;
      REGS:   out regArray_t
    );
  end component REGISTER_ARRAY;

  component MUX
    port(
      DIN:    in unsigned(15 downto 0);
      REGS:   in regArray_t;
      SEL:    in unsigned(2 downto 0);
      OUTBUS: out unsigned(15 downto 0) 
    );
  end component MUX;

begin

  -- Components instantiation
  MUXA : MUX
    port map (
        DIN => DIN,
        REGS => regs_signal,
        SEL => ASEL,
        OUTBUS => abusOut_signal 
    );

  MUXB : MUX
    port map (
        DIN => DIN,
        REGS => regs_signal,
        SEL => BSEL,
        OUTBUS => bbusOut_signal 
    );

  REG_ARRAY0 : REGISTER_ARRAY
    port map(
      DSEL => DSEL,
      RIN => RIN,
      CLK => CLK,
      RST => RST,
      REGS => regs_signal
    ); 

  -- Output buses
  ABUS <= abusOut_signal;
  BBUS <= bbusOut_signal;

end architecture;

