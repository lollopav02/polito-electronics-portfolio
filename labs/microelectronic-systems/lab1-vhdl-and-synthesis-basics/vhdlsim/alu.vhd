library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;
use IEEE.std_logic_arith.all;
use WORK.constants.all;
use WORK.alu_types.all;

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

-- the ALU functions are defined externally inside alu_types file

  PROCESS_ALU: process (FUNC, DATA1, DATA2) -- the sensitivity list includes func (operation type) and the 2 operands
    variable tmp_mult : std_logic_vector((2*N)-1 downto 0); -- moltiplication result (2N bit)
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

        when FUNCLSL => 
            OUTALU <= DATA1(N-2 downto 0) & '0'; -- left shift to insert '0' on the LSB

        when FUNCLSR => 
            OUTALU <= '0' & DATA1(N-1 downto 1); -- right shift to insert '0' on the MSB

        when FUNCRL => 
            OUTALU <= DATA1(N-2 downto 0) & DATA1(N-1); -- left rotation (from MSB to LSB)

        when FUNCRR => 
            OUTALU <= DATA1(0) & DATA1(N-1 downto 1); -- right rotation (from LSB to MSB)

        when others => 
            OUTALU <= (others => '0');
    end case; 
  end process PROCESS_ALU;

end BEHAVIOR;

configuration CFG_ALU_BEHAVIORAL of ALU is
  for BEHAVIOR
  end for;
end CFG_ALU_BEHAVIORAL;