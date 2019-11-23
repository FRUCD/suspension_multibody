classdef FL_CH_points_Cl < CH_points_Cl
    %% FL_CH_POINTS_CL Front Left Chassis Points Class
    %   stores 3D points for Chassis (front left)
    
    properties (Dependent)
        RK_mount (3,1) double {is_3D_point};
    end
    
    
    %% get functions
    methods
        function out = get.RK_mount(obj)
            out = [obj.F_ref.CH.RK_mount_X; ...
                   0; ...
                   obj.F_ref.CH.RK_mount_Z];
        end
    end
end