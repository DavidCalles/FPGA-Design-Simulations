-- ram.vhd:
--  RAM memory simulation
--

library IEEE;
use IEEE.std_logic_1164.ALL;
use IEEE.numeric_std.ALL;

entity RAM is
  port (
    Q         : out unsigned(15 downto 0);
    DATA      : in  unsigned(15 downto 0);
    ADDRESS   : in  unsigned(7 downto 0);
    WREN, CLK : in  std_logic
  );
end RAM;                

architecture RTL of RAM is

  type MEMORY is array (0 to 255) of unsigned(15 downto 0);

  -- Function to initialize the memory array type.
  function mem_init return MEMORY is
    variable M : MEMORY;
  begin
    for i in MEMORY'RANGE loop
      M(i) := (others => '0');
    end loop;
    M(1) := x"0200";
    return M;
  end mem_init;

  signal DATA_R : unsigned(15 downto 0)  := (others => '0');
  signal ADDRESS_R : unsigned(7 downto 0) := (others => '0');
  signal WREN_R : std_logic := '0';
  signal MEM  : MEMORY := mem_init;

begin

  process(CLK)
  begin
    if rising_edge(CLK) then
      DATA_R    <= DATA;
      ADDRESS_R <= ADDRESS;
      WREN_R    <= WREN;
    end if;
  end process;

  -- Implement RAM array
  process(DATA_R, ADDRESS_R, WREN_R)
  begin
    if (WREN_R = '1') then
      MEM(TO_INTEGER(ADDRESS_R)) <= DATA_R;
    end if;
    Q <= MEM(TO_INTEGER(ADDRESS_R));
  end process;
end architecture;
   
