classdef steer_test_Cl < F_base_test_Cl
    %% STEER_TEST_CL Steer Test Class
    %   stores all data necessary to run a steer test on the model (front)
    
    %% number of points for input timeseries
    properties
        rack_input_n_pt (1,1) int64 {mustBePositive} = 10;
    end
    
    %% input timeseries
    properties (Dependent)
        ride_input timeseries;
        roll_input timeseries;
        rack_input timeseries;
        L_jounce_input timeseries;
        R_jounce_input timeseries;
    end
    
    %% construct input timeseries
    methods
        function out = get.ride_input(obj) %#ok<MANU>
            out = timeseries(0,0);
        end
        function out = get.roll_input(obj) %#ok<MANU>
            out = timeseries(0,0);
        end
        function out = get.rack_input(obj)
            out = timeseries( ...
                linspace( ...
                    -obj.F_ref.SY.rack_travel, ...
                    obj.F_ref.SY.rack_travel, ...
                    obj.rack_input_n_pt)', ...
                linspace(0, obj.t_end, obj.rack_input_n_pt)');
        end
        function out = get.L_jounce_input(obj) %#ok<MANU>
            out = timeseries(0,0);
        end
        function out = get.R_jounce_input(obj) %#ok<MANU>
            out = timeseries(0,0);
        end
    end
     
end