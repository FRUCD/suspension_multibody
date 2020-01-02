classdef F_end_Cl < end_Cl
    %% F_END_CL Front End Class
    %   stores design parameters for an end of the car (front)
    
    %% design parameters
    properties
        SY (1,1) F_end_SY_parameters_Cl;
        CH (1,1) F_CH_parameters_Cl;
        RK (1,1) RK_parameters_Cl;
        UA (1,1) F_UA_parameters_Cl;
        LA (1,1) F_LA_parameters_Cl;
        TL (1,1) F_TL_parameters_Cl;
        SH (1,1) F_SH_parameters_Cl;
        RA (1,1) F_RA_parameters_Cl;
        PR (1,1) F_PR_parameters_Cl;
        WP (1,1) F_WP_parameters_Cl;
    end
end