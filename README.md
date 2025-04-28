# Feedback Control Systems

This repository provides MATLAB scripts and examples for understanding and applying **Feedback Control System** concepts, including frequency analysis, system modeling, and optimal controller design.

---

## 📁 Repository Structure and Contents

| Folder | Script | Description |
|:------|:------|:-------------|
| **`FrequencyAnalysis/`** | `bodeexample.m` | Example of creating and analyzing a Bode plot for a given system. |
|  | `main_mapcomplex.m` | Main script for complex mapping in frequency domain. |
|  | `mapComplex.m` | Function for mapping complex values in analysis. |
|  | `mapComplexW.m` | Extended version of complex mapping for frequency analysis. |
| **`OptFinal/`** | `cost.m` | Cost function used for optimization-based controller design. |
|  | `main.m` | Main script for final optimization-based controller design task. |
| **`OptFinaltype2/`** | `cost.m` | Alternative cost function for Type 2 system optimization. |
|  | `main.m` | Main script for Type 2 system optimization. |
| **`nyquistdesigns/`** | `examples.m` | Examples of controller designs using Nyquist plots. |
|  | `plot_bode.m` | Helper function to plot Bode diagrams. |
| **`session1/`** | `MSD.m` | Mass-Spring-Damper system modeling and simulation. |
|  | `MSDEuler.m` | Simulation of Mass-Spring-Damper system using Euler integration. |
|  | `MSD_plots.m` | Scripts to visualize Mass-Spring-Damper system responses. |
| (root) | `finalproject.m` | Final project script tying together concepts of modeling, control design, and analysis. |

---

## 📚 Topics Covered

- Frequency-domain analysis (Bode plots, Nyquist plots)
- Mass-Spring-Damper system modeling and simulation
- Optimal control design using cost minimization
- Complex mapping techniques for stability and response analysis

---

## 🛠 Requirements

- **MATLAB** R2020b or newer
- Recommended Toolboxes:
  - Control System Toolbox
  - Optimization Toolbox (for final project scripts)

---

## 🚀 How to Use

1. **Clone the repository**:
   ```bash
   git clone https://github.com/YOUR_USERNAME/FeedbackControlSystems.git
   ```
2. **Add to MATLAB path**:
   ```matlab
   addpath(genpath('path_to_cloned_folder'))
   ```
3. **Run examples**, for instance:
   ```matlab
   cd FrequencyAnalysis
   run('bodeexample.m')
   ```

---

## ✨ Highlights

- Study the behavior of systems in the frequency domain.
- Practice optimal controller design via cost function optimization.
- Simulate and visualize classical mechanical systems like Mass-Spring-Damper models.

---

## 📜 License

This project is licensed under the MIT License — see the [LICENSE](LICENSE) file for details (if available).

---

## 👨‍💻 Author

Developed by Adrian Guel.
