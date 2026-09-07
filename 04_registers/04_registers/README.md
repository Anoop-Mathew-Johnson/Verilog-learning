# Registers & Sequential Logic

## Overview

This project introduces **sequential digital logic** using a D Flip-Flop.

Unlike combinational circuits, sequential circuits can store information and their outputs can depend on previous states.

The D Flip-Flop is the fundamental storage element used to build registers, counters, memory structures, and other sequential systems.

## D Flip-Flop

The D Flip-Flop stores one bit of information.

At the rising edge of the clock:

```text
Reset = 1 → Q becomes 0
Reset = 0 → Q takes the value of D
```

The design uses a synchronous reset that is evaluated on the rising edge of the clock.

## Behaviour

```text
             ┌──────────────┐
D ──────────►│              │
             │ D Flip-Flop  │────► Q
CLK ────────►│              │
             │              │
RESET ──────►│              │
             └──────────────┘
```

## Verilog Concepts Used

* Sequential `always` block
* `posedge` clock detection
* Non-blocking assignment (`<=`)
* Registers using `reg`
* Synchronous reset
* State storage

## Verification

The testbench `d_flip_flop_tb.v`:

* Generates a continuous clock signal.
* Tests storing logic `1`.
* Tests storing logic `0`.
* Tests reset behaviour.
* Observes the relationship between `D` and `Q`.

## Files

```text
04_registers/
├── d_flip_flop.v
├── d_flip_flop_tb.v
└── README.md
```

## Learning Outcome

This project marks the transition from **combinational logic to sequential logic**.

The D Flip-Flop demonstrates how a digital circuit can retain information and respond to a clock signal.
