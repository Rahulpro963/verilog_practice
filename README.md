# verilog_practice

This repository contains my complete hands-on journey into Verilog HDL — from beginner to advanced level.  
All code is written, simulated, and tested using tools like **Icarus Verilog**, **GTKWave**, **Yosys**, and **EDAPlayground**.

---

## 🚀 How to Run Simulations Locally

1. Install tools:
   - [Icarus Verilog](http://iverilog.icarus.com/)
   - [GTKWave](http://gtkwave.sourceforge.net/)
   - (Optional) [Yosys](https://yosyshq.net/yosys/)

2. Compile and simulate:
   ```bash
   iverilog -o and_sim and_gate.v and_gate_test.v
   vvp and_sim
````

3. View waveform:

   ```bash
   gtkwave and_wave.vcd
   ```

---

## 🌐 Online Simulation

You can also run and visualize this project using [EDAPlayground](https://www.edaplayground.com/):

* Select **Icarus Verilog** as the simulator
* Use GTKWave viewer
* Paste your code in the left (testbench) and right (design) panes

---

## 📌 Goals

* ✅ From logic gates → FSMs → RTL design → Synthesizable modules
* ✅ Include testbenches, waveforms, and synthesis outputs
* ✅ Organized and beginner-friendly

---

## 👨‍💻 Author

* **Name**: Rahul ([@Rahulpro963](https://github.com/Rahulpro963))
* **Focus**: VLSI, digital logic, and hardware design

---

## 📜 License

This repo is for learning purposes. You're free to fork, use, or contribute!

```
