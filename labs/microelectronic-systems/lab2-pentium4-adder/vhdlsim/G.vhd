library ieee;
use ieee.std_logic_1164.all;

entity G_BLOCK is
	port (
		Pik : in  std_logic;
		Gik : in  std_logic;
		Gkj : in  std_logic;
		Gij : out std_logic
		);
end G_BLOCK;

architecture BEHAVIORAL of G_BLOCK is
	begin
	Gij <= Gik or (Pik and Gkj);
end BEHAVIORAL;
