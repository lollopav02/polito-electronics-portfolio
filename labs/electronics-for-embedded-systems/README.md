# Electronics for Embedded Systems — Labs

Five lab experiences on the **Terasic DE1-SoC** board (Intel Cyclone V FPGA) combining FPGA logic,
the Nios II soft processor and analog circuits on a breadboard.  
*Politecnico di Torino, academic year 2025/26 · Group B04: **Lorenzo Pavone**, Pietro Sanna,
Samuele Martello, Andrei Ciornei.*

| Lab | Topic | Main skills |
|---|---|---|
| [1](#lab-1--fpga-design-flow-and-timing) | FPGA design flow and timing | Quartus Prime, ModelSim, pin planning, SDC constraints |
| [2](#lab-2--software-uart-on-nios-ii) | Software (bit-banged) UART on Nios II | Embedded C, timing on a soft-core CPU |
| [3](#lab-3--hardware-uart-through-memory-mapped-registers) | Hardware UART through memory-mapped registers | Register-level drivers, status polling |
| [4](#lab-4--sar-analog-to-digital-converter) | **SAR analog-to-digital converter** | Mixed-signal design, characterization |
| [5](#lab-5--bjt-switch-driven-by-fpga-pwm) | **BJT switch driven by FPGA PWM** | Transistor sizing, switching transients |

## Lab 1 — FPGA design flow and timing

Complete Quartus flow (VHDL, RTL simulation in ModelSim, pin assignment, programming) on a
deliberately simple circuit, to focus on the tools. The propagation delay was measured for different
pin placements and SDC constraints, and the floorplan showed how routing distance between I/O pins
and logic dominates the delay, and how too tight a constraint becomes impossible to meet.  
Files: [`lab1-fpga-design-flow/`](lab1-fpga-design-flow)

## Lab 2 — Software UART on Nios II

A UART receiver and transmitter implemented in software on GPIO pins (bit-banging) of a Nios II/e
system, timed with the `alt_timestamp` driver after checking its accuracy on the oscilloscope.
Reception is reliable at 300, 1200 and 2400 baud and fails at 4800 baud, where the instruction
overhead becomes comparable to the bit time. Unrolling the receive loop was used to gain speed.  
Files: [`lab2-software-uart/`](lab2-software-uart) · [`software_uart.c`](lab2-software-uart/software_uart.c)

## Lab 3 — Hardware UART through memory-mapped registers

Driver for the Altera UART core written directly on its registers (vendor driver disabled):
baud-rate divisor computation (divisor = f_clk / baud − 1, e.g. 20 832 for 2400 baud at 50 MHz),
transmission by polling TRDY, reception by polling RRDY, and detection of receive-overrun errors
(ROE) when the data register is not read in time. The double buffering of the transmitter is
visible in the TRDY and TMT status bits.  
Files: [`lab3-hardware-uart/`](lab3-hardware-uart) · [`uart_registers.c`](lab3-hardware-uart/uart_registers.c)

## Lab 4 — SAR analog-to-digital converter

A successive-approximation ADC built from three parts: the SAR control logic on the FPGA, the
on-board ADV7123 video DAC, and an external LM393 comparator on a breadboard.

- Comparator characterization: t<sub>PLH</sub> ≈ 290 ns, t<sub>PHL</sub> ≈ 330 ns, which
  sets the minimum SAR clock period.
- DAC linearity checked over 32 codes (full scale ≈ 1.39 V on 75 Ω).
- Closed-loop operation verified with DC inputs and a 500 Hz sine, at 4 and 5 bits; the DAC
  output shows the expected "staircase" converging on the input, and the output saturates
  correctly above full scale.
- The comparator, not the FPGA or the DAC, limits the sample rate to roughly 60–80 kS/s at 8 bits.

The SAR VHDL entities were provided by the course; our work was the circuit, the measurements and
the timing analysis used to set the clock divider.  
Files: [`lab4-sar-adc/report.pdf`](lab4-sar-adc/report.pdf)

## Lab 5 — BJT switch driven by FPGA PWM

A Verilog PWM generator on the FPGA (≈10 kHz and ≈640 Hz, 20–100% duty cycle) drives an LED
through a 2N3700 NPN transistor.

- Base resistor sized between the FPGA pin current limit and saturation: 162 Ω ≤ R<sub>B</sub> ≤ 1.3 kΩ,
  chosen R<sub>B</sub> = 180 Ω (V<sub>CE,sat</sub> ≈ 12 mV).
- Deep saturation causes an **11 µs storage-time delay** at turn-off.
- A Baker clamp (1N4148) reduces it to 0.5 µs; a 100 nF speed-up capacitor reduces it to about
  0.05 µs and also sharpens the edges.

Files: [`lab5-bjt-switch-pwm/report.pdf`](lab5-bjt-switch-pwm/report.pdf)
