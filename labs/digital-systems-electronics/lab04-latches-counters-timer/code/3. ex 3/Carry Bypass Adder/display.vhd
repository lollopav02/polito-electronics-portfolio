LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

ENTITY display IS
	PORT (m: IN STD_LOGIC_VECTOR(3 downto 0);
			h: OUT STD_LOGIC_VECTOR(6 downto 0));
END display;

ARCHITECTURE pier OF display IS

	BEGIN
		PROCESS (m)
		BEGIN
		IF m = "0000" THEN
		h <= "1000000";
		ELSIF m = "0001" THEN
		h <= "1111001";
		ELSIF m = "0010" THEN
		h <= "0100100";
		ELSIF m = "0011" THEN
		h <= "0110000";
		ELSIF m = "0100" THEN
		h <= "0011001";
		ELSIF m = "0101" THEN
		h <= "0010010";
		ELSIF m = "0110" THEN
		h <= "0000010";
		ELSIF m = "0111" THEN
		h <= "1111000";
		ELSIF m = "1000" THEN
		h <= "0000000";
		ELSIF m = "1001" THEN
		h <= "0010000";
		ELSIF m = "1010" THEN
		h <= "0001000";
		ELSIF m = "1011" THEN
		h <= "0000011";
		ELSIF m = "1100" THEN
		h <= "1000110";
		ELSIF m = "1101" THEN
		h <= "0100001";
		ELSIF m = "1110" THEN
		h <= "0000110";
		ELSIF m = "1111" THEN
		h <= "0001110";
		ELSE 
		h <= "1111111";
		END IF;
	END PROCESS;
		
END pier;