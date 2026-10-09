LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

ENTITY comparator IS
PORT (V: IN STD_LOGIC_VECTOR(3 downto 0);
		z: OUT STD_LOGIC);
END comparator;

ARCHITECTURE behavior OF comparator IS
	BEGIN
		z <= V(3) AND (V(2) OR V(1));
END behavior;