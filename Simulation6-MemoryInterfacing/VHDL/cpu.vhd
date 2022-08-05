--  cpu.vhd:
--
--  CPU implementation.
--

library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;

entity CPU is
  port(
    DATA_I : in unsigned(15 downto 0);
    DATA_O : out unsigned(15 downto 0);
    MADDR  : out unsigned(15 downto 0);
    RD     : out std_logic;
    WR     : out std_logic;
    CLK    : in std_logic;
    RST    : in std_logic
    );
    
end CPU;

architecture RTL of CPU is

  component MICROCODE_ROM
     port( ADDR_IN  : in  unsigned(10 downto 0);
           DATA_OUT : out std_logic_vector(43 downto 0));
  end component;

  component REGFILE is
    port(
      ASEL, BSEL, DSEL : in unsigned(2 downto 0);
      RIN, DIN :         in unsigned(15 downto 0);
      ABUS, BBUS :       out unsigned(15 downto 0);
      CLK,RST :          in std_logic
      );
  end component;

  component ALU is
    port(
      ABUS, BBUS :   in unsigned(15 downto 0);
      FSEL :         in std_logic_vector(3 downto 0);
      CIN :          in std_logic;
      FOUT :        out unsigned(15 downto 0);
      Z,S,C,V :     out std_logic
      );
  end component;

  --
  -- Below are signal definitions to carry the individual
  -- fields from the microcode ROM.
  --
  signal     DATA_OUT : std_logic_vector(43 downto 0);
  signal          CAR : unsigned(10 downto 0);
  signal         ASEL : unsigned(2 downto 0);
  signal         BSEL : unsigned(2 downto 0);
  signal         DSEL : unsigned(2 downto 0);
  signal         FSEL : std_logic_vector(3 downto 0);
  signal         UPDF : std_logic_vector(3 downto 0);
  signal         MUX1 : std_logic;
  signal         MUX2 : unsigned(3 downto 0);
  signal         DATA : unsigned(15 downto 0);
  signal         MISC : std_logic_vector(5 downto 0);

  -- Signals to break out the additional fields inside the UPDF, and
  -- MISC feilds.
  signal         LDIR : std_logic;
  signal        LDMAR : std_logic;
  signal        RFMUX : std_logic;
  signal         DMUX : std_logic;
  
  -- Update processor flags fields
  signal          UPC : std_logic;
  signal          UPZ : std_logic;
  signal          UPS : std_logic;
  signal          UPV : std_logic;
  
  -- Internal signals for the processor
  signal      S,Z,C,V : std_logic;           -- Processor flag storage
  signal SOUT, ZOUT,COUT, VOUT : std_logic;  -- ALU status flag outputs

  -- Muxed versions of the Select and data in Signals.
  signal       ASEL_M : unsigned(2 downto 0);
  signal       BSEL_M : unsigned(2 downto 0);
  signal       DSEL_M : unsigned(2 downto 0);
  signal        DIN_M : unsigned(15 downto 0);
  
  signal ABUS, BBUS, FOUT : unsigned(15 downto 0); -- Internal data busses
  signal EXT_ADDR         : unsigned(10 downto 0);

  signal MAR              : unsigned(15 downto 0); -- Memory Address register
  signal IR               : unsigned(15 downto 0); -- Instruction Register
  signal MUX2_OUT         : std_logic;
  signal MUX1_OUT         : unsigned(10 downto 0);
