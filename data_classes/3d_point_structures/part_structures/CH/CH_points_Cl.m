classdef CH_points_Cl
    %% CH_POINTS_CL Chassis Points Class
    %   stores 3D points for Chassis (generic)

    %% references to parameter structures
    properties
        F_ref (1,1) F_end_Cl;
        R_ref (1,1) R_end_Cl;
        G_ref (1,1) general_SY_parameters_Cl;
    end
    
    %% 3D points
    properties (Dependent)
        UA_F_pickup (3,1) double {is_3D_point};
        UA_R_pickup (3,1) double {is_3D_point};
        LA_F_pickup (3,1) double {is_3D_point};
        LA_R_pickup (3,1) double {is_3D_point};
        SH_pickup (3,1) double {is_3D_point};
        RA_pickup (3,1) double {is_3D_point};
    end
    
    %% get functions
    methods
        function out = get.UA_F_pickup(obj)
            obj_class = class(obj);
            switch obj_class
                case {'FL_CH_points_Cl', 'FR_CH_points_Cl'}
                    out = [obj.F_ref.CH.UA_F_pickup_X; ...
                           obj.F_ref.CH.UA_pickups_Y; ...
                           obj.F_ref.CH.UA_pickups_Z];
                case {'RL_CH_points_Cl', 'RR_CH_points_Cl'}
                    out = [obj.R_ref.CH.UA_F_pickup_X; ...
                           obj.R_ref.CH.UA_pickups_Y; ...
                           obj.R_ref.CH.UA_pickups_Z];
            end
            if isa(obj, 'FR_CH_points_Cl') || isa(obj, 'RR_CH_points_Cl')
                out = out .* [1;-1;1];
            end
        end
        function out = get.UA_R_pickup(obj)
            obj_class = class(obj);
            switch obj_class
                case {'FL_CH_points_Cl', 'FR_CH_points_Cl'}
                    out = [obj.F_ref.CH.UA_R_pickup_X; ...
                           obj.F_ref.CH.UA_pickups_Y; ...
                           obj.F_ref.CH.UA_pickups_Z];
                case {'RL_CH_points_Cl', 'RR_CH_points_Cl'}
                    out = [obj.F_ref.CH.UA_R_pickup_X; ...
                           obj.R_ref.CH.UA_pickups_Y; ...
                           obj.R_ref.CH.UA_pickups_Z];
            end
            if isa(obj, 'FR_CH_points_Cl') || isa(obj, 'RR_CH_points_Cl')
                out = out .* [1;-1;1];
            end
        end
        function out = get.LA_F_pickup(obj)
            obj_class = class(obj);
            switch obj_class
                case {'FL_CH_points_Cl', 'FR_CH_points_Cl'}
                    out = [obj.F_ref.CH.LA_F_pickup_X; ...
                           obj.F_ref.CH.LA_pickups_Y; ...
                           obj.F_ref.CH.LA_pickups_Z];
                case {'RL_CH_points_Cl', 'RR_CH_points_Cl'}
                    out = [obj.F_ref.CH.LA_F_pickup_X; ...
                           obj.R_ref.CH.LA_pickups_Y; ...
                           obj.R_ref.CH.LA_pickups_Z];
            end
            if isa(obj, 'FR_CH_points_Cl') || isa(obj, 'RR_CH_points_Cl')
                out = out .* [1;-1;1];
            end
        end
        function out = get.LA_R_pickup(obj)
            obj_class = class(obj);
            switch obj_class
                case {'FL_CH_points_Cl', 'FR_CH_points_Cl'}
                    out = [obj.F_ref.CH.LA_R_pickup_X; ...
                           obj.F_ref.CH.LA_pickups_Y; ...
                           obj.F_ref.CH.LA_pickups_Z];
                case {'RL_CH_points_Cl', 'RR_CH_points_Cl'}
                    out = [obj.F_ref.CH.LA_R_pickup_X; ...
                           obj.R_ref.CH.LA_pickups_Y; ...
                           obj.R_ref.CH.LA_pickups_Z];
            end
            if isa(obj, 'FR_CH_points_Cl') || isa(obj, 'RR_CH_points_Cl')
                out = out .* [1;-1;1];
            end
        end
        function out = get.SH_pickup(obj)
            obj_class = class(obj);
            switch obj_class
                case {'FL_CH_points_Cl', 'FR_CH_points_Cl'}
                    out = [obj.F_ref.CH.SH_pickup_X; ...
                           obj.F_ref.CH.SH_pickup_Y; ...
                           obj.F_ref.CH.SH_pickup_Z];
                case {'RL_CH_points_Cl', 'RR_CH_points_Cl'}
                    out = [obj.R_ref.CH.SH_pickup_X; ...
                           obj.R_ref.CH.SH_pickup_Y; ...
                           obj.R_ref.CH.SH_pickup_Z];
            end
            if isa(obj, 'FR_CH_points_Cl') || isa(obj, 'RR_CH_points_Cl')
                out = out .* [1;-1;1];
            end
        end
        function out = get.RA_pickup(obj)
            obj_class = class(obj);
            switch obj_class
                case {'FL_CH_points_Cl', 'FR_CH_points_Cl'}
                    out = [obj.F_ref.CH.RA_pickup_X; ...
                           obj.F_ref.CH.RA_pickup_Y; ...
                           obj.F_ref.CH.RA_pickup_Z];
                case {'RL_CH_points_Cl', 'RR_CH_points_Cl'}
                    out = [obj.R_ref.CH.RA_pickup_X; ...
                           obj.R_ref.CH.RA_pickup_Y; ...
                           obj.R_ref.CH.RA_pickup_Z];
            end
            if isa(obj, 'FR_CH_points_Cl') || isa(obj, 'RR_CH_points_Cl')
                out = out .* [1;-1;1];
            end
        end
    end
end