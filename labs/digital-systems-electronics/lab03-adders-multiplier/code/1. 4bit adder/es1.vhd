LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

ENTITY es1 IS
	PORT (  SW: IN SIGNED(7 DOWNTO 0);
			 KEY: IN STD_LOGIC_VECTOR(1 DOWNTO 0);
			LEDR: OUT STD_LOGIC_VECTOR(9 DOWNTO 9);
			HEX0, HEX2, HEX4: OUT STD_LOGIC_VECTOR(6 DOWNTO 0));
END ENTITY;


ARCHITECTURE dataflow OF es1 IS

COMPONENT regn IS
	GENERIC ( N : integer:=4); 
	PORT (R : IN SIGNED(N-1 DOWNTO 0);
		Clock, Resetn : IN STD_LOGIC;
		Q : OUT SIGNED(N-1 DOWNTO 0));
END COMPONENT;

COMPONENT flipflop IS
	PORT (D, Clock, Resetn : IN STD_LOGIC;
							Q : OUT STD_LOGIC);
END COMPONENT;

COMPONENT rca IS
	GENERIC ( N : integer:=4);
	PORT (a, b: IN SIGNED(N-1 DOWNTO 0);
			 ovf: OUT STD_LOGIC;
			 sum: OUT SIGNED(N-1 DOWNTO 0));
END COMPONENT;

COMPONENT display IS
	PORT (m: IN SIGNED(3 downto 0);
			h: OUT STD_LOGIC_VECTOR(6 downto 0));
END COMPONENT;

SIGNAL a, b, apr, bpr, s, spr: SIGNED(3 DOWNTO 0);
SIGNAL c, r, cout: STD_LOGIC;

BEGIN

a <= SW(3 DOWNTO 0);
b <= SW(7 DOWNTO 4);
r <= KEY(0);
c <= KEY(1);
		
		reg1: regn PORT MAP (a, c, r, apr);
		reg2: regn PORT MAP (b, c, r, bpr);
		add: rca PORT MAP (apr, bpr, cout, s);
		reg3: regn PORT MAP (s, c, r, spr);
		ff: flipflop PORT MAP (cout, c, r, LEDR(9));
		disp1: display PORT MAP (apr, HEX4);
		disp2: display PORT MAP (bpr, HEX2);
		disp3: display PORT MAP (spr, HEX0);

END dataflow;