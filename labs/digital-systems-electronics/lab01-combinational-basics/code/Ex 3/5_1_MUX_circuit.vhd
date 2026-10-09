LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY mux5 IS
	PORT ( SW : IN STD_LOGIC_VECTOR(8 DOWNTO 0);
			LEDR: OUT STD_LOGIC_VECTOR(2 DOWNTO 0));
END mux5;

ARCHITECTURE mux_arch OF mux5 IS

	SIGNAL X,Y,S,M,O1,O2,O3: STD_LOGIC_VECTOR(2 DOWNTO 0);
	CONSTANT U : STD_LOGIC_VECTOR(2 DOWNTO 0) := "101";
	CONSTANT V : STD_LOGIC_VECTOR(2 DOWNTO 0) := "010";
	CONSTANT W : STD_LOGIC_VECTOR(2 DOWNTO 0) := "111";
	
	COMPONENT mux2
		PORT ( x, y : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
					 s : IN STD_LOGIC;
					 m : OUT STD_LOGIC_VECTOR(2 DOWNTO 0));
	END COMPONENT;
	
	BEGIN
	S <= SW(8 DOWNTO 6);
	X <= SW(5 DOWNTO 3);
	Y <= SW(2 DOWNTO 0);
	
	M1 : mux2 PORT MAP ( x => U, y => V, s => S(0), m => O1);
   M2 : mux2 PORT MAP ( x => W, y => X, s => S(0), m => O2); 
   M3 : mux2 PORT MAP ( x => O1, y => O2, s => S(1), m => O3);
   M4 : mux2 PORT MAP ( x => O3, y => Y, s => S(2), m => LEDR);

END mux_arch;