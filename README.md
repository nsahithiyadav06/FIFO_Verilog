# FIFO Verilog Design

## 📌 Project Overview

This project implements a **First-In First-Out (FIFO) memory** using Verilog HDL.

A FIFO stores data in the order it is received. The **first data written into the FIFO is the first data read out**.

## ⚙️ Features

* Parameterized data width and FIFO depth
* Write and read operations
* `full` flag to indicate that the FIFO is full
* `empty` flag to indicate that the FIFO is empty
* Write and read pointers
* Counter to track the number of stored elements
* Synchronous clock-based operation
* Reset functionality

## 📂 Files

| File                | Description              |
| ------------------- | ------------------------ |
| `FIFO.v`            | Main FIFO Verilog design |
| `Fifo_tb.v`         | Verilog testbench        |
| `fifo.vcd`          | Simulation waveform dump |
| `Fifo_waveform.png` | Simulation waveform      |
| `fifo.sim`          | Simulation-related file  |

## 🧪 Simulation

The FIFO design was verified using a Verilog testbench.

The simulation checks:

* Data write operation
* Data read operation
* FIFO empty condition
* FIFO full condition
* Correct FIFO ordering

The generated waveform is provided as `Fifo_waveform.png`.

## 🛠️ Tools Used

* Verilog HDL
* Icarus Verilog
* GTKWave
* GitHub

## 🔄 FIFO Operation

### Write

When `wr_en` is enabled and the FIFO is not full, input data is stored in the FIFO memory, and the write pointer is incremented.

### Read

When `rd_en` is enabled and the FIFO is not empty, data is read from the FIFO memory, and the read pointer is incremented.

### Full and Empty

* `full = 1` → FIFO cannot accept more data.
* `empty = 1` → FIFO has no data available to read.

## 🎯 Learning Outcomes

Through this project, the following concepts were practiced:

* Verilog HDL coding
* Memory arrays
* Read and write pointers
* Counters
* FIFO architecture
* Testbench development
* RTL simulation
* Waveform analysis

## 👩‍💻 Author

**Sahithi Yadav**

B.Tech – Electronics & Communication Engineering
