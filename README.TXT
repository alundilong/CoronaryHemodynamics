Please see the following files that are inside the "docs" folder. They are:
 - COPYING.TXT - the GNU Public license (GPL)
 - LICENSE.TXT - the blueCFD-Core License and other information

 On CoronaryHemodynamics:

 CoronaryHemodynamics is a comprehensive simulation package developed on the OpenFOAM platform (blueCFD-core),
 designed specifically for coronary artery hemodynamics analysis. The package integrates a complete suite of 
 tools for simulation preparation, including automatic case setup, boundary condition configuration, computational 
 domain meshing, and a CFD solver. It fully supports MPI parallelization, leveraging the native parallel computing 
 capabilities of OpenFOAM. The package implements Windkessel boundary conditions at the aorta outlet and all 
 coronary vessel outlets, with outlet parameters automatically derived from physiological metrics such as heart 
 rate, systolic blood pressure, and myocardial volume. At the aorta inlet, a parabolic flow profile is applied 
 based on the input flow rate waveform. CoronaryHemodynamics supports both steady-state and transient solvers, 
 enabling the simulation of various flow conditions. Flow rate and pressure data are recorded at all boundaries 
 during the simulation, and outputs such as wall shear stress, pressure fields, and velocity fields are automatically 
 stored for detailed post-processing and analysis. By automating critical aspects of the simulation pipeline 
 and integrating physiological boundary conditions, CoronaryHemodynamics offers an efficient and robust framework for 
 studying coronary hemodynamics in both research and clinical applications
