LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

ENTITY mux IS
	PORT (v_n, a_n, z: IN STD_LOGIC;
			m_n: OUT STD_LOGIC);
END mux;

ARCHITECTURE behavior OF mux IS
	BEGIN
		PROCESS (v_n, a_n, z)
		BEGIN
		IF (z = '1') THEN
			m_n <= a_n;
		ELSE
			m_n <= v_n;	
		END IF;
		END PROCESS;
END behavior;