LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY mux IS
	port ( z, u : IN STD_LOGIC; 
				 s : IN STD_LOGIC; 
			  	 m : OUT STD_LOGIC);
END ENTITY;

ARCHITECTURE behavior OF mux IS
	BEGIN
		PROCESS (s, z, u)
		BEGIN
			IF (s='1') THEN m<=u;
			ELSIF (s='0') THEN m<=z;
			ELSE m<='0';
			END IF;
		END PROCESS;
END ARCHITECTURE;