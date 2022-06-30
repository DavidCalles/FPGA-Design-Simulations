library IEEE;
use IEEE.std_logic_1164.ALL;
use IEEE.numeric_std.ALL;

entity Bitwise_Tb is
    -- Entity testbench
end Bitwise_Tb;

architecture TB of Bitwise_Tb is

    signal OP_reg:      std_logic_vector(2 downto 0);
    signal ABUS_reg:    std_logic_vector(15 downto 0);
    signal BBUS_reg:    std_logic_vector(15 downto 0);
    signal FOUT_reg:    std_logic_vector(15 downto 0);

    component Bitwise_16bit
        port(
            abus    : in std_logic_vector(15 downto 0);
            bbus    : in std_logic_vector(15 downto 0);
            op      : in std_logic_vector(2 downto 0);
            outbus  : out std_logic_vector(15 downto 0)
        );
    end component Bitwise_16bit;

begin
   
    Bitwise1 : Bitwise_16bit
        port map (
            abus => ABUS_reg,
            bbus => BBUS_reg,
            op => OP_reg,
            outbus => FOUT_reg
        );

    process 
    begin 
        -- Bus transfer
        OP_reg <= "000";
        ABUS_reg <= (0=>'1', others=>'0');
        BBUS_reg <= (others => '0');
        wait for 20 ps;	
        ABUS_reg <= (1=>'1', others=>'0');
        BBUS_reg <= (0=>'1', others => '0');
        wait for 20 ps;	
        ABUS_reg <= (2=>'1', others=>'0');
        BBUS_reg <= (2=>'1', 1=>'1', others => '0');
        wait for 100 ps;
        
        -- Bus transfer
        OP_reg <= "001";
        ABUS_reg <= (0=>'1', others=>'0');
        BBUS_reg <= (others => '0');
        wait for 20 ps;	
        ABUS_reg <= (1=>'1', others=>'0');
        BBUS_reg <= (0=>'1', others => '0');
        wait for 20 ps;	
        ABUS_reg <= (2=>'1', others=>'0');
        BBUS_reg <= (2=>'1', 1=>'1', others => '0');
        wait for 100 ps;

        -- Bus transfer
        OP_reg <= "010";
        ABUS_reg <= (0=>'1', others=>'0');
        BBUS_reg <= (others => '0');
        wait for 20 ps;	
        ABUS_reg <= (1=>'1', others=>'0');
        BBUS_reg <= (0=>'1', others => '0');
        wait for 20 ps;	
        ABUS_reg <= (2=>'1', others=>'0');
        BBUS_reg <= (2=>'1', 1=>'1', others => '0');
        wait for 100 ps;

        -- Bus transfer
        OP_reg <= "011";
        ABUS_reg <= (0=>'1', others=>'0');
        BBUS_reg <= (others => '0');
        wait for 20 ps;	
        ABUS_reg <= (1=>'1', others=>'0');
        BBUS_reg <= (0=>'1', others => '0');
        wait for 20 ps;	
        ABUS_reg <= (2=>'1', others=>'0');
        BBUS_reg <= (2=>'1', 1=>'1', others => '0');
        wait for 100 ps;

        -- Bus transfer
        OP_reg <= "100";
        ABUS_reg <= (0=>'1', others=>'0');
        BBUS_reg <= (others => '0');
        wait for 20 ps;	
        ABUS_reg <= (1=>'1', others=>'0');
        BBUS_reg <= (0=>'1', others => '0');
        wait for 20 ps;	
        ABUS_reg <= (2=>'1', others=>'0');
        BBUS_reg <= (2=>'1', 1=>'1', others => '0');
        wait for 100 ps;


        wait;

    end process; 

end TB; 