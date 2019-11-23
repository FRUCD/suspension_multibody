classdef WP_points_Cl
    %% WP_POINTS_CL Wheel Package Points Class
    %   stores 3D points for Wheel Package (generic)

    %% references to parameter structures
    properties
        F_ref (1,1) F_end_Cl;
        R_ref (1,1) R_end_Cl;
        G_ref (1,1) general_SY_parameters_Cl;
    end
    
    %% 3D points
    properties (Dependent)
        UA_pickup (3,1) double {is_3D_point};
        LA_pickup (3,1) double {is_3D_point};
        TL_pickup (3,1) double {is_3D_point};
        contact_patch (3,1) double {is_3D_point};
    end
    
    %% get functions
    methods
        function out = get.UA_pickup(obj)
            obj_class = class(obj);
            switch obj_class
                case {'FL_WP_points_Cl', 'FR_WP_points_Cl'}
                    out = [0; ...
                           obj.F_ref.WP.UA_pickup_Y; ...
                           obj.F_ref.WP.UA_pickup_Z];
                case {'RL_WP_points_Cl', 'RR_WP_points_Cl'}
                    out = [0; ...
                           obj.R_ref.WP.UA_pickup_Y; ...
                           obj.R_ref.WP.UA_pickup_Z];
            end
            if isa(obj, 'FR_WP_points_Cl') || isa(obj, 'RR_WP_points_Cl')
                out = out .* [1;-1;1];
            end
        end
        function out = get.LA_pickup(obj)
            obj_class = class(obj);
            switch obj_class
                case {'FL_WP_points_Cl', 'FR_WP_points_Cl'}
                    out = [0; ...
                           obj.F_ref.WP.LA_pickup_Y; ...
                           obj.F_ref.WP.LA_pickup_Z];
                case {'RL_WP_points_Cl', 'RR_WP_points_Cl'}
                    out = [0; ...
                           obj.R_ref.WP.LA_pickup_Y; ...
                           obj.R_ref.WP.LA_pickup_Z];
            end
            if isa(obj, 'FR_WP_points_Cl') || isa(obj, 'RR_WP_points_Cl')
                out = out .* [1;-1;1];
            end
        end
        function out = get.TL_pickup(obj)
            obj_class = class(obj);
            switch obj_class
                case {'FL_WP_points_Cl', 'FR_WP_points_Cl'}
                    out = [obj.F_ref.WP.TL_pickup_X; ...
                           obj.F_ref.WP.TL_pickup_Y; ...
                           obj.F_ref.WP.TL_pickup_Z];
                case {'RL_WP_points_Cl', 'RR_WP_points_Cl'}
                    out = [obj.R_ref.WP.TL_pickup_X; ...
                           obj.R_ref.WP.TL_pickup_Y; ...
                           obj.R_ref.WP.TL_pickup_Z];
            end
            if isa(obj, 'FR_WP_points_Cl') || isa(obj, 'RR_WP_points_Cl')
                out = out .* [1;-1;1];
            end
        end
        function out = get.contact_patch(obj)
            obj_class = class(obj);
            switch obj_class
                case {'FL_WP_points_Cl', 'FR_WP_points_Cl'}
                    out = [0; ...
                           0; ...
                           - obj.F_ref.WP.radius];
                case {'RL_WP_points_Cl', 'RR_WP_points_Cl'}
                    out = [0; ...
                           0; ...
                           - obj.R_ref.WP.radius];
            end
            if isa(obj, 'FR_WP_points_Cl') || isa(obj, 'RR_WP_points_Cl')
                out = out .* [1;-1;1];
            end
        end
    end
end