classdef RA_parameters_Cl
    %% RA_PARAMETERS_CL Rocker Arm Parameters Class
    %   stores design parameters for the rocker arms (generic)
    
    %% design parameters
    properties
        SH_radius (1,1) double {is_design_parameter} = 0; % (in)
        PR_radius (1,1) double {is_design_parameter} = 0; % (in)
        angle (1,1) double {is_design_parameter} = 0; % (deg)
    end
end