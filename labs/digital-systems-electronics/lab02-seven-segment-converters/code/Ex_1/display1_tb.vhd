LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY display1_tb IS
END display1_tb;

ARCHITECTURE tb OF display1_tb IS
  SIGNAL s : STD_LOGIC_VECTOR(2 DOWNTO 0);
  SIGNAL h : STD_LOGIC_VECTOR(0 TO 6);
  
  COMPONENT decoder
    PORT ( SW : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
         HEX0 : OUT STD_LOGIC_VECTOR(0 TO 6) );
  END COMPONENT;
  
  BEGIN
    uut: decoder PORT MAP (SW => s, HEX0 => h);

  PROCESS
    BEGIN
    s <= "000";
    WAIT FOR 20 ns;
    s <= "001";
    WAIT FOR 20 ns;
    s <= "010";
    WAIT FOR 20 ns;
    s <= "011";
    WAIT FOR 20 ns;
    s(2) <= '1';
    WAIT FOR 20 ns;
    WAIT;
  END PROCESS;
    
END tb;