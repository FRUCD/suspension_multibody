classdef R_UA_points_Cl < UA_points_Cl
    %% R_UA_POINTS_CL Rear Upper Arm Points Class
    %   stores 3D points for Upper Arm (rear)
    
    properties (Dependent)
        F_member_PR_support (3,1) double {is_3D_point};
        R_member_PR_support (3,1) double {is_3D_point};
        PR_pickup (3,1) double {is_3D_point};
    end
    
    methods
        function out = get.F_member_PR_support(obj)
            out = [obj.R_ref.UA.base_length - obj.R_ref.UA.apex_delta_X; ...
                   -obj.R_ref.UA.length; ...
                   0] ...
                  * -obj.R_ref.UA.PR_pickup_delta_Y / obj.R_ref.UA.length;
            if isa(obj, 'RR_UA_points_Cl')
                out = out .* [1;-1;1];
            end
        end
        function out = get.R_member_PR_support(obj)
            out = [-obj.R_ref.UA.apex_delta_X; ...
                   -obj.R_ref.UA.length; ...
                   0] ...
                  * -obj.R_ref.UA.PR_pickup_delta_Y / obj.R_ref.UA.length;
            if isa(obj, 'RR_UA_points_Cl')
                out = out .* [1;-1;1];
            end
        end
        function out = get.PR_pickup(obj)
            out = [0; ...
                   obj.R_ref.UA.PR_pickup_delta_Y; ...
                   obj.R_ref.UA.PR_pickup_delta_Z];
            if isa(obj, 'RR_UA_points_Cl')
                out = out .* [1;-1;1];
            end
        end
    end
    
end