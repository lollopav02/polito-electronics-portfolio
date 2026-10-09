LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all; 

ENTITY tb IS
END tb;

ARCHITECTURE Behavior OF tb IS

SIGNAL k0, k1, ovf: STD_LOGIC;
SIGNAL a, b: SIGNED(3 DOWNTO 0);
SIGNAL h0, h2, h4: STD_LOGIC_VECTOR(6 DOWNTO 0);




COMPONENT es1
  PORT( SW: IN SIGNED(7 DOWNTO 0);
        KEY: IN STD_LOGIC_VECTOR(1 DOWNTO 0);
        LEDR: OUT STD_LOGIC;
        HEX0, HEX2, HEX4: OUT STD_LOGIC_VECTOR(6 DOWNTO 0));
END COMPONENT;

BEGIN  
dut : es1 PORT MAP (SW(3 DOWNTO 0)=> a, SW(7 DOWNTO 4) => b, KEY(0) => k0, KEY(1) => k1, 
                    LEDR => ovf, HEX0 => h0, HEX2 => h2, HEX4 => h4);

PROCESS
  BEGIN
  a <= "0010";
  b <= "1000";
  k0 <= '1';
  k1 <= '0';
  WAIT FOR 5ns;
  k1 <= '1';
  WAIT FOR 5ns;
  k1 <= '0';
  WAIT FOR 5ns;
  k1 <= '1';
  WAIT FOR 5ns;
  k0 <= '0';
  WAIT FOR 5ns;
  WAIT;
END PROCESS;

END ARCHITECTURE;