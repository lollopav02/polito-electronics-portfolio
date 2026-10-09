library IEEE;
use IEEE.std_logic_1164.all;

package ALU_TYPE is
    -- Definizione del tipo enumerato per gli opcode della ALU
    type TYPE_OP is (
        ADD,     -- Somma
        SUB,     -- Sottrazione
        MULT,    -- Moltiplicazione
        BITAND,  -- AND bit a bit
        BITOR,   -- OR bit a bit
        BITXOR,  -- XOR bit a bit
        FUNCLSL, -- Logical Shift Left
        FUNCLSR, -- Logical Shift Right
        FUNCRL,  -- Rotate Left
        FUNCRR   -- Rotate Right
    );
end package ALU_TYPE;