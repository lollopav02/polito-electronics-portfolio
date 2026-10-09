LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

ENTITY registerA IS
	PORT (en, outA: IN STD_LOGIC;
				  inA: OUT STD_LOGIC);
END ENTITY;

ARCHITECTURE behavior OF registerA IS

	BEGIN
		PROCESS (en, outA)
		BEGIN
			IF (outA = '0') THEN
				inA <= '1';
			ELSIF (en='0' AND en'EVENT) THEN
				inA <= '0';
			END IF;
		END PROCESS;

END ARCHITECTURE;