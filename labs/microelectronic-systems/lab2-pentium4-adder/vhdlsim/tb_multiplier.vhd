library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;


entity MULTIPLIER_tb is
end MULTIPLIER_tb;

architecture TEST of MULTIPLIER_tb is

  constant numBit : integer := 4;

  -- input	 
  signal A_mp_i : std_logic_vector(numBit-1 downto 0) := (others => '0');
  signal B_mp_i : std_logic_vector(numBit-1 downto 0) := (others => '0');

  -- output
  signal Y_mp_i : std_logic_vector(2*numBit-1 downto 0);

  -- MUL component declaration
  component BOOTHMUL
    generic ( N : integer := 32 );
    port (
      A : in  std_logic_vector(N-1 downto 0);
      B : in  std_logic_vector(N-1 downto 0);
      P : out std_logic_vector(2*N-1 downto 0)
    );
  end component;

begin

  -- MUL instantiation
  UUT: BOOTHMUL
    generic map ( N => numBit )
    port map (
      A => A_mp_i,
      B => B_mp_i,
      P => Y_mp_i
    );

  -- PROCESS FOR TESTING TEST - COMPLETE CYCLE
  test: process
  begin

    NumROW : for i in 0 to 2**(numBit)-1 loop

      NumCOL : for j in 0 to 2**(numBit)-1 loop
        wait for 10 ns;
        B_mp_i <= B_mp_i + '1';
      end loop NumCOL;
        
      A_mp_i <= A_mp_i + '1'; 	

    end loop NumROW;

    wait;          
  end process test;

end TEST;