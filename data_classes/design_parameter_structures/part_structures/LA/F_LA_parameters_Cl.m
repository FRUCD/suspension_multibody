classdef F_LA_parameters_Cl < LA_parameters_Cl
    %% F_LA_PARAMETERS_CL Front Lower Arm Class
    %   stores design parameters for the lower arms (front)
    
    %% design parameters
    properties
        PR_pickup_delta_Y (1,1) double {is_design_parameter} = 0; % (in)
        PR_pickup_delta_Z (1,1) double {is_design_parameter} = 0; % (in)
    end
end