library IEEE;
use IEEE.std_logic_1164.all; 

entity REG is
	Generic(NBIT: integer);
	Port (	D:	In	std_logic_vector(NBIT-1 downto 0);
		CK:	In	std_logic;
		RESET:	In	std_logic;
		Q:	Out	std_logic_vector(NBIT-1 downto 0));
end REG;


architecture SYNCH of REG is -- register with syncronous reset

begin
	REGSYNCH: process(CK)
	begin
	  if CK'event and CK='1' then -- positive edge triggered:
	    if RESET='1' then -- active high reset 
	      Q <= (others=>'0'); 
	    else
	      Q <= D; -- input is written on output
	    end if;
	  end if;
	end process;

end SYNCH;

architecture ASYNCH of REG is -- register with asyncronous reset

begin
	
	REGASYNCH: process(CK,RESET)
	begin
	  if RESET='1' then
	    Q <= (others=>'0');
	  elsif CK'event and CK='1' then -- positive edge triggered:
	    Q <= D; 
	  end if;
	end process;

end ASYNCH;


configuration CFG_REG_1 of REG is
	for SYNCH
	end for;
end CFG_REG_1 ;


configuration CFG_REG_2 of REG is
	for ASYNCH
	end for;
end CFG_REG_2 ;


