classdef (Abstract) base_test_Cl
    %% BASE_TEST_CL Base Test Class
    %   stores data necessary to run any test on the model
    
    %% references to parameter structures
    properties
        F_ref (1,1) F_end_Cl;
        R_ref (1,1) R_end_Cl;
        G_ref (1,1) general_SY_parameters_Cl;
    end
    
    %% time control
    properties
        t_end (1,1) double {is_time} = 1; % (s)
        dt_max (1,1) double {is_time} = 0.01; % (s)
        dt_min (1,1) double {is_time} = 0.001; % (s)
    end
    
    %% input timeseries
    properties (Abstract)
        ride_input timeseries;
        roll_input timeseries;
        rack_input timeseries;
        L_jounce_input timeseries;
        R_jounce_input timeseries;
    end
    
end