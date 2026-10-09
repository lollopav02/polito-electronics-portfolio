LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

ENTITY rca_16bit IS
	PORT ( a, b: IN SIGNED(15 DOWNTO 0);
			 KEY: IN STD_LOGIC_VECTOR(1 DOWNTO 0);
			LEDR: OUT STD_LOGIC;
			summ: OUT SIGNED(15 DOWNTO 0);
			HEX0, HEX1, HEX2, HEX3: OUT STD_LOGIC_VECTOR(6 DOWNTO 0));
END ENTITY;


ARCHITECTURE dataflow OF rca_16bit IS

COMPONENT regn IS
	GENERIC ( N : integer:=16); 
	PORT (R : IN SIGNED(N-1 DOWNTO 0);
		Clock, Resetn : IN STD_LOGIC;
		Q : OUT SIGNED(N-1 DOWNTO 0));
END COMPONENT;

COMPONENT flipflop IS
	PORT (D, Clock, Resetn : IN STD_LOGIC;
							Q : OUT STD_LOGIC);
END COMPONENT;

COMPONENT rca IS
	GENERIC ( N : integer:=16);
	PORT (a, b: IN SIGNED(N-1 DOWNTO 0);
			 ovf: OUT STD_LOGIC;
			 sum: OUT SIGNED(N-1 DOWNTO 0));
END COMPONENT;

COMPONENT display IS
	PORT (m: IN STD_LOGIC_VECTOR(3 downto 0);
			h: OUT STD_LOGIC_VECTOR(6 downto 0));
END COMPONENT;

SIGNAL apr, bpr, s, spr: SIGNED(15 DOWNTO 0);
SIGNAL c, r, cout: STD_LOGIC;

BEGIN

r <= KEY(0);
c <= KEY(1);
		
		reg1: regn PORT MAP (a, c, r, apr);
		reg2: regn PORT MAP (b, c, r, bpr);
		add: rca PORT MAP (apr, bpr, cout, s);
		reg3: regn PORT MAP (s, c, r, spr);
		ff: flipflop PORT MAP (cout, c, r, LEDR);
		disp1: display PORT MAP (STD_LOGIC_VECTOR(spr(15 DOWNTO 12)), HEX3);
		disp2: display PORT MAP (STD_LOGIC_VECTOR(spr(11 DOWNTO 8)), HEX2);
		disp3: display PORT MAP (STD_LOGIC_VECTOR(spr(7 DOWNTO 4)), HEX1);
		disp4: display PORT MAP (STD_LOGIC_VECTOR(spr(3 DOWNTO 0)), HEX0);
		
summ <= spr;

END dataflow;