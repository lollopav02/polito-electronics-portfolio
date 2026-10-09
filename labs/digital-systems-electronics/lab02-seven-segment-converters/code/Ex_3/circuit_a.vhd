LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

ENTITY circuit_a IS
	PORT (V: IN STD_LOGIC_VECTOR(2 downto 0);
			a: OUT STD_LOGIC_VECTOR(2 downto 0));
END circuit_a;

ARCHITECTURE behavior OF circuit_a IS
	BEGIN
		PROCESS (v)
		BEGIN
		a <= v;
		IF (v(1) = '1') THEN
			a(1) <= NOT v(1);
		ELSE
			a(2) <= NOT v(2);
			a(1) <= NOT v(1);
		END IF;
		END PROCESS;
END behavior;