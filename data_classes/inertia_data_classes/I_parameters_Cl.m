classdef I_parameters_Cl
    %% I_PARAMETERS_CL Inertia Parameters Class
    %   stores mass properties 
    
    %% enumerated mass properties
    properties
        m (1,1) double {is_design_parameter} = 10; % (kg)
        CM_X (1,1) double {is_design_parameter} = 0; % (m)
        CM_Y (1,1) double {is_design_parameter} = 0; % (m)
        CM_Z (1,1) double {is_design_parameter} = 0; % (m)
        Ixx (1,1) double {is_design_parameter} = 0.1; % (kg-m^2)
        Iyy (1,1) double {is_design_parameter} = 0.1; % (kg-m^2)
        Izz (1,1) double {is_design_parameter} = 0.1; % (kg-m^2)
        Ixy (1,1) double {is_design_parameter} = 0; % (kg-m^2)
        Ixz (1,1) double {is_design_parameter} = 0; % (kg-m^2)
        Iyz (1,1) double {is_design_parameter} = 0; % (kg-m^2)
    end
    
    %% calculated mass properties
    properties (Dependent)
        CM (3,1) double; % (m)
        Im (3,1) double; % (kg-m^2)
        Ip (3,1) double; % (kg-m^2)
        Imat (3,3) double; % (kg-m^2)
        Rx (1,1) double; % (kg)
        Ry (1,1) double; % (kg)
        Rz (1,1) double; % (kg)
    end
    
    %% get functions
    methods
        function out = get.CM(obj)
            out = [obj.CM_X; ...
                   obj.CM_Y; ...
                   obj.CM_Z];
        end
        function out = get.Im(obj)
            out = [obj.Ixx; ...
                   obj.Iyy; ...
                   obj.Izz];
        end
        function out = get.Ip(obj)
            out = [obj.Iyz; ...
                   obj.Ixz; ...
                   obj.Ixy];
        end
        function out = get.Imat(obj)
            out = [obj.Ixx, obj.Ixy, obj.Ixz; ...
                   obj.Ixy, obj.Iyy, obj.Iyz; ...
                   obj.Ixz, obj.Iyz, obj.Izz];
        end
        function out = get.Rx(obj)
            out = sqrt(obj.Ixx / obj.m);
        end
        function out = get.Ry(obj)
            out = sqrt(obj.Iyy / obj.m);
        end
        function out = get.Rz(obj)
            out = sqrt(obj.Izz / obj.m);
        end
    end
end