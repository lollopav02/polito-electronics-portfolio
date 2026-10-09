LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY mymux_tb IS
END mymux_tb;

ARCHITECTURE behavior OF mymux_tb IS 

 SIGNAL x, y, m: STD_LOGIC_VECTOR(3 DOWNTO 0);
 SIGNAL s: STD_LOGIC;
 
 COMPONENT mymux
  PORT ( SW: IN STD_LOGIC_VECTOR(8 DOWNTO 0);
         LEDR: OUT STD_LOGIC_VECTOR(3 DOWNTO 0));
 END COMPONENT;

BEGIN
 uut: mymux PORT MAP (SW(3 DOWNTO 0) => x, SW(7 DOWNTO 4) => y, SW(8) => s, LEDR => m);
 PROCESS
  BEGIN
  x <= "0101";
  y <= "1100";
  
  s <= '0';
  WAIT FOR 100 ns;
  s <= '1';
  WAIT FOR 100 ns;
  s <= '0';
  WAIT FOR 100 ns;
  WAIT;
  
 END PROCESS;
 
END ARCHITECTURE;