# 🧠 16-bit Single-Port Synchronous RAM | Verilog + ASIC Design Flow

This project implements a **16-bit single-port synchronous RAM** using Verilog HDL and completes the full **ASIC design flow** including RTL design, simulation, synthesis, and physical design using Cadence tools (NCLaunch, Genus, Innovus).

---

## 👥 Team Members

- Diya Revankar (02FE22BEC026)  
- Shraman Kanthi (02FE22BEC092)  
- Vaishnavi Sanjay Kadolkar (02FE22BEC115)  

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

