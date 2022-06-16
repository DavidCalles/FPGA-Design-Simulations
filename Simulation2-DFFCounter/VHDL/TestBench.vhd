library IEEE;
use IEEE.std_logic_1164.all;

entity TestBench is
    -- Entity testbench
end TestBench;

architecture TB of TestBench is

    signal clk_tb:      std_logic;
    signal enable_tb:   std_logic;
    signal reset_tb:    std_logic;
    signal outQ_tb:     std_logic_vector(3 downto 0);

    component SimpleCounter
        port(clk:   in std_logic; 
            enable: in std_logic; 
            reset:  in std_logic; 
            outQ:   out std_logic_vector(3 downto 0)
        );
    end component;

begin
   
    count0: SimpleCounter port map (clk_tb, enable_tb, reset_tb, outQ_tb);

    process
    begin
        clk_tb <= '0';
        wait for 10 ns;
        clk_tb <= '1';
        wait for 10 ns;
    end process;

    process 
    begin 
        reset_tb <= '1';
        enable_tb <= '0';
        wait for 30 ns;	
        reset_tb <= '0';
        enable_tb <= '1';
        wait for 1000 ns; 
        enable_tb <= '0';
        reset_tb <= '0';
        wait for 100 ns;
        enable_tb <= '1';
        reset_tb <= '0';
        wait for 100 ns;
        enable_tb <= '0';
        reset_tb <= '0';
    end process; 

end TB; 