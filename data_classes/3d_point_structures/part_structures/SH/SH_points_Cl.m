classdef SH_points_Cl
    %% SH_POINTS_CL Shock Points Class
    %   stores 3D points for Shock (generic)

    %% references to parameter structures
    properties
        F_ref (1,1) F_end_Cl;
        R_ref (1,1) R_end_Cl;
        G_ref (1,1) general_SY_parameters_Cl;
    end
    
    %% 3D points
    properties (Dependent)
        end_point (3,1) double {is_3D_point};
        preload_transform (3,1) double {is_3D_point};
    end
    
    %% get functions
    methods
        function out = get.end_point(obj)
            obj_class = class(obj);
            switch obj_class
                case {'FL_SH_points_Cl', 'FR_SH_points_Cl'}
                    out = [0; ...
                           obj.F_ref.SH.rest_length; ...
                           0];
                case {'RL_SH_points_Cl', 'RR_SH_points_Cl'}
                    out = [0; ...
                           obj.R_ref.SH.rest_length; ...
                           0];
            end
            if isa(obj, 'FR_SH_points_Cl') || isa(obj, 'RR_SH_points_Cl')
                out = out .* [1;-1;1];
            end
        end
        function out = get.preload_transform(obj)
            obj_class = class(obj);
            switch obj_class
                case {'FL_SH_points_Cl', 'FR_SH_points_Cl'}
                    out = [0; ...
                           0; ...
                           obj.F_ref.SH.max_length - obj.F_ref.SH.spring_rest_length + obj.F_ref.SH.preload];
                case {'RL_SH_points_Cl', 'RR_SH_points_Cl'}
                    out = [0; ...
                           0; ...
                           obj.R_ref.SH.max_length - obj.R_ref.SH.spring_rest_length + obj.R_ref.SH.preload];
            end
            if isa(obj, 'FR_SH_points_Cl') || isa(obj, 'RR_SH_points_Cl')
                out = out .* [1;-1;1];
            end
        end
    end
end