classdef RA_points_Cl
    %% RA_POINTS_CL Rocker Arm Points Class
    %   stores 3D points for Rocker Arm (generic)

    %% references to parameter structures
    properties
        F_ref (1,1) F_end_Cl;
        R_ref (1,1) R_end_Cl;
        G_ref (1,1) general_SY_parameters_Cl;
    end
    
    %% 3D points
    properties (Dependent)
        SH_pickup (3,1) double {is_3D_point};
        PR_pickup (3,1) double {is_3D_point};
    end
    
    %% rotation matrix
    properties
        rotation_matrix (3,3) double {is_rotation_matrix} = [1,0,0;0,1,0;0,0,1];
    end
    
    %% get functions
    methods
        function out = get.SH_pickup(obj)
            obj_class = class(obj);
            switch obj_class
                case {'FL_RA_points_Cl', 'FR_RA_points_Cl'}
                    out = [obj.F_ref.RA.SH_radius; ...
                           0; ...
                           0];
                case {'RL_RA_points_Cl', 'RR_RA_points_Cl'}
                    out = [obj.R_ref.RA.SH_radius; ...
                           0; ...
                           0];
            end
            if isa(obj, 'FR_RA_points_Cl') || isa(obj, 'RR_RA_points_Cl')
                out = out .* [1;-1;1];
            end
        end
        function out = get.PR_pickup(obj)
            obj_class = class(obj);
            switch obj_class
                case {'FL_RA_points_Cl', 'FR_RA_points_Cl'}
                    out = [cosd(obj.F_ref.RA.angle); ...
                           sind(obj.F_ref.RA.angle); ...
                           0] ...
                          * obj.F_ref.RA.PR_radius;
                case {'RL_RA_points_Cl', 'RR_RA_points_Cl'}
                    out = [cosd(obj.R_ref.RA.angle); ...
                           sind(obj.R_ref.RA.angle); ...
                           0] ...
                          * obj.R_ref.RA.PR_radius;
            end
        end
    end
end