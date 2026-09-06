# Full Adder

## Overview

This project implements a **Full Adder** using Verilog HDL.

A Full Adder is a combinational digital circuit that adds three 1-bit binary values:

* Input A
* Input B
* Carry-in

It produces:

* Sum
* Carry-out

## Logic Equations

```text
Sum = A XOR B XOR Carry-in

Carry-out = (A AND B)
          OR (B AND Carry-in)
          OR (A AND Carry-in)
```

## Truth Table

| A | B | Carry-in | Sum | Carry-out |
| - | - | -------- | --- | --------- |
| 0 | 0 | 0        | 0   | 0         |
| 0 | 0 | 1        | 1   | 0         |
| 0 | 1 | 0        | 1   | 0         |
| 0 | 1 | 1        | 0   | 1         |
| 1 | 0 | 0        | 1   | 0         |
| 1 | 0 | 1        | 0   | 1         |
| 1 | 1 | 0        | 0   | 1         |
| 1 | 1 | 1        | 1   | 1         |

For example:

```text
1 + 1 + 1 = 11₂
```

Therefore:

```text
Sum       = 1
Carry-out = 1
```

## Verilog Implementation

The design uses:

* Three 1-bit inputs
* Two 1-bit outputs
* XOR operations for the Sum
* AND and OR operations for the Carry-out
* Continuous assignments using `assign`

## Verification

The testbench `full_adder_tb.v` tests all **8 possible combinations** of the three input signals.

This provides complete input-space verification for the 1-bit Full Adder.

## Files

```text
03_full_adder/
├── full_adder.v
├── full_adder_tb.v
└── README.md
```

## Learning Outcome

This project extends the Half Adder by introducing a **Carry-in** input.

The Full Adder is a fundamental building block for larger binary arithmetic circuits. Multiple Full Adders can be connected together to create multi-bit binary adders.

