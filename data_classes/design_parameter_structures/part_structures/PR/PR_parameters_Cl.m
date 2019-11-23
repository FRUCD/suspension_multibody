classdef PR_parameters_Cl
    %% PR_PARAMETERS_CL Pushrod Parameters Class
    %   stores design parameters for the pushrods (generic)
    
    %% design parameters
    properties
        length (1,1) double {is_design_parameter} = 0; % (in)
        tube_radius (1,1) double {is_design_parameter} = 0; % (in)
        tube_wall_thickness (1,1) double {is_design_parameter} = 0; % (in)
    end
end