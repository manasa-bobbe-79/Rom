# 16×8 ROM Using Verilog HDL

## 📌 Project Overview

This project implements a **16×8 Read-Only Memory (ROM)** using Verilog HDL.

ROM is a memory device used to store data that can be read during operation. In this project, the ROM contains **16 memory locations**, with each location storing **8 bits of data**.

### Project Specifications

* Memory type: ROM
* Number of locations: 16
* Data width: 8 bits
* Address width: 4 bits
* Design language: Verilog HDL
* Design type: Combinational memory
* Testbench: Self-checking
* Simulation tools: Icarus Verilog and GTKWave

## 🎯 Objectives

The objectives of this project are:

* Understand the basic operation of ROM.
* Design a 16×8 ROM using Verilog HDL.
* Store predefined data in memory locations.
* Read data using a 4-bit address.
* Create a self-checking testbench.
* Verify all ROM addresses.
* Generate and analyze simulation waveforms.

## 🔷 What is ROM?

**ROM stands for Read-Only Memory.**

ROM stores predefined data that can be read using an address.

In this project:

```text
16 memory locations × 8 bits
```

The 4-bit address can select one of 16 locations.

```text
2^4 = 16 locations
```

Each location contains an 8-bit value.

## 🔌 Block Diagram

```text
             ┌─────────────────────┐
             │                     │
 Address ───►│                     │
  [3:0]      │       16 × 8 ROM    │──────► Data [7:0]
             │                     │
             │                     │
             └─────────────────────┘
```

## 🔢 Memory Organization

| Address | Data |
| ------: | ---- |
|       0 | `A5` |
|       1 | `3C` |
|       2 | `7E` |
|       3 | `19` |
|       4 | `D2` |
|       5 | `4B` |
|       6 | `F0` |
|       7 | `86` |
|       8 | `25` |
|       9 | `B7` |
|       A | `5D` |
|       B | `E1` |
|       C | `38` |
|       D | `92` |
|       E | `6F` |
|       F | `CA` |

The values are predefined in the Verilog ROM.

## 💻 Inputs and Outputs

| Signal | Direction |  Width | Description    |
| ------ | --------- | -----: | -------------- |
| `addr` | Input     | 4 bits | Memory address |
| `data` | Output    | 8 bits | ROM data       |

## 🧠 Working Principle

The 4-bit address selects one of the 16 memory locations.

For example:

```text
Address = 0000 → Data = A5
Address = 0001 → Data = 3C
Address = 0010 → Data = 7E
Address = 0011 → Data = 19
```

The ROM data does not change unless the address changes.

## 🧪 Testbench

The testbench is self-checking.

It:

1. Applies every address from `0` to `15`.
2. Determines the expected ROM data.
3. Compares expected data with actual output.
4. Displays `PASS` or `FAIL`.
5. Counts any errors.
6. Generates a VCD waveform file.

All 16 ROM locations are tested.

## ▶️ Simulation Using Icarus Verilog

Compile the design and testbench:

```bash
iverilog -o rom_sim rom.v rom_tb.v
```

Run the simulation:

```bash
vvp rom_sim
```

A waveform file will be generated:

```text
rom.vcd
```

Open the waveform using GTKWave:

```bash
gtkwave rom.vcd
```

## 📊 Expected Simulation

Example:

```text
Address = 0
Expected = A5
Actual   = A5
PASS

Address = 1
Expected = 3C
Actual   = 3C
PASS

Address = 2
Expected = 7E
Actual   = 7E
PASS

...

Address = F
Expected = CA
Actual   = CA
PASS
```

## 📁 Project Files

```text
16x8-ROM-Verilog/
│
├── README.md
├── rom.v
├── rom_tb.v
│
└── simulation/
    ├── simulation_results.txt
    └── waveform_description.txt
```

## 🛠️ Tools Used

* Verilog HDL
* Icarus Verilog
* GTKWave
* GitHub

## 📚 Applications of ROM

ROM is commonly used in:

* Microprocessor systems
* Embedded systems
* Firmware storage
* Lookup tables
* Character generators
* Control systems
* Digital electronics

## 🎓 Learning Outcomes

After completing this project, you will understand:

* ROM organization
* Address decoding
* Memory arrays in Verilog
* Combinational memory modeling
* Verilog `case` statements
* Self-checking testbenches
* Simulation and waveform analysis
* GitHub project organization

## ✅ Conclusion

A 16×8 ROM was successfully designed using Verilog HDL. The self-checking testbench verifies all 16 memory addresses and confirms that the correct predefined data is returned for each address.
