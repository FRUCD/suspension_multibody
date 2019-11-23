classdef R_end_Cl < end_Cl
    %% R_END_CL Rear End Class
    %   stores design parameters for an end of the car (rear)
    
    %% design parameters
    properties
        SY (1,1) end_SY_parameters_Cl;
        CH (1,1) R_CH_parameters_Cl;
        UA (1,1) R_UA_parameters_Cl;
        LA (1,1) LA_parameters_Cl;
    end
    
    %% simulation control structure
    %{
    properties
        SC (1,1) F_sim_control_Cl;
    end
    %}
end