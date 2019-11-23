classdef R_UA_parameters_Cl < UA_parameters_Cl
    %% R_UA_PARAMETERS_CL Rear Upper Arm Parameters Class
    %   stores design parameters for the upper arms (rear)
    
    %% design parameters
    properties
        PR_pickup_delta_Y (1,1) double {is_design_parameter} = 0; % (in)
        PR_pickup_delta_Z (1,1) double {is_design_parameter} = 0; % (in)
    end
end