classdef WP_parameters_Cl
    %% WP_PARAMETERS_CL Wheel Package Parameters Class
    %   stores design parameters for the wheel package (generic)
    
    %% design parameters
    properties
        UA_pickup_Y (1,1) double {is_design_parameter} = 0; % (in)
        UA_pickup_Z (1,1) double {is_design_parameter} = 0; % (in)
        LA_pickup_Y (1,1) double {is_design_parameter} = 0; % (in)
        LA_pickup_Z (1,1) double {is_design_parameter} = 0; % (in)
        TL_pickup_X (1,1) double {is_design_parameter} = 0; % (in)
        TL_pickup_Y (1,1) double {is_design_parameter} = 0; % (in)
        TL_pickup_Z (1,1) double {is_design_parameter} = 0; % (in)
        radius (1,1) double {is_design_parameter} = 0; % (in)
        upright_I (1,1) I_parameters_Cl;
        wheel_I (1,1) I_parameters_Cl;
        tire_spring_rate (1,1) double {is_design_parameter} = 0; % (N/m)
        %{
        upright_mass (1,1) double {is_design_parameter} = 0; % (kg)
        upright_cm (1,1) double {is_design_parameter} = 0; % (in)
        upright_I_moments (1,1) double {is_design_parameter} = 0; % (kg-m^2)
        upright_I_products (1,1) double {is_design_parameter} = 0; % (kg-m^2)
        wheel_mass (1,1) double {is_design_parameter} = 0; % (kg)
        wheel_cm (1,1) double {is_design_parameter} = 0; % (in)
        wheel_I_moments (1,1) double {is_design_parameter} = 0; % (kg-m^2)
        wheel_I_products (1,1) double {is_design_parameter} = 0; % (kg-m^2)
        %}
    end
end