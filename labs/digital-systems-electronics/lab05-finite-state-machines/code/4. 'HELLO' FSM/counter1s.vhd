LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

entity counter1s is
	port(EN, CLK, CL : IN std_logic;
	     T: OUT std_logic);
end counter1s;

architecture behaviour of counter1s is
	
	signal Qi: unsigned(25 downto 0);
	
	begin
	process(CLK)
	begin
	if ( CLK='1' AND CLK'EVENT) then
		if (CL = '0') THEN
			Qi <= (others => '0');
			T <= '1';
		elsif (EN = '1') then	
--			if (Qi = "10111110101111000010000000") then
			if (Qi = "00000000000000000000000010") then
				Qi <= (others => '0');
				T <= '1';
  			else 
				Qi <= Qi+1;
				T <= '0';
  			end if;
		end if;
	end if;
	
	end process;

end behaviour;