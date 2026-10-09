LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

ENTITY bit7reg IS 
	PORT(din: IN STD_LOGIC_VECTOR(6 DOWNTO 0);
		  en, clk, cl: IN STD_LOGIC;
		  dout: OUT STD_LOGIC_VECTOR(6 DOWNTO 0));
END ENTITY;

ARCHITECTURE beh OF bit7reg IS

	COMPONENT flipflop IS
		PORT (enl, D, Clock, Resetn: IN STD_LOGIC;
  			   Q: OUT STD_LOGIC);
	END COMPONENT;
	
	
	BEGIN
	ff0: flipflop PORT MAP (en, din(0), clk, cl, dout(0));
	ff1: flipflop PORT MAP (en, din(1), clk, cl, dout(1));
	ff2: flipflop PORT MAP (en, din(2), clk, cl, dout(2));
	ff3: flipflop PORT MAP (en, din(3), clk, cl, dout(3));
	ff4: flipflop PORT MAP (en, din(4), clk, cl, dout(4));
	ff5: flipflop PORT MAP (en, din(5), clk, cl, dout(5));
	ff6: flipflop PORT MAP (en, din(6), clk, cl, dout(6));

	
END ARCHITECTURE;