# Microelectronic Systems — Labs

Six lab experiences covering the digital IC design flow: VHDL design and verification, logic
synthesis with Synopsys Design Compiler, transistor-level characterization of standard cells, and
place & route with Cadence Innovus.  
*Politecnico di Torino, academic year 2025/26 · Group 25.*

| Lab | Topic | Tools |
|---|---|---|
| [1](lab1-vhdl-and-synthesis-basics) | VHDL architectures (behavioral vs. structural) and first syntheses | ModelSim, Design Compiler |
| [2](lab2-pentium4-adder) | **Pentium 4 sparse-tree adder** | ModelSim, Design Compiler |
| [3](lab3-register-files) | **Register file and windowed register file** | ModelSim, Design Compiler |
| [4](lab4-control-units) | **Hardwired, FSM and microprogrammed control units** | ModelSim |
| [5](lab5-transistor-level-characterization) | **Transistor-level characterization** of NAND gates and a D flip-flop | SPICE (Eldo, EZwave) |
| [6](lab6-place-and-route) | **Place & route** of an adder and a multiplier, parasitic extraction | Cadence Innovus |

## Lab 1 — VHDL and synthesis basics

Basic cells (inverter, NAND, multiplexers), a generic multiplexer, registers with synchronous and
asynchronous reset, an accumulator and a 64-bit ALU, each described with several architectures
(behavioral, structural) selected through VHDL configurations. The designs were simulated and
synthesized, comparing area, timing and the resulting schematics of the different descriptions.

## Lab 2 — Pentium 4 sparse-tree adder

Structural VHDL of the adder used in the Intel Pentium 4: a sparse-tree **carry generator**
(PG network, G and PG blocks) computes one carry every four bits, and a **sum generator** made of
carry-select blocks (two ripple-carry adders and a multiplexer per 4-bit block) produces the sum.
Verified with a testbench and synthesized.

## Lab 3 — Register file and windowed register file

- A 32 × 64-bit register file with two read ports and one write port, synthesized on the Nangate
  45 nm Open Cell Library: about 8 300 cells and 17 500 µm²; with a 2 ns clock the critical path is
  0.40 ns (slack 1.55 ns). The reports show why `create_clock` alone leaves input-to-register and
  register-to-output paths unconstrained.
- A **windowed register file** (SPARC-style): 8 global registers plus IN/LOCAL/OUT blocks of
  8 registers in 4 windows, managed as a circular buffer through the current window pointer
  (CWP), with CALL/RETURN and SPILL/FILL signalling. The address translation logic becomes the
  critical path: 0.96 ns, slack 1.00 ns at 2 ns.

## Lab 4 — Control units

Three implementations of the control unit of the same 3-stage pipelined datapath (register read,
ALU, memory/write-back), for R-type, I-type and load/store instructions:

- **Hardwired:** a combinational decoder plus pipeline registers that delay each control signal
  to the stage that uses it.
- **FSM-based:** a multicycle Moore machine with one state per stage.
- **Microprogrammed:** a 64 × 13-bit microcode ROM addressed by the opcode/function field, with
  a micro-program counter stepping through the three control words of each instruction.

Each one is verified with a testbench running the whole instruction set; waveforms are included.

## Lab 5 — Transistor-level characterization

SPICE characterization of standard cells:

- Propagation delay and rise/fall times of a high-speed (HS) NAND gate as a function of load and
  input transition time, and its maximum load.
- **Sizing:** with a 50 fF load, going from X1 to X8 reduces t<sub>pHL</sub> from 209 ps to
  67 ps and the rise time from 364 ps to 105 ps, at the cost of area, a much higher supply-current
  peak and a larger input capacitance for the driving stage.
- **High-speed vs. low-leakage cells:** the higher-Vt low-leakage NAND is about 39% slower at
  50 fF (42% for X8), the price of its lower static power.
- **D flip-flop setup and hold** found by sweeping the data edge around the clock edge and
  identifying the iterations where the output fails to settle.

## Lab 6 — Place & route

Physical implementation of the synthesized adder and of a multiplier with Cadence Innovus:
floorplan, power planning, placement, clock-tree synthesis and routing, then extraction of the
wire parasitics (SPEF), back-annotated delays (SDF) and post-route timing reports.

## Repository contents

Each lab folder contains the VHDL sources and testbenches, synthesis scripts and reports, SPICE
netlists, waveforms and the answers to the lab questions (`Questions.txt` / `question*.txt`).
Gate-level netlists, tool databases and technology libraries are not included.
