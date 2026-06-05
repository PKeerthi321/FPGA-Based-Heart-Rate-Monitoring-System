# FPGA-Based Heart Rate Monitoring System

## Overview

The FPGA-Based Heart Rate Monitoring System is a real-time biomedical monitoring project that measures heart rate using a pulse sensor and processes the signal using FPGA hardware logic.

The system is implemented on the Digilent Atlys FPGA Development Board featuring the Xilinx Spartan-6 XC6SLX45 FPGA. Heartbeat signals are acquired through a pulse sensor and converted into digital pulses using an ESP32. The FPGA detects pulse edges, counts heartbeats, calculates Beats Per Minute (BPM), and generates alerts when abnormal heart rates are detected.

## Features

- Real-time heart rate monitoring
- FPGA-based hardware processing
- BPM calculation
- Abnormal heart rate detection
- Alert generation
- Verilog HDL implementation
- Low latency hardware execution

## Hardware Requirements

### Processing Hardware
- Digilent Atlys FPGA Board
- Spartan-6 XC6SLX45 FPGA

### Sensors
- HW-832 Pulse Sensor

### Supporting Components
- ESP32 Development Board
- Breadboard
- Jumper Wires
- USB Cable

## Software Tools

- Xilinx ISE Design Suite 14.7
- Xilinx iMPACT
- Verilog HDL
- Arduino IDE

## System Architecture

Pulse Sensor
↓
ESP32
↓
FPGA (Spartan-6)
↓
BPM Calculation
↓
Alert System

## Inputs

| Signal | Description |
|----------|------------|
| clk | FPGA Clock |
| reset | Reset Signal |
| pulse_in | Pulse Input |

## Outputs

| Signal | Description |
|----------|------------|
| bpm[7:0] | Heart Rate Value |
| alert | Alert Output |

## BPM Calculation

BPM = Beat Count × 60

## Alert Conditions

Alert is activated when:

- BPM < 50
- BPM > 110

## FPGA Design Flow

1. RTL Design
2. Verilog Coding
3. Synthesis
4. Mapping
5. Place and Route
6. Bitstream Generation
7. FPGA Programming

## Applications

- Healthcare Monitoring
- Wearable Devices
- Biomedical Systems
- Remote Patient Monitoring

## Team Members

- P. Keerthi
## Mentor

Dr. D. Sony
Assistant Professor
Department of Electronics and Communication Engineering
CBIT

## Achievement

🥉 Third Prize Winner – ChipAI NewGen Hackathon
BVRIT Women's College, Hyderabad
