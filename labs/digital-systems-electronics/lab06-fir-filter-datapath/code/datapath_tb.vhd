LIBRARY ieee;
USE ieee.std_LOGIC_1164.all;
USE ieee.numeric_std.all;

ENTITY datapath_tb IS
END ENTITY;

ARCHITECTURE behav OF datapath_tb IS
	COMPONENT datapath IS
	PORT(data_in: IN signed(7 downto 0);
		  ck, fill_a, fill_b: IN std_logic;	
		  address_a, address_b: OUT unsigned(9 downto 0);
		  filled_a, filled_b: OUT std_logic;
		  data_out: OUT signed(7 downto 0));
	END COMPONENT;
	
	SIGNAL DATAIN : SIGNED(7 DOWNTO 0);
	SIGNAL CLK: STD_LOGIC;
	SIGNAL RST,FILLB, filla: STD_LOGIC;
	SIGNAL adda, addb: unsigned(9 downto 0);
	SIGNAL outdata: signed(7 downto 0);
	SIGNAL done, FILLEDA: std_logic;
	
	
	BEGIN
	PROCESS
	BEGIN
	DATAIN <= "00000000";
	WAIT FOR 5 NS;
	
	DATAIN <= "01010100";
	WAIT FOR 10 ns;
	DATAIN <= "01011100";
	WAIT FOR 10 NS;
	DATAIN <= "11100010";
	WAIT FOR 10 ns;
	DATAIN <= "00010100";
	WAIT FOR 10 ns;
	
	DATAIN <= "01000110";
	WAIT FOR 10 ns;
	DATAIN <= "10010000";
	WAIT FOR 10 ns;
	DATAIN <= "01011100";
	WAIT FOR 10 NS;
	DATAIN <= "11100010";
	WAIT FOR 10 ns;
	
	DATAIN <= "01011100";
	WAIT FOR 10 NS;
	DATAIN <= "11100010";
	WAIT FOR 10 ns;
	DATAIN <= "00010100";
	WAIT FOR 10 ns;
	DATAIN <= "10101010";
	WAIT FOR 10 NS;
	
	DATAIN <= "01011100";
	WAIT FOR 10 NS;
	DATAIN <= "11100010";
	WAIT FOR 10 ns;
	DATAIN <= "00010100";
	WAIT FOR 10 ns;
	DATAIN <= "10001011";
	WAIT FOR 10 NS;
	
	DATAIN <= "01011100";
	WAIT FOR 10 NS;
	DATAIN <= "11100010";
	WAIT FOR 10 ns;
	DATAIN <= "00010100";
	WAIT FOR 10 ns;
	DATAIN <= "10001011";
	WAIT FOR 10 NS;
	
	WAIT;
	END PROCESS;
	
	
	PROCESS
	BEGIN
	CLK <='0';
	WAIT FOR 5 ns;
	CLK<='1';
	WAIT FOR 5 ns;
	END PROCESS;
	
	PROCESS
	BEGIN
	FILLA <='1';
	FILLB<='0';
	WAIT FOR 10240 NS;
	FILLA<='0';
	WAIT FOR 10 NS;
	FILLB<='1';
	WAIT FOR 10340 NS;
	FILLB<='0';
	wait;
	end PROCESS;
	

	dut: datapath PORT MAP(DATAIN, CLK, filla, fillb, adda, addb, filleda,  done, outdata);
	END ARCHITECTURE;