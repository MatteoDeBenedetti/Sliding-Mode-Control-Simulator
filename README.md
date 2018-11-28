# Sliding Mode Control Simulator  
  
This project involves a graphical interface in Matlab to simulate a sliding mode controller on a double integrator system.
The simulator allows to change and tune various parameters as shown in the following image.

img gui

Two different type of inputs are available: step signal and sinusoidal signals.

img step no psi

img sin no psi

The simulation is actually executed by an underlying simulink model.

simulink img

Finally a technique called "Boundary Layer" is included to limit chattering, as explained in this paper: Using a boundary layer technique to reduce chatter in sliding mode controllers, J. Y. Hung, R. M. Nelms

img psinopsizoomed

## INSTRUCTIONS:  
keep files organized as downloaded  
run "main_gui1.m"  
 
## MATLAB FILES:  
gui1.m: script containing the gui  
main_gui1.m: run this  
  
## SIMULINK FILES:  
models/smc_2: with boundary  
models/smc_3: without boundary  
