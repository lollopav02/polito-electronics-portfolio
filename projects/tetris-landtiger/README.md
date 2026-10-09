# Tetris on the LandTiger Board (NXP LPC1768)

A complete Tetris game in bare-metal C for the LandTiger development board
(ARM Cortex-M3 NXP LPC1768) with a 240×320 LCD, joystick, push-buttons, potentiometer and speaker.  
*Course: Computer Architectures — Politecnico di Torino, 2025/26.*

## Features

- Seven tetrominoes with clockwise rotation and wall kicks, line clears, score, high score
  and line counter.
- **Falling speed set by the potentiometer** (ADC), from 1 to 5 squares per second;
  holding the joystick down doubles it (soft drop), KEY2 drops the piece instantly (hard drop).
- **Power-ups:** every 5 cleared lines a random block becomes a power-up. Clearing its line either
  removes the lower half of the stack or slows the game down to 1 square/s for 15 s.
- **Malus:** every 10 cleared lines a partially filled line is pushed in from the bottom.
- **Sound effects** on the DAC for rotation, hard drop, line clear and game over.

| Control | Action |
|---|---|
| KEY1 | start / pause / restart after game over |
| KEY2 or joystick SELECT | hard drop |
| Joystick LEFT / RIGHT | move |
| Joystick UP | rotate |
| Joystick DOWN (held) | soft drop |
| Potentiometer | falling speed |

## Architecture

Interrupt handlers do as little as possible: they sample the inputs and raise flags, while all
the game logic runs in the main loop. This keeps the ISRs short and avoids shared-state races.

| Peripheral | Role |
|---|---|
| TIMER0 | 50 ms game tick |
| RIT (repetitive interrupt timer) | 50 ms joystick sampling with edge detection, push-button debouncing, ADC trigger |
| EINT1 / EINT2 | KEY1 / KEY2; the interrupt is disabled while the key is held and re-armed by the RIT on release |
| ADC (AD0.5) | potentiometer reading, non-blocking |
| TIMER2 + DAC | square-wave tone generation |
| TIMER1 | one-shot timer that ends each tone |

The LCD is redrawn incrementally: a shadow copy of the screen is kept and only the cells that changed
are repainted, about 1 350 pixels per step instead of 45 000 for a full redraw.

```
Source/functions.c   game logic: collisions, rotation, line clears, power-ups, rendering
Source/sample.c      initialization and main loop
Source/sound.c       sound effects (DAC + TIMER1/TIMER2)
Source/RIT/          joystick sampling and debouncing
Source/Buttons/      KEY1/KEY2 external interrupts
Source/timer/        LPC17xx timer driver and ISRs
Source/adc/          potentiometer
Source/GLCD/, Source/TouchPanel/, startup and system files: board support code provided by the course
tests/               host-side tests of the game logic
```

## Tests

The game logic is tested on a PC, without the board, by replacing the LCD, ADC and sound with stubs.
`test_logic.c` checks rotation at the walls, scoring, power-ups, malus, speed mapping, game over and
restart; `fuzz.c` plays 300 random games and checks after every move that the falling piece is
inside the field and never overlaps placed blocks.

```sh
cd tests
gcc -std=c99 -fsanitize=address,undefined -I../Source -I../Source/adc -Istubs test_logic.c -o test_logic && ./test_logic
gcc -std=c99 -fsanitize=address,undefined -I../Source -I../Source/adc -Istubs fuzz.c -o fuzz && ./fuzz
```

## Building

Open `sample.uvprojx` with Keil µVision 5 (device LPC1768), build and flash the board.

## Development history

The game was developed for the course in two steps (base game, then ADC speed control, power-ups
and sound). After the submission I refactored it: unified collision checking for rotation and
movement, fixed out-of-bounds writes when rotating near the walls, completed the timer driver so
that sound works, added key debouncing and incremental rendering, and wrote the tests.

## Author

**Lorenzo Pavone**
