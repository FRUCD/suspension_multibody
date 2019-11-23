classdef F_CH_parameters_Cl < CH_parameters_Cl
    %% F_CH_PARAMETERS_CL Front Chassis Parameters Class
    %   stores design parameters for the chassis (front)
    
    %% design parameters
    properties
        RK_mount_X (1,1) double {is_design_parameter} = 0; % (in)
        RK_mount_Z (1,1) double {is_design_parameter} = 0; % (in)
    end
end