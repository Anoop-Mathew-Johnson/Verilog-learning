# Basic Logic Gates

## Overview

This project implements the fundamental digital logic gates using Verilog HDL.

The purpose of this exercise is to understand how Boolean logic can be represented as synthesizable hardware using Verilog.

## Gates Implemented

| Gate | Boolean Expression |
| ---- | ------------------ |
| AND  | `A & B`            |
| OR   | `A \| B`           |
| NOT  | `~A`               |
| XOR  | `A ^ B`            |
| NAND | `~(A & B)`         |
| NOR  | `~(A \| B)`        |
| XNOR | `~(A ^ B)`         |

## Inputs

The module uses two binary inputs:

* `a`
* `b`

The NOT gate operates on input `a`.

## Outputs

The module produces seven outputs:

* `and_out`
* `or_out`
* `not_a`
* `xor_out`
* `nand_out`
* `nor_out`
* `xnor_out`

## Verilog Concepts Used

This project introduced the following Verilog concepts:

* `module`
* Input and output declarations
* `wire`
* Continuous assignment using `assign`
* Bitwise operators
* Boolean logic

## Logic Behaviour

For two inputs `A` and `B`:

| A | B | AND | OR | XOR | NAND | NOR | XNOR |
| - | - | --- | -- | --- | ---- | --- | ---- |
| 0 | 0 | 0   | 0  | 0   | 1    | 1   | 1    |
| 0 | 1 | 0   | 1  | 1   | 1    | 0   | 0    |
| 1 | 0 | 0   | 1  | 1   | 1    | 0   | 0    |
| 1 | 1 | 1   | 1  | 0   | 0    | 0   | 1    |

## Learning Outcome

This project establishes the foundation for progressing from individual logic gates toward larger combinational and sequential digital systems.
