LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

ENTITY mux3 IS
	PORT (V3, z: IN STD_LOGIC;
			m3: OUT STD_LOGIC);
END mux3;

ARCHITECTURE behavior OF mux3 IS
	BEGIN
		PROCESS (v3, z)
		BEGIN
		IF (z = '1') THEN
			m3 <= '0';
		ELSE
			m3 <= V3;	
		END IF;
		END PROCESS;
END behavior;