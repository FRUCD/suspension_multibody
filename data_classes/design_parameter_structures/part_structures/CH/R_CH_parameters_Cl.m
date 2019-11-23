classdef R_CH_parameters_Cl < CH_parameters_Cl
    %% R_CH_PARAMETERS_CL Rear Chassis Parameters Class
    %   stores design parameters for the chassis (rear)
    
    %% design parameters
    properties
        TL_pickup_X (1,1) double {is_design_parameter} = 0; % (in)
        TL_pickup_Y (1,1) double {is_design_parameter} = 0; % (in)
        TL_pickup_Z (1,1) double {is_design_parameter} = 0; % (in)
    end
end