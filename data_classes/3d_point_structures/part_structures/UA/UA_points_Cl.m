classdef UA_points_Cl
    %% UA_POINTS_CL Upper Arm Points Class
    %   stores 3D points for Upper Arm (generic)

    %% references to parameter structures
    properties
        F_ref (1,1) F_end_Cl;
        R_ref (1,1) R_end_Cl;
        G_ref (1,1) general_SY_parameters_Cl;
    end
    
    %% 3D points
    properties (Dependent)
        F_member_end (3,1) double {is_3D_point};
        R_member_end (3,1) double {is_3D_point};
    end
    
    %% get functions
    methods
        function out = get.F_member_end(obj)
            obj_class = class(obj);
            switch obj_class
                case {'FL_UA_points_Cl', 'FR_UA_points_Cl'}
                    out = [0; ...
                           obj.F_ref.UA.F_member_length; ...
                           0];
                case {'RL_UA_points_Cl', 'RR_UA_points_Cl'}
                    out = [0; ...
                           obj.R_ref.UA.F_member_length; ...
                           0];
            end
            if isa(obj, 'FR_UA_points_Cl') || isa(obj, 'RR_UA_points_Cl')
                out = out .* [1;-1;1];
            end
        end
        function out = get.R_member_end(obj)
            obj_class = class(obj);
            switch obj_class
                case {'FL_UA_points_Cl', 'FR_UA_points_Cl'}
                    out = [0; ...
                           obj.F_ref.UA.R_member_length; ...
                           0];
                case {'RL_UA_points_Cl', 'RR_UA_points_Cl'}
                    out = [0; ...
                           obj.R_ref.UA.R_member_length; ...
                           0];
            end
            if isa(obj, 'FR_UA_points_Cl') || isa(obj, 'RR_UA_points_Cl')
                out = out .* [1;-1;1];
            end
        end
    end
end