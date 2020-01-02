classdef R_roll_test_Cl < R_base_test_Cl
    %% R_ROLL_TEST_CL Rear Roll Test Class
    %   stores all data necessary to run a roll test on the model (rear)
    
    %% number of points for input timeseries
    properties
        roll_input_n_pt (1,1) int64 {mustBePositive} = 10;
    end
    
    %% input timeseries
    properties (Dependent)
        ride_input timeseries;
        roll_input timeseries;
        L_jounce_input timeseries;
        R_jounce_input timeseries;
    end
    
    %% construct input timeseries
    methods
        function out = get.ride_input(obj) %#ok<MANU>
            out = timeseries(0,0);
        end
        function out = get.roll_input(obj)
            out = timeseries( ...
                linspace( ...
                    -obj.R_ref.SY.roll_travel, ...
                    obj.R_ref.SY.roll_travel, ...
                    obj.roll_input_n_pt)', ...
                linspace(0, obj.t_end, obj.roll_input_n_pt)');
        end
        function out = get.L_jounce_input(obj) %#ok<MANU>
            out = timeseries(0,0);
        end
        function out = get.R_jounce_input(obj) %#ok<MANU>
            out = timeseries(0,0);
        end
    end
    
end