# Lorenzo Pavone · Electronics Portfolio

Projects and lab work from my Electronic Engineering studies at **Politecnico di Torino**:
RF hardware design, digital ASIC synthesis, FPGA and microcontroller-based embedded systems.

> Every folder has its own README with goals, methods, results and how to reproduce them.

## Projects

| Project | Area | Tools | Highlights |
|---|---|---|---|
| [Microstrip low-pass filter](projects/microstrip-lowpass-filter) | RF / microwave | MATLAB, AWR Microwave Office, AXIEM, VNA | Full flow from specification to fabricated PCB and VNA measurement; 2.4 GHz cut-off, ~35 dB rejection at 4.8 GHz |
| [Low-power synthesis of a SHA-256 core](projects/sha256-low-power-synthesis) | Digital IC design | Synopsys Design Compiler, PrimeTime, Tcl | 65 nm synthesis at 333 MHz; clock gating + multi-Vt reduce area by 19% vs. baseline; custom PrimeTime timing-path report |
| [Tetris on the LandTiger board](projects/tetris-landtiger) | Embedded C | NXP LPC1768 (Cortex-M3), Keil µVision | Interrupt-driven game with LCD, joystick, ADC-controlled speed, DAC sound, power-ups; host-side unit and fuzz tests |

## Labs

| Course | Platform | Topics |
|---|---|---|
| [Electronics for Embedded Systems](labs/electronics-for-embedded-systems) (2025/26) | Intel Cyclone V FPGA (DE1-SoC), Nios II, breadboard analog circuits | FPGA flow and timing, software vs. hardware UART, **SAR ADC** design and characterization, BJT switching with PWM |
| [Digital Systems Electronics](labs/digital-systems-electronics) (2023/24) | FPGA (VHDL), STM32 Nucleo-F401RE | Combinational and sequential VHDL, FSMs, **FIR filter datapath + control unit**, bare-metal STM32 GPIO, timers, interrupts, PWM, DMA |

## Skills

**Languages:** C (embedded), VHDL, Verilog, Tcl, MATLAB  
**Tools:** Intel Quartus Prime, ModelSim, Synopsys Design Compiler & PrimeTime, Keil µVision, STM32CubeIDE, AWR Microwave Office  
**Lab instruments:** oscilloscope, vector network analyzer, waveform generator, power supply

## Notes

All projects and labs were carried out in student teams; teammates are credited in each README.
Files provided by the courses (templates, board libraries) are marked as such, and proprietary
technology libraries are not included.

## Contact

<!-- TODO: add your LinkedIn URL and e-mail -->
LinkedIn: _add link_ · E-mail: _add address_
