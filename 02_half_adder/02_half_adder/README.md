# Half Adder

## Overview

This project implements a **Half Adder** using Verilog HDL.

A Half Adder is a combinational digital circuit that adds two 1-bit binary numbers and produces two outputs:

* **Sum**
* **Carry**

## Logic Equations

The Half Adder is implemented using two basic logic operations:

```text
Sum   = A XOR B
Carry = A AND B
```

## Truth Table

| A | B | Sum | Carry |
| - | - | --- | ----- |
| 0 | 0 | 0   | 0     |
| 0 | 1 | 1   | 0     |
| 1 | 0 | 1   | 0     |
| 1 | 1 | 0   | 1     |

The final case demonstrates binary addition:

```text
1 + 1 = 10₂
```

Therefore:

```text
Sum   = 0
Carry = 1
```

## Verilog Implementation

The design uses:

* `input wire` for the two input bits
* `output wire` for Sum and Carry
* XOR (`^`) to generate the Sum
* AND (`&`) to generate the Carry
* Continuous assignments using `assign`

## Verification

The testbench `half_adder_tb.v` tests all four possible combinations of the two input signals.

Expected outputs:

```text
A B | Sum Carry
--------------
0 0 |  0    0
0 1 |  1    0
1 0 |  1    0
1 1 |  0    1
```

## Files

```text
02_half_adder/
├── half_adder.v
├── half_adder_tb.v
└── README.md
```

## Learning Outcome

This project demonstrates how individual logic gates can be combined to create a functional arithmetic circuit.

The Half Adder provides the foundation for the next stage: the **Full Adder**, which extends binary addition by including a carry input.

