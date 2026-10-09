LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

ENTITY memory IS
	PORT(data_in: IN SIGNED(7 DOWNTO 0);
		  address: IN UNSIGNED(9 DOWNTO 0);
		  CLK, RD, WR, CS: IN STD_LOGIC;
		  data_out: OUT SIGNED(7 DOWNTO 0));
END ENTITY; 

ARCHITECTURE behaviour OF memory IS
	
	SUBTYPE number IS signed(7 downto 0);
	TYPE remember IS ARRAY(0 TO 1023) OF number;
	
	SIGNAL mem: remember;
    SIGNAL WRIT: STD_LOGIC;
    
    BEGIN
    
    WRIT <= NOT(WR);
	
	writing: PROCESS(CLK) -- writing synchronous
		BEGIN
		IF (CLK'EVENT AND CLK = '1') THEN
			IF (CS = '1' AND WRIT = '1') THEN
				mem(to_integer(address)) <= data_in;
			END IF;
		END IF;
	END PROCESS;	
		
	reading: PROCESS(RD, address)-- reading asynchronous
		BEGIN
		IF (RD = '1' AND CS = '1') THEN
			data_out <= mem(to_integer(address));
		END IF;
	END PROCESS;
END ARCHITECTURE; 