# Digital Systems Electronics — Labs

Ten lab experiences: digital design in **VHDL** on an Intel FPGA board (labs 1–6) and
**bare-metal C** on the STM32 Nucleo-F401RE microcontroller board (labs 7–10).  
*Politecnico di Torino, academic year 2023/24 · Group 03: Dawid El Amrani, Giovanni Ielmini,
Pierfelice Di Carolo, **Lorenzo Pavone**.*

Each folder contains the code (`code/`), the lab report and, where available, simulation screenshots (`img/`).

## FPGA / VHDL

| Lab | Topic |
|---|---|
| [01](lab01-combinational-basics) | Switches and LEDs, 2-to-1 and 5-to-1 multiplexers built hierarchically, first testbenches |
| [02](lab02-seven-segment-converters) | 7-segment display decoding, binary-to-decimal (BCD) conversion |
| [03](lab03-adders-multiplier) | Ripple-carry adder, adder/subtractor, multiplier, with testbenches |
| [04](lab04-latches-counters-timer) | Gated latches, 16-bit synchronous counter, digit flasher, **reaction-time measurement** on the 7-segment displays |
| [05](lab05-finite-state-machines) | Finite state machines: one-hot and two-process descriptions, "HELLO" scrolling message |
| [06](lab06-fir-filter-datapath) | **4-tap FIR filter with datapath and control unit** (see below) |

### Lab 6 highlight — FIR filter with datapath and control unit

A digital filter that reads 1024 samples into memory A, computes

y[n] = −½·x[n] − 2·x[n−1] + 4·x[n−2] + ¼·x[n−3]

and writes the results into memory B. Since all coefficients are powers of two, the
multiplications are implemented with shifters, followed by a ripple-carry adder tree on 11 bits
(with input/output bit adjusters to avoid overflow). The design is split into a **datapath**
(memories, shifters, adders, address counters, comparator, registers) and a **control unit** (FSM),
each verified with its own testbench before the full system.

## STM32 / C

| Lab | Topic |
|---|---|
| [07](lab07-stm32-gpio) | GPIO from scratch: LED and push-button with direct register access and with the ST LL library, button-controlled blink frequency, software square wave |
| [08](lab08-stm32-timers-adc) | Timers and ADC with polling (potentiometer-controlled square wave) |
| [09](lab09-stm32-interrupts) | Interrupt-driven design: up to five concurrent interrupts (three timer output-compare channels, push-button EXTI, timer-triggered ADC) generating three independent square waves whose frequencies follow a potentiometer |
| [10](lab10-stm32-pwm-capture-dma) | Input capture to measure frequency and duty cycle, PWM whose duty cycle follows the input frequency, LED dimmer with the HAL, **50 Hz sine generation with PWM + DMA** from a look-up table |
