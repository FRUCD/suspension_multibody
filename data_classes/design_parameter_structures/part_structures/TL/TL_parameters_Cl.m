classdef TL_parameters_Cl
    %% TL_PARAMETERS_CL Toe Link Parameters Class
    %   stores design parameters for the toe/steering links (generic)
    
    %% design parameters
    properties
        length (1,1) double {is_design_parameter} = 0; % (in)
        tube_radius (1,1) double {is_design_parameter} = 0; % (in)
        tube_wall_thickness (1,1) double {is_design_parameter} = 0; % (in)
    end
end