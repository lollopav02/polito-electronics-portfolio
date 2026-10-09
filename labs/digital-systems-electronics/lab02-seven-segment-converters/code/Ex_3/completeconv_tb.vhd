LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

ENTITY completeconv_tb IS
END ENTITY;

ARCHITECTURE behavior of completeconv_tb IS 

	SIGNAL V: STD_LOGIC_VECTOR (3 DOWNTO 0);
	SIGNAL H0,H1: STD_LOGIC_VECTOR(6 DOWNTO 0);
	
	COMPONENT completeconv
		PORT (SW: IN STD_LOGIC_VECTOR(3 DOWNTO 0);
				HEX0, HEX1: OUT STD_LOGIC_VECTOR(6 DOWNTO 0));
	END COMPONENT;
	
	BEGIN
		UUT: completeconv PORT MAP (SW => V, HEX0 => H0, HEX1 => H1);
		PROCESS
		BEGIN
		
		V <= "0000";
		WAIT FOR 20 ns;
		V <= "1000";
		WAIT FOR 20 ns;
		V <= "1111";
		WAIT FOR 20 ns;
		WAIT;
		END PROCESS;
	
END ARCHITECTURE;