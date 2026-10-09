library ieee; 
use ieee.std_logic_1164.all; 
use ieee.numeric_std.all; 

entity TBCSA is 
end TBCSA; 

architecture TEST of TBCSA is

  -- Componente generatore di test (LFSR)
  component LFSR8 
    port (CLK, RESET, LD, EN : in std_logic; 
          DIN : in std_logic_vector(7 downto 0); 
          PRN : out std_logic_vector(7 downto 0); 
          ZERO_D : out std_logic);
  end component;

  -- Il nostro nuovo componente Carry Select Block
  component CARRY_SELECT_BLOCK
    generic (NBIT : positive);
    port (
        A   : in  std_logic_vector(NBIT - 1 downto 0);
        B   : in  std_logic_vector(NBIT - 1 downto 0);
        Ci  : in  std_logic;
        S   : out std_logic_vector(NBIT - 1 downto 0)
    );
  end component;
  
  constant Period: time := 1 ns; -- Clock period (1 GHz)
  signal CLK : std_logic :='0';
  signal RESET, LD, EN, ZERO_D : std_logic;
  signal DIN, PRN : std_logic_vector(7 downto 0);

  constant NBIT_TEST : positive := 4;
  signal A, B, S : std_logic_vector(NBIT_TEST - 1 downto 0);
  
  -- Sostituito il vettore C con un singolo bit Ci
  signal Ci : std_logic;

Begin

-- Instanziazione del nostro Carry Select Block
  UADDER: CARRY_SELECT_BLOCK 
       generic map (NBIT => NBIT_TEST)
       port map (
           A  => A, 
           B  => B, 
           Ci => Ci, 
           S  => S
       );

-- Instanziazione dell'unità di test (UUT)
  UUT : LFSR8
       port map (CLK, RESET, LD, EN, DIN, PRN, ZERO_D);

  
  -- Fissiamo il Carry-in a '0' per la simulazione
  -- (Puoi anche provare a cambiarlo a '1' o farlo variare nel tempo per testare il MUX)
  Ci <= '0';

  -- Assegnazione pseudo-casuale degli ingressi tramite LFSR
  A(0) <= PRN(0);
  A(1) <= PRN(6);
  A(2) <= PRN(7);
  A(3) <= PRN(4);

  B(0) <= PRN(6);
  B(1) <= PRN(4);
  B(2) <= PRN(5);
  B(3) <= PRN(3);

-- Generazione del Clock permanente e del Reset
  CLK <= not CLK after Period/2;
  RESET <= '1', '0' after Period;

-- Processo di stimolo
  STIMULUS1: process
  begin
    DIN <= "00000001";
    EN <='1';
    LD <='1';
    wait for 2 * PERIOD;
    LD <='0';
    wait for (65600 * PERIOD);
  end process STIMULUS1;

end TEST;