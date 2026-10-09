library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

-- Nota: se non hai un package constants, commenta la riga sotto
-- use WORK.constants.all; 

entity MULTIPLIER_tb is
end MULTIPLIER_tb;

architecture TEST of MULTIPLIER_tb is

  -- Modifica numBit a 32 per il test finale, 
  -- o lascialo a 4 per una simulazione veloce di tutti i casi
  constant numBit : integer := 4; 

  signal A_mp_i : std_logic_vector(numBit-1 downto 0) := (others => '0');
  signal B_mp_i : std_logic_vector(numBit-1 downto 0) := (others => '0');
  signal Y_mp_i : std_logic_vector(2*numBit-1 downto 0);

  -- Dichiarazione Componente
  component BOOTHMUL is
    generic ( N : integer );
    port (
        A : in  std_logic_vector(N-1 downto 0);
        B : in  std_logic_vector(N-1 downto 0);
        P : out std_logic_vector(2*N-1 downto 0)
    );
  end component;

begin

  -- Istanziazione del Booth Multiplier
  DUT: BOOTHMUL 
    generic map ( N => numBit )
    port map (
        A => A_mp_i,
        B => B_mp_i,
        P => Y_mp_i
    );

  -- Processo di test
  test: process
  begin
    A_mp_i <= (others => '0');
    B_mp_i <= (others => '0');
    wait for 10 ns;

    -- Ciclo per operando A
    NumROW : for i in 0 to 2**(numBit)-1 loop
        -- Ciclo per operando B
        NumCOL : for j in 0 to 2**(numBit)-1 loop
            wait for 10 ns;
            B_mp_i <= B_mp_i + '1';
        end loop NumCOL ;
        
        A_mp_i <= A_mp_i + '1';     
    end loop NumROW ;

    wait;          
  end process test;

end TEST;