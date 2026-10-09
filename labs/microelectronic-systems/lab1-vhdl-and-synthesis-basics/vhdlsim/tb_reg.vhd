library IEEE;
use IEEE.std_logic_1164.all;


entity TBREG is
end TBREG; 

architecture TEST of TBREG is
	constant n: integer:=8;
	signal	CK:		std_logic :='0';
	signal	RESET:		std_logic :='0';
	signal	D:		std_logic_vector(n-1 downto 0);
	signal	QSYNC:		std_logic_vector(n-1 downto 0);
	signal	QASYNC:		std_logic_vector(n-1 downto 0);
	
	component REG 
	
	Generic(NBIT: integer);
	Port (	D:	In	std_logic_vector(NBIT-1 downto 0);
		CK:	In	std_logic;
		RESET:	In	std_logic;
		Q:	Out	std_logic_vector(NBIT-1 downto 0));
	end component;

begin 
		
	DUT1 : REG
	generic map(NBIT=>n)
	Port Map ( D,CK,RESET,QSYNC); 
		
	DUT2 : REG
	generic map(NBIT=>n)
	Port Map ( D,CK,RESET,QASYNC); 
	

	RESET <= '0', '1' after 3 ns , '0' after 27 ns , '1' after 37 ns;
	
	
	D <=  x"00" after 10 ns, x"AA" after 20 ns, x"55" after 30 ns, x"FF"after 40 ns, x"00" after 50 ns; 
	
	-- we've used hexadecimal values to visualize better the results on the timing diagram

	
	PCLOCK : process(CK)
	begin
		CK <= not(CK) after 0.5 ns;	
	end process;



	

end TEST;--end

configuration FDTEST of TBREG is
   for TEST
      for DUT1 : REG
         use configuration WORK.CFG_REG_1; -- sincrono
      end for;
      for DUT2: REG
         use configuration WORK.CFG_REG_2; -- asincrono
      end for;


   end for;
end FDTEST;

