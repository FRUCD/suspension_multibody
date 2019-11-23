classdef R_CH_points_Cl < CH_points_Cl
    %% R_CH_POINTS_CL Rear Chassis Points Class
    %   stores 3D points for Chassis (rear)
    
    %% 3D points
    properties (Dependent)
        TL_pickup (3,1) double {is_3D_point};
    end
    
    %% get functions
    methods
        function out = get.TL_pickup(obj)
            out = [obj.R_ref.CH.TL_pickup_X; ...
                   obj.R_ref.CH.TL_pickup_Y; ...
                   obj.R_ref.CH.TL_pickup_Z];
            if isa(obj, 'RR_CH_points_Cl')
                out = out .* [1;-1;1];
            end
        end
    end
end