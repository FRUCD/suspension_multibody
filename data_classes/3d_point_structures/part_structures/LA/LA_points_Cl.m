classdef LA_points_Cl
    %% LA_POINTS_CL Lower Arm Points Class
    %   stores 3D points for Lower Arm (generic)

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
        % apex_F_member_mount (3,1) double {is_3D_point};
        % apex_R_member_mount (3,1) double {is_3D_point};
        % PR_pickup (3,1) double {is_3D_point};
    end
    
    %% get functions
    methods
        function out = get.F_member_end(obj)
            obj_class = class(obj);
            switch obj_class
                case {'FL_LA_points_Cl', 'FR_LA_points_Cl'}
                    out = [0; ...
                           obj.F_ref.LA.F_member_length; ...
                           0];
                case {'RL_LA_points_Cl', 'RR_LA_points_Cl'}
                    out = [0; ...
                           obj.R_ref.LA.F_member_length; ...
                           0];
            end
            if isa(obj, 'FR_LA_points_Cl') || isa(obj, 'RR_LA_points_Cl')
                out = out .* [1;-1;1];
            end
        end
        function out = get.R_member_end(obj)
            obj_class = class(obj);
            switch obj_class
                case {'FL_LA_points_Cl', 'FR_LA_points_Cl'}
                    out = [0; ...
                           obj.F_ref.LA.R_member_length; ...
                           0];
                case {'RL_LA_points_Cl', 'RR_LA_points_Cl'}
                    out = [0; ...
                           obj.R_ref.LA.R_member_length; ...
                           0];
            end
            if isa(obj, 'FR_LA_points_Cl') || isa(obj, 'RR_LA_points_Cl')
                out = out .* [1;-1;1];
            end
        end
        %{
        function out = get.apex_F_member_mount(obj)
            obj_class = class(obj);
            switch obj_class
                case {'FL_LA_points_Cl', 'FR_LA_points_Cl'}
                    out = [obj.F_ref.CH.LA_pickups_delta_X - obj.F_ref.LA.apex_delta_X; ...
                           -obj.F_ref.LA.length; ...
                           0] ...
                           * obj.F_ref.LA.F_member_apex_section_length / obj.F_ref.LA.F_member_length;
                case {'RL_LA_points_Cl', 'RR_LA_points_Cl'}
                    out = [obj.R_ref.CH.LA_pickups_delta_X - obj.R_ref.LA.apex_delta_X; ...
                           -obj.R_ref.LA.length; ...
                           0] ...
                           * obj.R_ref.LA.F_member_apex_section_length / obj.R_ref.LA.F_member_length;
            end
            if isa(obj, 'FR_LA_points_Cl') || isa(obj, 'RR_LA_points_Cl')
                out = out .* [1;-1;1];
            end
        end
        function out = get.apex_R_member_mount(obj)
            obj_class = class(obj);
            switch obj_class
                case {'FL_LA_points_Cl', 'FR_LA_points_Cl'}
                    out = [- obj.F_ref.LA.apex_delta_X; ...
                           -obj.F_ref.LA.length; ...
                           0] ...
                           * obj.F_ref.LA.R_member_apex_section_length / obj.F_ref.LA.R_member_length;
                case {'RL_LA_points_Cl', 'RR_LA_points_Cl'}
                    out = [- obj.R_ref.LA.apex_delta_X; ...
                           -obj.R_ref.LA.length; ...
                           0] ...
                           * obj.R_ref.LA.R_member_apex_section_length / obj.R_ref.LA.R_member_length;
            end
            if isa(obj, 'FR_LA_points_Cl') || isa(obj, 'RR_LA_points_Cl')
                out = out .* [1;-1;1];
            end
        end
        function out = get.PR_pickup(obj)
            obj_class = class(obj);
            switch obj_class
                case {'FL_LA_points_Cl', 'FR_LA_points_Cl'}
                    out = [0; ...
                           obj.F_ref.LA.PR_pickup_delta_Y; ...
                           obj.F_ref.LA.PR_pickup_delta_Z];
                case {'RL_LA_points_Cl', 'RR_LA_points_Cl'}
                    out = [0; ...
                           obj.R_ref.LA.PR_pickup_delta_Y; ...
                           obj.R_ref.LA.PR_pickup_delta_Z];
            end
            if isa(obj, 'FR_LA_points_Cl') || isa(obj, 'RR_LA_points_Cl')
                out = out .* [1;-1;1];
            end
        end
        %}
    end
end