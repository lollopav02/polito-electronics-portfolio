library ieee;
use ieee.std_logic_1164.all;

package myTypes_uP is

-- Control unit input sizes
    constant OP_CODE_SIZE : integer :=  6;  -- OPCODE field size
    constant FUNC_SIZE    : integer :=  11; -- FUNC field size

-- R-Type instructions -> FUNC field
-- (Spaced by 3 to match the ROM addresses)

    constant RTYPE_ADD : std_logic_vector(FUNC_SIZE - 1 downto 0) := "00000000000"; -- Val: 0  | R[RC] = R[RA] + R[RB]
    constant RTYPE_SUB : std_logic_vector(FUNC_SIZE - 1 downto 0) := "00000000011"; -- Val: 3  | R[RC] = R[RA] - R[RB]
    constant RTYPE_AND : std_logic_vector(FUNC_SIZE - 1 downto 0) := "00000000110"; -- Val: 6  | R[RC] = R[RA] AND R[RB]
    constant RTYPE_OR  : std_logic_vector(FUNC_SIZE - 1 downto 0) := "00000001001"; -- Val: 9  | R[RC] = R[RA] OR R[RB]
    
    constant NOP       : std_logic_vector(FUNC_SIZE - 1 downto 0) := "00000000000"; 

-- R-Type instruction -> OPCODE field

    -- Base OPCODE for all R-Type operations
    constant RTYPE : std_logic_vector(OP_CODE_SIZE - 1 downto 0) := "000000"; -- Val: 0

-- I-Type instructions -> OPCODE field
-- (Spaced by 3, starting from 12 to match the ROM addresses)
    constant ITYPE_ADDI1  : std_logic_vector(OP_CODE_SIZE - 1 downto 0) := "001100"; -- Val: 12 | R[RA] = R[RB] + INP1
    constant ITYPE_SUBI1  : std_logic_vector(OP_CODE_SIZE - 1 downto 0) := "001111"; -- Val: 15 | R[RA] = R[RB] - INP1
    constant ITYPE_ANDI1  : std_logic_vector(OP_CODE_SIZE - 1 downto 0) := "010010"; -- Val: 18 | R[RA] = R[RB] AND INP1
    constant ITYPE_ORI1   : std_logic_vector(OP_CODE_SIZE - 1 downto 0) := "010101"; -- Val: 21 | R[RA] = R[RB] OR INP1
    
    constant ITYPE_ADDI2  : std_logic_vector(OP_CODE_SIZE - 1 downto 0) := "011000"; -- Val: 24 | R[RB] = R[RA] + INP2
    constant ITYPE_SUBI2  : std_logic_vector(OP_CODE_SIZE - 1 downto 0) := "011011"; -- Val: 27 | R[RB] = R[RA] - INP2
    constant ITYPE_ANDI2  : std_logic_vector(OP_CODE_SIZE - 1 downto 0) := "011110"; -- Val: 30 | R[RB] = R[RA] AND INP2
    constant ITYPE_ORI2   : std_logic_vector(OP_CODE_SIZE - 1 downto 0) := "100001"; -- Val: 33 | R[RB] = R[RA] OR INP2
    
    constant ITYPE_MOV    : std_logic_vector(OP_CODE_SIZE - 1 downto 0) := "100100"; -- Val: 36 | R[RB] = R[RA]
    constant ITYPE_S_REG1 : std_logic_vector(OP_CODE_SIZE - 1 downto 0) := "100111"; -- Val: 39 | R[RB] = INP1
    constant ITYPE_S_REG2 : std_logic_vector(OP_CODE_SIZE - 1 downto 0) := "101010"; -- Val: 42 | R[RA] = INP2
    
    constant ITYPE_S_MEM  : std_logic_vector(OP_CODE_SIZE - 1 downto 0) := "101101"; -- Val: 45 | MEM[R[RA]+INP2] = R[RB]
    constant ITYPE_L_MEM1 : std_logic_vector(OP_CODE_SIZE - 1 downto 0) := "110000"; -- Val: 48 | R[RA] = MEM[R[RB]+INP1]
    constant ITYPE_L_MEM2 : std_logic_vector(OP_CODE_SIZE - 1 downto 0) := "110011"; -- Val: 51 | R[RB] = MEM[R[RA]+INP2]

end myTypes_uP;