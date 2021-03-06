classdef UA_parameters_Cl
    %% UA_PARAMETERS_CL Upper Arm Parameters Class
    %   stores design parameters for the upper arms (generic)
    
    %% design parameters
    properties
        length (1,1) double {is_design_parameter} = 0; % (in)
        base_length (1,1) double {is_design_parameter} = 0; % (in)
        apex_delta_X (1,1) double {is_design_parameter} = 0; % (in)
        F_member_length (1,1) double {is_design_parameter} = 0; % (in)
        R_member_length (1,1) double {is_design_parameter} = 0; % (in)
        tube_radius (1,1) double {is_design_parameter} = 0; % (in)
        tube_wall_thickness (1,1) double {is_design_parameter} = 0; % (in)
    end
end