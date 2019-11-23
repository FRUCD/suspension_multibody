classdef RR_corner_Cl < corner_Cl
    %% RR_CORNER_CL Rear Right Corner Class
    %   stores 3D points for a corner of the car (rear right)

    %% part structures for 3D points
    properties
        CH (1,1) RR_CH_points_Cl;
        UA (1,1) RR_UA_points_Cl;
        LA (1,1) RR_LA_points_Cl;
        TL (1,1) RR_TL_points_Cl;
        SH (1,1) RR_SH_points_Cl;
        RA (1,1) RR_RA_points_Cl;
        PR (1,1) RR_PR_points_Cl;
        WP (1,1) RR_WP_points_Cl;
    end
    
    %% get functions
    methods
        function out = get.CH(obj)
            obj.CH.F_ref = obj.F_ref;
            obj.CH.R_ref = obj.R_ref;
            obj.CH.G_ref = obj.G_ref;
            out = obj.CH;
        end
        function out = get.UA(obj)
            obj.UA.F_ref = obj.F_ref;
            obj.UA.R_ref = obj.R_ref;
            obj.UA.G_ref = obj.G_ref;
            out = obj.UA;
        end
        function out = get.LA(obj)
            obj.LA.F_ref = obj.F_ref;
            obj.LA.R_ref = obj.R_ref;
            obj.LA.G_ref = obj.G_ref;
            out = obj.LA;
        end
        function out = get.TL(obj)
            obj.TL.F_ref = obj.F_ref;
            obj.TL.R_ref = obj.R_ref;
            obj.TL.G_ref = obj.G_ref;
            out = obj.TL;
        end
        function out = get.SH(obj)
            obj.SH.F_ref = obj.F_ref;
            obj.SH.R_ref = obj.R_ref;
            obj.SH.G_ref = obj.G_ref;
            out = obj.SH;
        end
        function out = get.RA(obj)
            obj.RA.F_ref = obj.F_ref;
            obj.RA.R_ref = obj.R_ref;
            obj.RA.G_ref = obj.G_ref;
            out = obj.RA;
        end
        function out = get.PR(obj)
            obj.PR.F_ref = obj.F_ref;
            obj.PR.R_ref = obj.R_ref;
            obj.PR.G_ref = obj.G_ref;
            out = obj.PR;
        end
        function out = get.WP(obj)
            obj.WP.F_ref = obj.F_ref;
            obj.WP.R_ref = obj.R_ref;
            obj.WP.G_ref = obj.G_ref;
            out = obj.WP;
        end
    end
end