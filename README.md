# Sliding Mode Control Simulator  
  
This project involves a graphical interface in Matlab to simulate a sliding mode controller on a double integrator system.
The simulator allows to change and tune various parameters as shown in the following image.

![gui](https://user-images.githubusercontent.com/41896432/49181804-a6729980-f358-11e8-9e3e-9ab126c03647.PNG)

Two different type of inputs are available: step signal and sinusoidal signals.

![step_nopsi](https://user-images.githubusercontent.com/41896432/49181808-a70b3000-f358-11e8-9efa-07fba953b06f.png)

![sin_nopsi](https://user-images.githubusercontent.com/41896432/49181807-a70b3000-f358-11e8-9744-04736abb2780.png)

The simulation is actually executed by an underlying simulink model.

![simulink](https://user-images.githubusercontent.com/41896432/49181805-a6729980-f358-11e8-91f5-c656b9f7dd4a.PNG)

Finally a technique called "Boundary Layer" is included to limit chattering, as explained in this paper: Using a boundary layer technique to reduce chatter in sliding mode controllers, J. Y. Hung, R. M. Nelms

On the left the smoothing effect of the boundary layer can be compared with the plots on the right where it is not used.
![zoomed_psivsnopsi](https://user-images.githubusercontent.com/41896432/49181878-e89bdb00-f358-11e8-9f85-69601e41293c.PNG)


## INSTRUCTIONS:  
keep files organized as downloaded  
run "main_gui1.m"  
 
## MATLAB FILES:  
gui1.m: script containing the gui  
main_gui1.m: run this  
  
## SIMULINK FILES:  
models/smc_2: with boundary  
models/smc_3: without boundary  
