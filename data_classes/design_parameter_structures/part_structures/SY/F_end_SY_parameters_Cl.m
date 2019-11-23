classdef F_end_SY_parameters_Cl < end_SY_parameters_Cl
    %% F_END_SY_PARAMETERS_CL Front End System Parameters Class
    %   stores system level design parameters for an end of the car
    %   (front) 
    
    %% rack travel
    properties
        rack_travel (1,1) double {is_design_parameter} = 0; % (m)
    end
end