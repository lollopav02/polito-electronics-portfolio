LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

ENTITY registerS IS
 PORT (D: IN signed(10 downto 0);
	EN, Clock, Resetn : IN STD_LOGIC;         
	Q : OUT signed(10 downto 0));
END registerS;

ARCHITECTURE Behavior OF registerS IS 
	BEGIN
	 PROCESS (Clock, Resetn) 
	 BEGIN
	  IF (Resetn = '0') THEN -- asynchronous clear  
		 Q <= "00000000000";
	  ELSIF (Clock'EVENT AND Clock = '1') THEN
		IF(EN = '1') THEN
			Q <= D;			
	  END IF;
	  end if;
	END PROCESS; 
END Behavior;