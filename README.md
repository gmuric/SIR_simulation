# SIR_simulation [MATLAB]
## Susceptible Infected Recovered (SIR) model simulation on a network
The code takes any network in form of an adjacency matrix and performs a simulation of the SIR infectious model. The user can define the starting node(s), transmission rate, recovery rate... It is an agent-based simulation and user can observe the behavior of the system in each time step.

The main file is sir_simulation.m and it requires sir_infection_step.m and sir_recovery_step.m. There is an example file example.m which loads the example network test_network.txt
