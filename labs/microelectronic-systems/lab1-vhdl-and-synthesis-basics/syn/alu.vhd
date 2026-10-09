library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;
use IEEE.std_logic_arith.all;
use WORK.constants.all;
use WORK.alu_types.all; -- Nota: deve corrispondere al nome nel file alu_type.vhd

entity ALU is
  generic (N : integer := numBit);
  port ( 
    FUNC   : IN  TYPE_OP;
    DATA1  : IN  std_logic_vector(N-1 downto 0);
    DATA2  : IN  std_logic_vector(N-1 downto 0);
    OUTALU : OUT std_logic_vector(N-1 downto 0)
  );
end ALU;

architecture BEHAVIOR of ALU is
begin

  P_ALU: process (FUNC, DATA1, DATA2)
    -- Variabile per contenere il risultato della moltiplicazione a 2N bit
    variable tmp_mult : std_logic_vector((2*N)-1 downto 0);
  begin
    case FUNC is
        when ADD => 
            OUTALU <= DATA1 + DATA2; 

        when SUB => 
            OUTALU <= DATA1 - DATA2;

        when MULT => 
            tmp_mult := DATA1 * DATA2;
            OUTALU   <= tmp_mult(N-1 downto 0);

        when BITAND => 
            OUTALU <= DATA1 and DATA2; 

        when BITOR => 
            OUTALU <= DATA1 or DATA2;

        when BITXOR => 
            OUTALU <= DATA1 xor DATA2;

        -- Shift Logico a Sinistra: inserisce '0' a destra
        when FUNCLSL => 
            OUTALU <= DATA1(N-2 downto 0) & '0';

        -- Shift Logico a Destra: inserisce '0' a sinistra
        when FUNCLSR => 
            OUTALU <= '0' & DATA1(N-1 downto 1);

        -- Rotazione a Sinistra: il bit più significativo rientra dal meno significativo
        when FUNCRL => 
            OUTALU <= DATA1(N-2 downto 0) & DATA1(N-1);

        -- Rotazione a Destra: il bit meno significativo rientra dal più significativo
        when FUNCRR => 
            OUTALU <= DATA1(0) & DATA1(N-1 downto 1);

        when others => 
            OUTALU <= (others => '0');
    end case; 
  end process P_ALU;

end BEHAVIOR;

configuration CFG_ALU_BEHAVIORAL of ALU is
  for BEHAVIOR
  end for;
end CFG_ALU_BEHAVIORAL;