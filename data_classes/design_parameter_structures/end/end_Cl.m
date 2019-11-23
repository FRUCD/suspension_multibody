classdef end_Cl < matlab.mixin.Copyable
    %% END_CL End Class
    %   stores design parameters for an end of the car (generic)
    
    %% design parameters
    properties
        TL (1,1) TL_parameters_Cl;
        SH (1,1) SH_parameters_Cl;
        RA (1,1) RA_parameters_Cl;
        PR (1,1) PR_parameters_Cl;
        WP (1,1) WP_parameters_Cl;
    end
end