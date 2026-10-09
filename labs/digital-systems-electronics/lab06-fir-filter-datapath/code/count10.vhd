LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

entity count10 is
	port(EN2, WRA, CLK, CL: IN std_logic;
					   Q: OUT unsigned(9 downto 0);
		  FILLEDA, FILLEDB: OUT STD_LOGIC );
end count10;

architecture behavior of count10 is
	
	signal Qi: unsigned(9 downto 0);
	signal EN:  std_logic;
	
	begin
	Q <= Qi;
	
	EN <= WRA XOR EN2;
	process(CLK, CL)
	begin
		--if(CL='0' OR CL'event) then		
			--Qi <= (others => '0');
			--FILLEDB<='0';
			--FILLEDA<='0';
		if ( CLK='1' AND CLK'EVENT) then
			if(CL='0') then		
				Qi <= (others => '0');
				FILLEDB<='0';
				FILLEDA<='0';
			elsif (EN = '1') then	
				if (Qi = "1111111111") then
					Qi <= (others => '0');	
				elsif (Qi = "1111111110") then
					Qi <= Qi+1;
					if WRA = '1' THEN
						FILLEDA<='1';
					else
						FILLEDB<='1';
					end if;
				else
					Qi <= Qi+1;
					FILLEDB<='0';
					FILLEDA<='0';
				end if;
			end if;
		end if;
	end process;
	
end behavior;