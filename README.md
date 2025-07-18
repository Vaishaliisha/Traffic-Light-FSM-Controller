# 🚦 Traffic Light FSM Controller

A Verilog-based Finite State Machine (FSM) model to simulate a **traffic light controller** for a 3-way intersection 🚗🚕🚙

---

## 🧠 What This Project Does

This project simulates how traffic lights work at an intersection using a **Moore-type FSM**. The system cycles through:
- Green → Yellow → Red
- Ensures smooth, fair traffic control logic using state transitions.

---

## ⚙️ Tech Used

- **Language**: Verilog HDL  
- **Simulation Tool**: ModelSim / Icarus Verilog + GTKWave  
- **Design Method**: Finite State Machine (FSM - Moore)

---

## 📁 Project Structure
├── src/
│ └── traffic_light.v # Veri
log module
├── testbench/
│ └── traffic_light_tb.v # Testbench file
├── sim/
│ └── waveform.png # Simulation output screenshot


---

## 🌀 FSM State Diagram

🟢 Green → 🟡 Yellow → 🔴 Red → back to Green  
Each state has a fixed duration using a counter-based clock delay (for simulation).

> ✅ Bonus: This teaches you how to build timing logic and state control in Verilog!


**📚 What I Learned**


How FSMs control real-world systems like traffic lights


Moore Machine logic in Verilog


Writing and debugging testbenches


Visualizing outputs using waveforms

**🌱 Future Plans**


Add pedestrian crosswalk control 🚶‍♂️


Parameterize the time durations ⏳


Port to FPGA board and see real-time output on LEDs 🔴🟡🟢

**##👩‍💻 Author**


Vaishali Lariya


Electronics Enthusiast | Embedded Systems Learner


“Small projects. Big learning.”
