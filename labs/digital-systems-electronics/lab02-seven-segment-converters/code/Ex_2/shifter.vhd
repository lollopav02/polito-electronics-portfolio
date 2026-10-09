LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY shifter IS
	PORT (input : IN STD_LOGIC_VECTOR(14 downto 0);
			sel: IN STD_LOGIC_VECTOR(2 downto 0);
			output : OUT STD_LOGIC_VECTOR(14 downto 0));
END shifter;

ARCHITECTURE Behavior OF shifter IS

	BEGIN
	
	PROCESS(sel, input)
		BEGIN
				if sel = "000" then 
				output <= input; 
			elsif sel = "001" then 
				output <= input(11 DOWNTO 0) & input(14 DOWNTO 12);
			elsif sel = "010" then 
				output <= input(8 DOWNTO 0) & input(14 DOWNTO 9);
			elsif sel = "011" then 
				output <= input(5 DOWNTO 0) & input(14 DOWNTO 6);
			elsif sel = "100" then 
				output <= input(2 DOWNTO 0) & input(14 DOWNTO 3);
			else
				output <= input; --if the sel is not of the 5 the output isn't shifted 
			end if;
	END PROCESS;
	
END Behavior;