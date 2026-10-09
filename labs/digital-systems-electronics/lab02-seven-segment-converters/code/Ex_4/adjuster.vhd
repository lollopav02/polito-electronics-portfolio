LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

ENTITY adjuster IS 
	PORT ( bin : IN UNSIGNED(5 DOWNTO 0);
			 dec : IN UNSIGNED(5 DOWNTO 0);
			unit : OUT UNSIGNED(3 DOWNTO 0));
END ENTITY;


ARCHITECTURE behavior OF adjuster IS
SIGNAL tmp_u: UNSIGNED(5 DOWNTO 0);
BEGIN
	tmp_u <= (bin-dec);
	unit(3) <= tmp_u(3);
	unit(2) <= tmp_u(2);
	unit(1) <= tmp_u(1);
	unit(0) <= tmp_u(0);
END ARCHITECTURE;