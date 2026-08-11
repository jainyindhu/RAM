RAM Design Using Verilog HDL

📌 Project Overview

This project implements an 8 × 8 Random Access Memory (RAM) using Verilog HDL.

The RAM contains 8 memory locations, with each location capable of storing 8 bits of data.

The design supports both write and read operations.

🎯 Objectives

- Design an 8 × 8 RAM using Verilog HDL.
- Understand the working principle of RAM.
- Implement memory write operation.
- Implement memory read operation.
- Verify the RAM using a Verilog testbench.
- Perform waveform simulation using GTKWave.

🛠️ Technologies Used

- Verilog HDL
- Icarus Verilog
- GTKWave
- Digital Electronics
- GitHub

📂 Project Structure

ram-verilog/
│
├── README.md
├── ram.v
├── ram_tb.v
└── simulation/
    └── ram_waveform.png

⚙️ RAM Specifications

Parameter| Value
Memory Type| RAM
Number of Locations| 8
Data Width| 8 bits
Address Width| 3 bits
Total Memory| 64 bits
Write Operation| Synchronous
Read Operation| Asynchronous

🔌 Input and Output Signals

Signal| Width| Description
"clk"| 1 bit| Clock signal
"we"| 1 bit| Write Enable
"address"| 3 bits| Memory address
"data_in"| 8 bits| Input data
"data_out"| 8 bits| Output data

⚙️ Working Principle

The RAM uses an array of eight 8-bit memory locations.

RAM[0] → 8-bit data
RAM[1] → 8-bit data
RAM[2] → 8-bit data
RAM[3] → 8-bit data
RAM[4] → 8-bit data
RAM[5] → 8-bit data
RAM[6] → 8-bit data
RAM[7] → 8-bit data

Write Operation

When "WE = 1", the input data is stored at the selected address on the rising edge of the clock.

Example:

WE      = 1
Address = 010
Data_In = 30H

The value "30H" is stored in memory location "010".

Read Operation

When "WE = 0", the data stored at the selected address is available at "data_out".

Example:

Address  = 010
Data_Out = 30H

🧪 Testbench

The testbench performs the following operations:

1. Generates a clock signal.
2. Enables write operation.
3. Writes data into all eight memory locations.
4. Disables write operation.
5. Reads data from all eight locations.
6. Displays the results in the console.
7. Generates a VCD waveform file.

📝 Memory Contents

After the write operation:

Address| Stored Data
000| 10H
001| 20H
010| 30H
011| 40H
100| 50H
101| 60H
110| 70H
111| 80H

▶️ Simulation Using Icarus Verilog

Step 1: Compile

iverilog -o ram_sim ram.v ram_tb.v

Step 2: Run Simulation

vvp ram_sim

Step 3: Open Waveform

gtkwave ram.vcd

Add the following signals:

clk
we
address
data_in
data_out

📊 Expected Result

The RAM should correctly store and retrieve the following values:

Address = 000 → Data = 10H
Address = 001 → Data = 20H
Address = 010 → Data = 30H
Address = 011 → Data = 40H
Address = 100 → Data = 50H
Address = 101 → Data = 60H
Address = 110 → Data = 70H
Address = 111 → Data = 80H

The waveform should show the write enable signal, address, input data, and output data changing during the simulation.

🌐 Applications

RAM is widely used in:

- Computers
- Microcontrollers
- Microprocessors
- Embedded systems
- FPGA designs
- Cache memory
- Digital signal processing systems
- Data buffering

🔄 RAM vs ROM

Feature| RAM| ROM
Full Form| Random Access Memory| Read-Only Memory
Data| Can be written and read| Mainly read
Write Operation| Supported| Normally not supported during operation
Data Storage| Temporary/working storage| Permanent/predefined storage
Example| Data buffer| Firmware storage

✅ Conclusion

An 8 × 8 RAM was successfully designed using Verilog HDL. The design supports synchronous write and asynchronous read operations. The testbench verifies that data can be correctly written to and read from all eight memory locations.

👩‍💻 Author

JAINY INDHU

Electronics and Communication Engineering Student