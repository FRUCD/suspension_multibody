classdef CH_parameters_Cl
    %% CH_PARAMETERS_CL Chassis Parameters Class
    %   stores design parameters for the chassis (generic)
    
    %% design parameters
    properties
        UA_F_pickup_X (1,1) double {is_design_parameter} = 0; % (in)
        UA_R_pickup_X (1,1) double {is_design_parameter} = 0; % (in)
        UA_pickups_Y (1,1) double {is_design_parameter} = 0; % (in)
        UA_pickups_Z (1,1) double {is_design_parameter} = 0; % (in)
        LA_F_pickup_X (1,1) double {is_design_parameter} = 0; % (in)
        LA_R_pickup_X (1,1) double {is_design_parameter} = 0; % (in)
        LA_pickups_Y (1,1) double {is_design_parameter} = 0; % (in)
        LA_pickups_Z (1,1) double {is_design_parameter} = 0; % (in)
        SH_pickup_X (1,1) double {is_design_parameter} = 0; % (in)
        SH_pickup_Y (1,1) double {is_design_parameter} = 0; % (in)
        SH_pickup_Z (1,1) double {is_design_parameter} = 0; % (in)
        RA_pickup_X (1,1) double {is_design_parameter} = 0; % (in)
        RA_pickup_Y (1,1) double {is_design_parameter} = 0; % (in)
        RA_pickup_Z (1,1) double {is_design_parameter} = 0; % (in)
        I (1,1) I_parameters_Cl;
        %sprung_mass (1,1) double {is_design_parameter} = 0; % (kg)
    end
end