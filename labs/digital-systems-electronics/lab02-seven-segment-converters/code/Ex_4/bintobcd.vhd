LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;


ENTITY bintobcd IS
	PORT (SW: IN UNSIGNED(5 DOWNTO 0);
			HEX1, HEX0: OUT STD_LOGIC_VECTOR(6 DOWNTO 0));
END ENTITY;


ARCHITECTURE behavior OF bintobcd IS

	COMPONENT comp IS
		PORT ( bin : IN UNSIGNED(5 DOWNTO 0);
		   order10 : OUT UNSIGNED(5 DOWNTO 0);
			  order : OUT UNSIGNED(3 DOWNTO 0));
	END COMPONENT;
	
	COMPONENT adjuster IS
		PORT ( bin : IN UNSIGNED(5 DOWNTO 0);
			    dec : IN UNSIGNED(5 DOWNTO 0);
			   unit : OUT UNSIGNED(3 DOWNTO 0));
	END COMPONENT;
	
	COMPONENT display IS 
		PORT ( bcd : IN UNSIGNED(3 DOWNTO 0);
			      h : OUT STD_LOGIC_VECTOR(6 DOWNTO 0));
	END COMPONENT;

	SIGNAL tens, ones: UNSIGNED(3 DOWNTO 0);
	SIGNAL tens10: UNSIGNED(5 DOWNTO 0);
	
BEGIN
	decine: comp PORT MAP (SW(5 DOWNTO 0),tens10, tens);
	unità: adjuster PORT MAP (SW(5 DOWNTO 0), tens10, ones);
	display_t: display PORT MAP (tens, HEX1);
	display_o: display PORT MAP (ones, HEX0);
	
END ARCHITECTURE;