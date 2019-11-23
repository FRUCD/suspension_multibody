classdef general_SY_parameters_Cl < matlab.mixin.Copyable
    %% GENERAL_SYSTEM_PARAMETERS_CL General Sytem Parameters Class
    %   stores system design parameters that apply to both ends (generic).
    
    %% design parameters
    properties
        gravity (1,1) double {is_design_parameter} =  9.80665; % (m/s^2)
        wheelbase (1,1) double {is_design_parameter}; % (m)
    end
end