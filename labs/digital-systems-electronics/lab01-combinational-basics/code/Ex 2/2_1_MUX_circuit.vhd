LIBRARY ieee;
USE ieee.std_logic_1164.all;

-- ENTITY DECLARATION
ENTITY mymux IS
PORT (SW : IN STD_LOGIC_VECTOR(8 downto 0); 
    LEDR : OUT STD_LOGIC_VECTOR(3 downto 0));
END mymux;

-- ARCHITECTURAL BEHAVIOUR
ARCHITECTURE behaviour OF mymux IS

 SIGNAL x, y, m: STD_LOGIC_VECTOR(3 downto 0); 
 SIGNAL s: STD_LOGIC; 
 
 BEGIN
  x <= SW(3 DOWNTO 0);
  y <= SW(7 DOWNTO 4);
  s <= SW(8);
  LEDR <= m;
  
 PROCESS (x,y,s)
  BEGIN
 m(3) <= (NOT (s) AND x(3)) OR (s AND y(3));
 m(2) <= (NOT (s) AND x(2)) OR (s AND y(2));
 m(1) <= (NOT (s) AND x(1)) OR (s AND y(1));
 m(0) <= (NOT (s) AND x(0)) OR (s AND y(0)); 
 END PROCESS;
 
END ARCHITECTURE;