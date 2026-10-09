LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY mux2 IS
	PORT ( x, y : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
				 s : IN STD_LOGIC;
				 m : OUT STD_LOGIC_VECTOR(2 DOWNTO 0));
END mux2;

ARCHITECTURE behavior OF mux2 IS
	BEGIN
	PROCESS (x,y,s)
		BEGIN
       m(2) <= (NOT (s) AND x(2)) OR (s AND y(2));
       m(1) <= (NOT (s) AND x(1)) OR (s AND y(1));
       m(0) <= (NOT (s) AND x(0)) OR (s AND y(0)); 
	END PROCESS;

END ARCHITECTURE;