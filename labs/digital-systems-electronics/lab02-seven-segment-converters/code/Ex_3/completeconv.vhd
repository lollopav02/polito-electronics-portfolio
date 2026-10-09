LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

ENTITY completeconv IS
PORT (SW : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		 HEX0, HEX1 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0));
END completeconv;

ARCHITECTURE pier OF completeconv IS

COMPONENT comparator IS
	PORT (V: IN STD_LOGIC_VECTOR(3 downto 0);
			z: OUT STD_LOGIC);
END COMPONENT; 

COMPONENT circuit_a IS
	PORT (V: IN STD_LOGIC_VECTOR(2 downto 0);
			a: OUT STD_LOGIC_VECTOR(2 downto 0));
END COMPONENT; 

COMPONENT mux3 IS
	PORT (V3, z: IN STD_LOGIC;
			m3: OUT STD_LOGIC);
END COMPONENT; 

COMPONENT mux IS
	PORT (v_n, a_n, z: IN STD_LOGIC;
			m_n: OUT STD_LOGIC);
END COMPONENT;

COMPONENT circuit_b IS
	PORT (z: IN STD_LOGIC;
			HEX1: OUT STD_LOGIC_VECTOR(6 downto 0));
END COMPONENT;

COMPONENT seven_segment IS
	PORT (m: IN STD_LOGIC_VECTOR(3 downto 0);
			HEX0: OUT STD_LOGIC_VECTOR(6 downto 0));
END COMPONENT;

SIGNAL z_sel : STD_LOGIC;
SIGNAL a : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL m : STD_LOGIC_VECTOR(3 DOWNTO 0);

BEGIN

COMP1 : comparator PORT MAP (SW, z_sel);
MINUS_TWO : circuit_a PORT MAP (SW(2 downto 0), a);
MUX_3 : mux3 PORT MAP (SW(3), z_sel, m(3));
MUX_2 : mux PORT MAP (SW(2), a(2), z_sel, m(2));
MUX_1 : mux PORT MAP (SW(1), a(1), z_sel, m(1));
MUX_0 : mux PORT MAP (SW(0), a(0), z_sel, m(0));
DISPLAY1 : circuit_b PORT MAP (z_sel, HEX1);
DISPLAY0 : seven_segment PORT MAP (m, HEX0);

END ARCHITECTURE;