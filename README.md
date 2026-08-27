# Digital Logic Revision & Interview Practice

A practical Digital Logic revision project focused on solving logic design problems by hand using logic gates, then implementing and verifying the same ideas using Verilog.

## Design Approach

The main goal is to practice **hardware thinking before Verilog**.

For each problem, I first worked out the solution manually using logic gates, truth tables, Boolean logic, MUXes, and decoders.

After completing the handwritten design, I implemented the circuit in Verilog and used a testbench to verify that the original logic design was correct.

### Workflow

```text
Handwritten Design
        ↓
Truth Table / Boolean Logic
        ↓
Logic Gates
        ↓
Verilog RTL
        ↓
Testbench
        ↓
Simulation & Verification
```

## Topics Covered

The handwritten revision includes practical exercises such as:

- Logic functions using NAND gates
- Logic functions using NOR gates
- Logic functions using MUXes
- Half Adder
- Half Adder using a Decoder
- Full Adder
- Full Adder using a Decoder
- XOR / XNOR logic
- Fundamental combinational logic exercises

## Project Structure

```text
Digital-Logic-Revision/
│
├── README.md
│
├── Handwritten/
│   └── Logic_design_Interview.pdf
│
├── Verilog/
│   └── logic_revision.v
│
└── Testbench/
    └── logic_revision_tb.v
```

## Handwritten Design

The `Handwritten` folder contains the original logic designs and solutions.

These designs were completed manually before writing the Verilog code.

The purpose is to understand the hardware implementation first rather than depend on Verilog to find the solution.

## Verilog Implementation

The `Verilog` folder contains the RTL implementation of the circuits.

The Verilog code represents the same logic that was designed manually.

## Testbench & Verification

The `Testbench` folder contains the Verilog testbench used to verify the designs.

The testbench applies different input combinations and checks the outputs against the expected results.

The simulation is used to confirm that the handwritten gate-level reasoning was implemented correctly in Verilog.

## Interview Practice

This repository can also be used as a revision resource for Digital Logic interviews and technical assessments.

Important concepts practiced include:

- Logic gates
- Boolean expressions
- Truth tables
- MUX-based implementations
- Decoder-based implementations
- Adders
- Combinational logic
- Verilog RTL
- Testbench development
- Simulation and verification

## Tools

- Verilog
- QuestaSim / ModelSim
- Digital Logic Design
- FPGA / RTL Practice

## Purpose

The goal of this repository is to build a strong connection between **Digital Logic concepts and RTL implementation**.

Instead of starting directly with Verilog, each design is first understood at the hardware level and then verified through simulation.
