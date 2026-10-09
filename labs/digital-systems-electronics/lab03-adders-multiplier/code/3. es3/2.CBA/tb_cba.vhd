LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

entity tb_cba is
end;

architecture behavior of tb_cba is
COMPONENT cba IS
port ( A, B: IN signed(15 downto 0);
		  ovf : out std_logic;
			 S : OUT signed (15 downto 0));
END COMPONENT;

SIGNAL acba, bcba, scba: signed (15 downto 0);
SIGNAL ovf: std_logic;

BEGIN

dut: cba PORT MAP (acba, bcba, ovf, scba);

PROCESS
	BEGIN
	acba <= "1001101010001111";
	bcba <= "0110110001000011";
	WAIT FOR 20 ns;
	WAIT;
END PROCESS;

end behavior;