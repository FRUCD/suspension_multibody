classdef RK_points_Cl
    %% RK_POINTS_CL Rack Points Class
    %   stores 3D points for Rack (generic)

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
            out = [0; ...
                   obj.F_ref.RK.length / 2; ...
                   0];
            if isa(obj, 'FR_RK_points_Cl')
                out = out .* [1;-1;1];
            end
        end
    end
end