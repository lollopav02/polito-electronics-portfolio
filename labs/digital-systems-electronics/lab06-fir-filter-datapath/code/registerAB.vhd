LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

ENTITY registerAB IS
 PORT (D: IN signed(10 downto 0);
		 Clock, Resetn : IN STD_LOGIC;         
		 Q : OUT signed(10 downto 0));
END registerAB;

ARCHITECTURE Behavior OF registerAB IS 
	BEGIN
	 PROCESS (Clock, Resetn) 
	 BEGIN
	  IF (Resetn = '0') THEN -- asynchronous clear  
		 Q <= "00000000000";
	  ELSIF (Clock'EVENT AND Clock = '1') THEN 
		 Q <= D;
	  END IF;
	END PROCESS; 
END Behavior;