begin
  --
  -- Below are implied processes that split the microcode ROM
  -- output vector into individual fields.
  
  MICROCODE_ROM1 : MICROCODE_ROM
    port map (
      ADDR_IN  => CAR,
      DATA_OUT => DATA_OUT);
  
  ASEL <= unsigned(DATA_OUT(43 downto 41));   -- bit size: 3
  BSEL <= unsigned(DATA_OUT(40 downto 38));   -- bit size: 3
  DSEL <= unsigned(DATA_OUT(37 downto 35));   -- bit size: 3
  FSEL <= DATA_OUT(34 downto 31);   -- bit size: 4
  UPDF <= DATA_OUT(30 downto 27);   -- bit size: 4
  MUX1 <= DATA_OUT(26);             -- bit size: 1
  MUX2 <= unsigned(DATA_OUT(25 downto 22));   -- bit size: 4
  DATA <= unsigned(DATA_OUT(21 downto  6));   -- bit size: 16
  MISC <= DATA_OUT( 5 downto  0);   -- bit size: 6
  -- 
  -- yeilding a total data width of 45 bits for 9 fields.
  -- The maximum address encountered was 0x7ff, needing 11 bits
  --

  -- Break out the MISC fields
  RD    <= MISC(0);
  WR    <= MISC(1);
  LDMAR <= MISC(2);
  LDIR  <= MISC(3);
  RFMUX <= MISC(4);
  DMUX  <= MISC(5);
  -- MISC(6) is a spare.

  -- Break out the update flags fields
  UPV   <= UPDF(0);
  UPC   <= UPDF(1);
  UPS   <= UPDF(2);
  UPZ   <= UPDF(3);

  -- Implement DMUX
  DIN_M <= DATA when DMUX = '1' else
           DATA_I;

  -- Implement RFMUX
  ASEL_M <= IR(8 downto 6) when RFMUX = '1' else
            ASEL;
  BSEL_M <= IR(5 downto 3) when RFMUX = '1' else
            BSEL;
  DSEL_M <= IR(2 downto 0) when RFMUX = '1' else
            DSEL;

  -- Processor units instantiation
  REGFILE1 : REGFILE port map (
    ASEL => ASEL_M,
    BSEL => BSEL_M,
    DSEL => DSEL_M,
    RIN  => FOUT,
    DIN  => DIN_M,
    ABUS => ABUS,
    BBUS => BBUS,
    RST  => RST,
    CLK  => CLK);

  ALU1 : ALU port map (
    ABUS => ABUS,
    BBUS => BBUS,
    FSEL => FSEL,
    CIN  => C,
    FOUT => FOUT,
    Z => ZOUT,
    S => SOUT,
    C => COUT,
    V => VOUT
    );

  -- Connect signals to ports on the processor
  MADDR  <= MAR;
  DATA_O <= FOUT;
  
  -- External address mapping (Cahnged it for testing purposes)
  EXT_ADDR <= ("0" & IR(15 downto 9) & "000");
  
  -- Implement remaming synchronous parts
  process(CLK, RST)
  begin
    if(RST = '0') then
      Z <= '0';
      S <= '0';
      C <= '0';
      V <= '0';
      IR  <= (others => '0');
      MAR <= (others => '0');
    elsif (rising_edge(CLK)) then
      -- Implement status flags
      if(UPC = '1') then
         C <= COUT;
      end if;
      if(UPZ = '1') then
         Z <= ZOUT;
      end if;
      if(UPS = '1') then
         S <= SOUT;
      end if;
      if(UPV = '1') then
         V <= VOUT;
      end if;

      -- Implement MAR and IR
      if(LDIR = '1') then
        IR <= DATA_I;
      end if;
      if(LDMAR = '1') then
        MAR <= ABUS;
      end if;
      
    end if;
  end process;

  -- Sequencer logic -- Implement your logic for CAR generation here
  -- Synchronous part
  process(CLK, RST, MUX2_OUT, MUX1_OUT)
  begin
    if(RST = '0') then
      CAR <= (others => '0');
    elsif (rising_edge(CLK)) then

      if(MUX2_OUT = '0') then
        -- NEXT instruction
        CAR <= CAR+1;  
      elsif(MUX2_OUT = '1') then
        -- LOAD different instruction
        CAR <= MUX1_OUT; 
      end if;
    end if;
  end process;
  
  -- Asynchronous part
  -- MUX1: Select if next address is internal or external
  with MUX1 select
    MUX1_OUT <= 
      DATA(10 downto 0)   when '0',
      EXT_ADDR            when '1', --EXT_ADDR 
      (others => '0') when others;

  -- MUX2: Conditions to load new address.
  with MUX2 select
    MUX2_OUT <= 
      '0'         when  "0000", 
      '1'         when  "0001", 
      C           when  "0010",
      (not C)     when  "0011",
      Z           when  "0100",
      (not Z)     when  "0101",
      S           when  "0110",
      (not S)     when  "0111",
      V           when  "1000",
      (not V)     when  "1001",
      (S xor V)   when  "1010",
      not(S xor V)when  "1011",
      -- 1100-1111 reserved (available to use)
      '0' when others;

end RTL;
