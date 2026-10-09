LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;


ENTITY display IS
	PORT ( bcd : IN UNSIGNED(3 DOWNTO 0);
			   h : OUT STD_LOGIC_VECTOR(6 DOWNTO 0));
END ENTITY;

ARCHITECTURE behavior OF display IS
BEGIN
	PROCESS (bcd)
	BEGIN
		IF bcd = "0000" THEN
		h <= "1000000";
		ELSIF bcd = "0001" THEN
		h <= "1111001";
		ELSIF bcd = "0010" THEN
		h <= "0100100";
		ELSIF bcd = "0011" THEN
		h <= "0110000";
		ELSIF bcd = "0100" THEN
		h <= "0011001";
		ELSIF bcd = "0101" THEN
		h <= "0010010";
		ELSIF bcd = "0110" THEN
		h <= "0000010";
		ELSIF bcd = "0111" THEN
		h <= "1111000";
		ELSIF bcd = "1000" THEN
		h <= "0000000";
		ELSIF bcd = "1001" THEN
		h <= "0010000";
		ELSE 
		h <= "1111111";
		END IF;
	END PROCESS;
END ARCHITECTURE;