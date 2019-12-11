classdef F_lateral_load_case_Cl < F_base_test_Cl
    %% F_ROLL_TEST_CL Front Roll Test Class
    %   stores all data necessary to run a roll test on the model (front)
    
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
        function out = get.rack_input(obj) %#ok<MANU>
            out = timeseries(0,0);
        end
        function out = get.L_jounce_input(obj) %#ok<MANU>
            out = timeseries(0,0);
        end
        function out = get.R_jounce_input(obj) %#ok<MANU>
            out = timeseries(0,0);
        end
    end
    
end