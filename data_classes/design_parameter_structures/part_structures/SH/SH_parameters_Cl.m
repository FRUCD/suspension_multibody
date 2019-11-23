classdef SH_parameters_Cl
    %% SH_PARAMETERS_CL Shock Parameters Class
    %   stores design parameters for the shocks (generic)
    
    %% design parameters
    properties
        rest_length  (1,1) double {is_design_parameter} = 0; % (m)
        min_length  (1,1) double {is_design_parameter} = 0; % (m)
        max_length  (1,1) double {is_design_parameter} = 0; % (m)
        spring_rate  (1,1) double {is_design_parameter} = 0; % (N/m)
        damping_rate (1,1) double {is_design_parameter} = 0; % (N/(m/s))
        spring_rest_length (1,1) double {is_design_parameter} = 0; % (m)
        preload (1,1) double {is_design_parameter} = 0; % (m)
    end
end