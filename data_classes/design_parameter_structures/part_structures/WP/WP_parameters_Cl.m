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
    end
    
    %% KPI and scrub
    properties (Dependent)
        KPI (1,1) double {is_design_parameter}; % (deg)
        scrub_radius (1,1) double {is_design_parameter}; % (deg)
    end
    
    %% KPI and scrub gets
    methods
        function out = get.KPI(obj)
            out = ...
                atan2d( ...
                    -(obj.UA_pickup_Y - obj.LA_pickup_Y), ...
                    obj.UA_pickup_Z - obj.LA_pickup_Z);
        end
        function out = get.scrub_radius(obj)
            out = ...
                -obj.LA_pickup_Y ...
                - (obj.radius + obj.LA_pickup_Z) * tand(obj.KPI);
        end
    end
    
end