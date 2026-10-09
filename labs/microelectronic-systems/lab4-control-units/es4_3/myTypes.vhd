library ieee;
use ieee.std_logic_1164.all;

package myTypes is

-- Control unit input sizes
    constant OP_CODE_SIZE : integer :=  6;  -- OPCODE field size
    constant FUNC_SIZE    : integer :=  11; -- FUNC field size

-- R-Type instructions -> FUNC field

    constant RTYPE_ADD : std_logic_vector(FUNC_SIZE - 1 downto 0) := "00000000000"; -- R[RC] = R[RA] + R[RB]
    constant RTYPE_SUB : std_logic_vector(FUNC_SIZE - 1 downto 0) := "00000000100"; -- R[RC] = R[RA] - R[RB]
    constant RTYPE_AND : std_logic_vector(FUNC_SIZE - 1 downto 0) := "00000001000"; -- R[RC] = R[RA] AND R[RB]
    constant RTYPE_OR  : std_logic_vector(FUNC_SIZE - 1 downto 0) := "00000001100"; -- R[RC] = R[RA] OR R[RB]
    
    constant NOP       : std_logic_vector(FUNC_SIZE - 1 downto 0) := "00000000000"; 

    -- ID for all register to register operations
    constant RTYPE : std_logic_vector(OP_CODE_SIZE - 1 downto 0) := "000000"; -- Base OPCODE for R-Type operations

-- I-Type instructions -> OPCODE field

    constant ITYPE_ADDI1  : std_logic_vector(OP_CODE_SIZE - 1 downto 0) := "000100"; -- R[RA] = R[RB] + INP1
    constant ITYPE_SUBI1  : std_logic_vector(OP_CODE_SIZE - 1 downto 0) := "001000"; -- R[RA] = R[RB] - INP1
    constant ITYPE_ANDI1  : std_logic_vector(OP_CODE_SIZE - 1 downto 0) := "001100"; -- R[RA] = R[RB] AND INP1
    constant ITYPE_ORI1   : std_logic_vector(OP_CODE_SIZE - 1 downto 0) := "010000"; -- R[RA] = R[RB] OR INP1
    
    constant ITYPE_ADDI2  : std_logic_vector(OP_CODE_SIZE - 1 downto 0) := "010100"; -- R[RB] = R[RA] + INP2
    constant ITYPE_SUBI2  : std_logic_vector(OP_CODE_SIZE - 1 downto 0) := "011000"; -- R[RB] = R[RA] - INP2
    constant ITYPE_ANDI2  : std_logic_vector(OP_CODE_SIZE - 1 downto 0) := "011100"; -- R[RB] = R[RA] AND INP2
    constant ITYPE_ORI2   : std_logic_vector(OP_CODE_SIZE - 1 downto 0) := "100000"; -- R[RB] = R[RA] OR INP2
    
    constant ITYPE_MOV    : std_logic_vector(OP_CODE_SIZE - 1 downto 0) := "100100"; -- R[RB] = R[RA]
    constant ITYPE_S_REG1 : std_logic_vector(OP_CODE_SIZE - 1 downto 0) := "101000"; -- R[RB] = INP1
    constant ITYPE_S_REG2 : std_logic_vector(OP_CODE_SIZE - 1 downto 0) := "101100"; -- R[RA] = INP2
    
    constant ITYPE_S_MEM  : std_logic_vector(OP_CODE_SIZE - 1 downto 0) := "110000"; -- MEM[R[RA]+INP2] = R[RB]
    constant ITYPE_L_MEM1 : std_logic_vector(OP_CODE_SIZE - 1 downto 0) := "110100"; -- R[RA] = MEM[R[RB]+INP1]
    constant ITYPE_L_MEM2 : std_logic_vector(OP_CODE_SIZE - 1 downto 0) := "111000"; -- R[RB] = MEM[R[RA]+INP2]

end myTypes;