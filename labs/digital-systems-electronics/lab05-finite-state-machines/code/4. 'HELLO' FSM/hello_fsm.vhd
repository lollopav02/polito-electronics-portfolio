LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

ENTITY hello_fsm IS 
	PORT(KEY: IN STD_LOGIC_VECTOR(0 DOWNTO 0); -- active-low reset
		  SW: IN STD_LOGIC_VECTOR(0 DOWNTO 0); --turned on when = 1
	     CLOCK_50: IN STD_LOGIC;
		  HEX0, HEX1, HEX2, HEX3, HEX4, HEX5: OUT STD_LOGIC_VECTOR(6 DOWNTO 0));
END ENTITY;

ARCHITECTURE beh OF hello_fsm IS

	COMPONENT counter1s IS
		PORT(EN, CLK, CL : IN STD_LOGIC;
	        T: OUT STD_LOGIC);
	END COMPONENT;
	
	COMPONENT bit7reg IS
		PORT(din: IN STD_LOGIC_VECTOR(6 DOWNTO 0);
			  en, clk, cl: IN STD_LOGIC;
			  dout: OUT STD_LOGIC_VECTOR(6 DOWNTO 0));
	END COMPONENT;
	
	SIGNAL clear, enable: STD_LOGIC;
	SIGNAL in0, out0, out1, out2, out3, out4, out5: STD_LOGIC_VECTOR(6 DOWNTO 0);
	TYPE STATE IS (SPACE, O, L1, L2, E , H, LOOPING);
	SIGNAL X, Y: STATE;
	
	
	BEGIN
	clear <= KEY(0);
	--counting to 1sec
	count_to_1s: counter1s PORT MAP(SW(0), CLOCK_50, KEY(0), enable);
	
	restart: PROCESS(CLOCK_50)
	BEGIN
	IF ( CLOCK_50'EVENT AND CLOCK_50 = '1') THEN 
		IF (clear = '0') THEN
			X <= SPACE;
		ELSE
			X <= Y;
		END IF;
	END IF;
	END PROCESS;
	
	state_assignment: PROCESS(enable)
	BEGIN
	CASE X IS
	WHEN SPACE => 
		IF(enable = '1') THEN
		Y <= H;
		ELSE 
		Y <= SPACE;
		END IF;
	WHEN H => 
		IF(enable = '1') THEN
		Y <= E;
		ELSE 
		Y <= H;
		END IF;
	WHEN E => 
		IF(enable = '1') THEN
		Y <= L1;
		ELSE 
		Y <= E;
		END IF;
	WHEN L1 => 
		IF(enable = '1') THEN
		Y <= L2;
		ELSE 
		Y <= L1;
		END IF;
	WHEN L2 => 
		IF(enable = '1') THEN
			Y <= O;
		ELSE
			Y <= L2;
		END IF;
	WHEN O => 
		IF(enable = '1') THEN
			Y <= LOOPING;
		ELSE
			Y <= O;
		END IF;
	WHEN LOOPING =>
		Y <= LOOPING;
	WHEN OTHERS => 
		Y <= SPACE;
	END CASE;
	END PROCESS;
	
	letter_assignment: PROCESS(X, enable)
	BEGIN
	CASE X IS
	WHEN SPACE => 
		IN0 <= "1111111";
	WHEN O => 
		IN0 <= "1000000";
	WHEN L1 => 
		IN0 <= "1000111";
	WHEN L2 => 
		IN0 <= "1000111";
	WHEN E => 
		IN0 <= "0000110";
	WHEN H => 
		IN0 <= "0001001";
	WHEN LOOPING =>
		IN0 <= OUT5;
	WHEN OTHERS => 
		IN0 <= "1111111";
	END CASE;
	END PROCESS;
	
	-- memorizing
	reg0: bit7reg PORT MAP(IN0, enable, CLOCK_50, KEY(0), OUT0);
	reg1: bit7reg PORT MAP(OUT0, enable, CLOCK_50, KEY(0), OUT1);
	reg2: bit7reg PORT MAP(OUT1, enable, CLOCK_50, KEY(0), OUT2);
	reg3: bit7reg PORT MAP(OUT2, enable, CLOCK_50, KEY(0), OUT3);
	reg4: bit7reg PORT MAP(OUT3, enable, CLOCK_50, KEY(0), OUT4);
	reg5: bit7reg PORT MAP(OUT4, enable, CLOCK_50, KEY(0), OUT5);
	--displaying
	HEX0 <= OUT0;
	HEX1 <= OUT1;
	HEX2 <= OUT2;
	HEX3 <= OUT3;
	HEX4 <= OUT4;
	HEX5 <= OUT5;
	
END ARCHITECTURE;