library ieee;
use ieee.std_logic_1164.all;

entity SimpleCounter is
    port(clk:   in std_logic; 
        enable: in std_logic; 
        reset:  in std_logic; 
        outQ:   out std_logic_vector(3 downto 0)
    );
end SimpleCounter;

architecture behav0 of SimpleCounter is

    signal D: std_logic_vector(3 downto 0);
    signal Q: std_logic_vector(3 downto 0);

    component D_FLIP_FLOP
        port(   D:      in std_logic;
                enable: in std_logic;
                clk:    in std_logic;
                reset:  in std_logic;
                Q:      out std_logic
        );
    end component;

begin
    -- Combinational logic for counter
    D(0) <= not Q(0);
    D(1) <= ((not Q(1)) and Q(0)) or (Q(1) and (not Q(0)));
    D(2) <= ((not Q(2)) and Q(1) and Q(0)) or ((not Q(1)) and Q(2)) or ((not Q(0)) and Q(2)) ;
    D(3) <= ((not Q(3)) and Q(2) and Q(1) and Q(0)) or ((not Q(1)) and Q(3)) or ((not Q(0)) and Q(3)) or ((not Q(2)) and Q(3));

    dff0: D_FLIP_FLOP port map (D(0),enable, clk, reset, Q(0));
    dff1: D_FLIP_FLOP port map (D(1),enable, clk, reset, Q(1));
    dff2: D_FLIP_FLOP port map (D(2),enable, clk, reset, Q(2));
    dff3: D_FLIP_FLOP port map (D(3),enable, clk, reset, Q(3));
    
    outQ <= Q;	

end behav0;