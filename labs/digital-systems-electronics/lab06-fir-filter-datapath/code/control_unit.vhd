LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY control_unit IS
	PORT(START,  FULL_A, FULL_B, CLK: IN std_logic;
		  DONE, CS_A, CS_B, WR_A, WR_B, RD_A, RD_B: OUT std_logic);
END ENTITY;

ARCHITECTURE behaviour OF control_unit IS

	TYPE STATES IS (STANDBY, FILLA, FILLB, COMPLETED);
	SIGNAL X,Y: STATES;
	
	BEGIN
		
		future_state: PROCESS(CLK, START)
		BEGIN
		IF(START = '0') THEN
			X <= STANDBY;
		ELSIF(CLK'EVENT AND CLK = '1') THEN
			X <= Y;
		END IF;
		END PROCESS;
		
		next_state_assignment: PROCESS(START, FULL_A, FULL_B)
		BEGIN
		CASE X IS
			WHEN STANDBY =>
				IF (START = '1' AND FULL_A = '0' AND FULL_B = '0') THEN
					Y <= FILLA;
				ELSE
					Y <= STANDBY;
				END IF;
			WHEN FILLA =>
				IF (START = '1' AND FULL_A = '1') THEN
					Y <= FILLB;
				ELSE
					Y <= FILLA;
				END IF;
			WHEN FILLB =>
				IF (START = '1' AND FULL_B = '1') THEN
					Y <= COMPLETED;
				ELSE
					Y <= FILLB;
				END IF;
			WHEN COMPLETED => 
				Y <= STANDBY;
			WHEN OTHERS=>
				Y <= STANDBY;
		END CASE;
		END PROCESS;
		
		
		state_meaning:	PROCESS(X)
			BEGIN
			CASE X IS
				WHEN STANDBY => 
					CS_A <= '0';
					WR_A <= '0';
					RD_A <= '0';
					CS_B <= '0';
					WR_B <= '0';
					RD_B <= '0';
					DONE <= '0';
				WHEN FILLA => 
					CS_A <= '1';
					WR_A <= '1';
					RD_A <= '0';
					CS_B <= '0';
					WR_B <= '0';
					RD_B <= '0';
					DONE <= '0'; 
				WHEN FILLB => 
					CS_A <= '1';
					WR_A <= '0';
					RD_A <= '1';
					CS_B <= '1';
					WR_B <= '1';
					RD_B <= '0';
					DONE <= '0';
				WHEN COMPLETED => 
					CS_A <= '0';
					WR_A <= '0';
					RD_A <= '0';
					CS_B <= '0';
					WR_B <= '0';
					RD_B <= '0';
					DONE <= '1';
				WHEN OTHERS => 
					CS_A <= '0';
					WR_A <= '0';
					RD_A <= '0';
					CS_B <= '0';
					WR_B <= '0';
					RD_B <= '0';
					DONE <= '0';
			END CASE;
			END PROCESS;

END ARCHITECTURE;
