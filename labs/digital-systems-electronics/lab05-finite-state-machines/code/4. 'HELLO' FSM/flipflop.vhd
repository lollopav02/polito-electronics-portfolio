LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY flipflop IS
	PORT (enl, D, Clock, Resetn: IN STD_LOGIC;
  			Q: OUT STD_LOGIC);
END flipflop;

ARCHITECTURE Behaviour OF flipflop IS
	BEGIN
	PROCESS (Clock, Resetn)
	BEGIN
	IF (Clock'EVENT AND Clock = '1') THEN
		IF (Resetn = '0') THEN -- synchronous clear
			Q <= '1';
		ELSIF (enl = '1') THEN
			Q <= D;
		END IF;
	END IF;
	END PROCESS; 
END ARCHITECTURE;