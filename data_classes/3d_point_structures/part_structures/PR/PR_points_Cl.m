classdef PR_points_Cl
    %% PR_POINTS_CL Pushrod Points Class
    %   stores 3D points for Pushrod (generic)

    %% references to parameter structures
    properties
        F_ref (1,1) F_end_Cl;
        R_ref (1,1) R_end_Cl;
        G_ref (1,1) general_SY_parameters_Cl;
    end
    
    %% 3D points
    properties (Dependent)
        end_point (3,1) double {is_3D_point};
    end
    
    %% get functions
    methods
        function out = get.end_point(obj)
            obj_class = class(obj);
            switch obj_class
                case {'FL_PR_points_Cl', 'FR_PR_points_Cl'}
                    out = [0; ...
                           obj.F_ref.PR.length; ...
                           0];
                case {'RL_PR_points_Cl', 'RR_PR_points_Cl'}
                    out = [0; ...
                           obj.R_ref.PR.length; ...
                           0];
            end
            if isa(obj, 'FR_PR_points_Cl') || isa(obj, 'RR_PR_points_Cl')
                out = out .* [1;-1;1];
            end
        end
    end
end