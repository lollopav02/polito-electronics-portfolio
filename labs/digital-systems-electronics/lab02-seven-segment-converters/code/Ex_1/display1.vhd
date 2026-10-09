LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY decoder IS
  PORT ( SW : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      HEX0 : OUT STD_LOGIC_VECTOR(0 TO 6) );
END decoder;


ARCHITECTURE behavior OF decoder IS
  SIGNAL c : STD_LOGIC_VECTOR(2 DOWNTO 0);
  SIGNAL H : STD_LOGIC_VECTOR(0 TO 6);
  
  BEGIN
    c <= SW;
    HEX0 <= h;
    
    PROCESS (c)
      BEGIN
        if c = "000" then h <= "1001000";
        elsif c = "001" then h <= "0110000";
        elsif c = "010" then h <= "1110001";
        elsif c = "011" then h <= "0000001";
        else h <= "1111111";
        end if;
    END PROCESS;

END behavior;