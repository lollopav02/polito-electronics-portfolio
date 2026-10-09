LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

entity count2 is
	port(EN, CLK, CL: IN std_logic;
			enable_c10, en_rs: OUT std_logic;
					   Q: OUT unsigned(1 downto 0));
end count2;

architecture behavior of count2 is
	
	signal Qi: unsigned(1 downto 0);
	
	begin
	Q <= Qi;
	
	process(CLK, CL)
	begin
		if(CL = '0') then		
			Qi <= (others => '0');
			enable_c10 <= '0';
			en_rs <= '0';
		elsif ( CLK='1' AND CLK'EVENT) then
			if (EN = '1') then	
				if (Qi = "11") then
					Qi <= (others => '0');
					en_rs <= '1';
					enable_c10 <= '0';
				else
					if (Qi = "10") then
						enable_c10 <= '1';
						en_rs <= '0';
					else
						enable_c10 <= '0';
						en_rs <= '0';
					end if;
				Qi <= Qi+1;
				end if;
			end if;
		end if;
	end process;

end behavior;