classdef sim_control_Cl
    %% SIM_CONTROL_CL Sim Control Class
    %   stores all data necessary to run tests on the model (generic)
    
    %% references to parameter structures
    properties
        F_ref (1,1) F_end_Cl;
        R_ref (1,1) R_end_Cl;
        G_ref (1,1) general_SY_parameters_Cl;
    end
    
    %% string to choose current test
    properties
        current_test (1,1) string;
    end
    
    %% time control
    properties (Dependent)
        t_end (1,1) double {is_time}; % (s)
        dt_max (1,1) double {is_time}; % (s)
        dt_min (1,1) double {is_time}; % (s)
    end
    
    %% input timeseries
    properties (Dependent)
        ride_input timeseries;
        roll_input timeseries;
        L_jounce_input timeseries;
        R_jounce_input timeseries;
    end
    
    %% grab inputs from a test structure depending on the current mode
    methods
        function out = get.t_end(obj)
             try
                 out = obj.(obj.current_test).t_end;
             catch
                 out = 0;
             end
        end
        function out = get.dt_max(obj)
             try
                 out = obj.(obj.current_test).dt_max;
             catch
                 out = 0;
             end
        end
        function out = get.dt_min(obj)
             try
                 out = obj.(obj.current_test).dt_min;
             catch
                 out = 0;
             end
        end
        function out = get.ride_input(obj)
             try
                 out = obj.(obj.current_test).ride_input;
             catch
                 out = timeseries(0,0);
             end
        end
        function out = get.roll_input(obj)
             try
                 out = obj.(obj.current_test).roll_input;
             catch
                 out = timeseries(0,0);
             end
        end
        function out = get.L_jounce_input(obj)
             try
                 out = obj.(obj.current_test).L_jounce_input;
             catch
                 out = timeseries(0,0);
             end
        end
        function out = get.R_jounce_input(obj)
             try
                 out = obj.(obj.current_test).R_jounce_input;
             catch
                 out = timeseries(0,0);
             end
        end
    end
    
end