library ieee;
use ieee.std_logic_1164.all;

entity D_FLIP_FLOP is
    port(   D:      in std_logic;
            enable: in std_logic;
            clk:    in std_logic;
            reset:  in std_logic;
            Q:      out std_logic
        );
end D_FLIP_FLOP;

architecture behav0 of D_FLIP_FLOP is
begin
    process (clk, reset, enable) 
    begin
        if rising_edge(clk) then
            if (reset = '1') then
                Q <= '0'; 
            elsif (enable = '1') then
                Q <= D;
            else
                -- keep previous value
                -- The empty/unexistent else generates a latch
            end  if;
        end if; 
    end process;

end behav0;