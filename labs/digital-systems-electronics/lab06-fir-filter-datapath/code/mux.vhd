LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

ENTITY mux IS  
	PORT (sel: IN STD_LOGIC;
		input0: IN signed(10 DOWNTO 0);
		input1: IN signed(10 DOWNTO 0);
		output: OUT signed(10 DOWNTO 0));   
END ENTITY;

ARCHITECTURE behavior OF mux IS 
	BEGIN
		PROCESS(sel,input0,input1) 
		BEGIN
			IF (sel='0') THEN
				output <= input0;
			ELSE
				output <= input1;
			END IF;
		END PROCESS;
END ARCHITECTURE;