LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

ENTITY mux IS
	PORT(s1, s0: IN SIGNED(3 DOWNTO 0);
		  c1, c0, sel: IN STD_LOGIC; 
		  sum: OUT SIGNED(3 DOWNTO 0);
		  c: OUT STD_LOGIC);
END ENTITY;

ARCHITECTURE behavior OF mux IS
	BEGIN
		PROCESS (s1, s0, sel)
		BEGIN
			IF (sel='1') THEN 
				sum <= s1;
				c <= c1 ;
			ELSIF (sel='0') THEN 
				sum <= s0;
				c <= c0;
			ELSE 
				sum <= "0000";
				c <= '0';
			END IF;
		END PROCESS;
END ARCHITECTURE;