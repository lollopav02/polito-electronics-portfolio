LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

ENTITY circuit_b IS
	PORT (z: IN STD_LOGIC;
			HEX1: OUT STD_LOGIC_VECTOR(6 downto 0));
END circuit_b;

ARCHITECTURE behavior OF circuit_b IS
	BEGIN
		PROCESS (z)
		BEGIN
		IF (z = '1') THEN
			HEX1 <= "1111001";
		ELSE
			HEX1 <= "1000000";
		END IF;
		END PROCESS;
END behavior;