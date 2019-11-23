classdef F_LA_points_Cl < LA_points_Cl
    %% F_LA_POINTS_CL Front Lower Arm Points Class
    %   stores 3D points for Lower Arm (front)
    
    properties (Dependent)
        F_member_PR_support (3,1) double {is_3D_point};
        R_member_PR_support (3,1) double {is_3D_point};
        PR_pickup (3,1) double {is_3D_point};
    end
    
    methods
        function out = get.F_member_PR_support(obj)
            out = [obj.F_ref.LA.base_length - obj.F_ref.LA.apex_delta_X; ...
                   -obj.F_ref.LA.length; ...
                   0] ...
                  * -obj.F_ref.LA.PR_pickup_delta_Y / obj.F_ref.LA.length;
            if isa(obj, 'FR_LA_points_Cl')
                out = out .* [1;-1;1];
            end
        end
        function out = get.R_member_PR_support(obj)
            out = [-obj.F_ref.LA.apex_delta_X; ...
                   -obj.F_ref.LA.length; ...
                   0] ...
                  * -obj.F_ref.LA.PR_pickup_delta_Y / obj.F_ref.LA.length;
            if isa(obj, 'FR_LA_points_Cl')
                out = out .* [1;-1;1];
            end
        end
        function out = get.PR_pickup(obj)
            out = [0; ...
                   obj.F_ref.LA.PR_pickup_delta_Y; ...
                   obj.F_ref.LA.PR_pickup_delta_Z];
            if isa(obj, 'FR_LA_points_Cl')
                out = out .* [1;-1;1];
            end
        end
    end
    
end