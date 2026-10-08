# Orbit-8

Orbit-8 is a browser-based programming lab for the Crescent-8 CPU, a
fictional but fully simulated 8-bit computer.

Write Crescent-8 assembly, assemble it into machine code, and watch the CPU
fetch, decode, and execute each instruction.

## Features

- Four 8-bit registers, flags, RAM, program counter, and stack pointer
- Real machine-code encoding and byte-addressed execution
- 16×8 bit-packed framebuffer at addresses `F0–FF`
- Stack memory at `E0–EF`
- Labels, subroutines, `CALL`, `RET`, `PUSH`, and `POP`
- Step, run, pause, reset, and reversible execution history
- Source breakpoints and live register/memory inspection
- Keyboard input through `IN` using `A`, `D`, and `Space`
- Exportable `.asm` programs

## Run it

Open `index.html` in a browser. No build tools or dependencies are required.

Choose an example, click **Assemble**, then use **Step** or **Run** to execute
it. Click a line number to add a breakpoint.

## Crescent-8 memory map

| Range | Purpose |
| --- | --- |
| `00–DF` | Program ROM and general memory |
| `E0–EF` | Downward-growing stack |
| `F0–FF` | 16×8 bit-packed display |

## Project files

- `index.html` — the complete self-contained emulator and interface
- `orbit8-program.asm` — an example Crescent-8 assembly program
