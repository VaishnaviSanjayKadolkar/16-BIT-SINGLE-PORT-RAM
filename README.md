# 🧠 16-bit Single-Port Synchronous RAM | Verilog + ASIC Design Flow

This project implements a **16-bit single-port synchronous RAM** using Verilog HDL and completes the full **ASIC design flow** including RTL design, simulation, synthesis, and physical design using Cadence tools (NCLaunch, Genus, Innovus).

---


**Vaishnavi Sanjay Kadolkar (02FE22BEC115)**  

**Mentor:** Prof. Ashwini Desai  
**Department:** Electronics and Communication Engineering  
KLE Technological University — Academic Year 2025–26

---

## 🎯 Objectives

- Design a 16-bit Single-Port RAM using Verilog HDL.  
- Implement **synchronous read/write** using clock and write-enable signals.  
- Perform functional simulation using **Cadence NCLaunch**.  
- Synthesize the design using **Cadence Genus**.  
- Implement physical design (floorplanning to routing) using **Cadence Innovus**.  
- Analyze **setup and hold timing** and verify memory performance.

---

## 💡 Problem Statement

To design and implement a **16-bit single-port synchronous RAM** supporting clock-driven read and write operations, ensuring reliable data storage for digital and embedded systems.

---

## 🧩 Architecture Overview

The memory module includes:

- **Memory Array:** 256 × 16-bit data storage  
- **Address Decoder:** Selects memory word based on 8-bit address  
- **Control Logic:** Determines read/write based on `we`  
- **Clock Synchronization:** All operations occur on rising edge of clock  

---

## 📐 Methodology

### 1️⃣ RTL Design  
- Parameterized Verilog architecture  
- Synchronous read/write logic  
- Glitch-free operation ensured via clocked processes  

### 2️⃣ Simulation (Cadence NCLaunch)  
- Testbench verified multiple read/write operations  
- Waveforms checked for correct memory behavior  

### 3️⃣ Synthesis (Cadence Genus)  
- Mapped to standard cell libraries  
- Generated area & power reports  
- Exported netlist for place-and-route  

### 4️⃣ Physical Design (Innovus)  
- Floorplanning → Placement → CTS → Routing  
- Performed setup/hold time analysis  
- Generated final GDSII layout  

---

## 🔧 Verilog Files

Below are the main HDL source files used in the design:

- [ram_sp_16bit.v](ram.v) — 16-bit Single Port Synchronous RAM  
- [tb_ram_sp_16bit.v](tb.v) — Testbench for functional verification



---

## 📊 Simulation Results
(Screenshots can be placed inside /simulation)

- Successful synchronous read/write cycle verification  
- Correct behavior for multiple addresses  
- Immediate read-after-write validation  

---

## 🏗️ Synthesis Results (Genus)

### ✔️ Area Report  
- Total cells: **7493**  
- Total area: **102515.293 units**

### ✔️ Power  
- Leakage: **617116.565 nW**  
- Internal dynamic power: **29345171.628 nW**

### ✔️ Gate Summary  
- 4096 sequential cells (DFFs)  
- Combinational logic: NAND, NOR, AOI, OAI, buffers, inverters  

---

## 🧱 Physical Design (Innovus)

Includes:  
- Floorplan  
- Placement  
- Clock Tree Synthesis (CTS)  
- Routing  
- Final layout snapshot  
- Setup and hold time analysis  

---

## 🚀 Advantages

- Fully synchronous memory design ensures stable timing  
- Simple architecture suitable for small to medium embedded memory  
- Easily scalable to wider word sizes and deeper memory  
- Synthesizable and suitable for ASIC/FPGA flows  

---

## 🎯 Applications

- Microcontroller RAM blocks  
- Processor cache/buffer memory  
- DSP temporary storage  
- Embedded system scratchpad memory  
- FPGA-based RAM modules  

---

## ✅ Conclusion

This project successfully demonstrates the complete design and implementation of a **16-bit single-port synchronous RAM** using Verilog. Through simulation, synthesis, and physical implementation using Cadence EDA tools, the design was validated for functional accuracy, timing integrity, and physical feasibility. The project builds strong understanding in ASIC memory design, synchronous timing, and EDA workflows.

---

All required files with result analysis are added in the [16bit Sinle port RAM.zip](https://github.com/VaishnaviSanjayKadolkar/16-BIT-SINGLE-PORT-RAM/blob/main/16BIT%20Single%20port%20RAM.zip)
