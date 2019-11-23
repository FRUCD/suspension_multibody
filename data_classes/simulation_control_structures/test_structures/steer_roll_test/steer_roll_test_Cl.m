classdef steer_roll_test_Cl < F_base_test_Cl
    %% STEER_TEST_ROLL_CL Steer/Roll Test Class
    %   stores all data necessary to run a steer/roll test on the model
    %   (front)
    
    %% number of points for input timeseries
    properties
        rack_sweep_n_pt (1,1) int64 {mustBePositive} = 11;
        roll_sweep_n_pt (1,1) int64 {mustBePositive} = 11;
    end
    
    %% divide up time steps
    properties
        hold_frac (1,1) double; % (1)
        backtrack_frac (1,1) double; % (1)
    end
    
    %% step, ramp, hold, and backtrack times
    properties (Dependent)
        t_step (1,1) double {is_time}; % (s)
        t_ramp (1,1) double {is_time}; % (s)
        t_hold (1,1) double {is_time}; % (s)
        t_backtrack (1,1) double {is_time}; % (s)
    end
    
    %% intermediate data
    properties (Dependent)
        timeseries_n_pt (1,1) int64 {mustBePositive};
        rack_samples double; % (s)
        roll_samples double; % (s)
        time_input_data double {is_time}; % (s)
        rack_input_data double; % (s)
        roll_input_data double; % (s)
    end
    
    %% input timeseries
    properties (Dependent)
        ride_input timeseries;
        roll_input timeseries;
        rack_input timeseries;
        L_jounce_input timeseries;
        R_jounce_input timeseries;
    end
    
    %% output sample times
    properties (Dependent)
        t_samples double;
    end
    
    %% calculate step, ramp, hold, and backtrack times
    methods
        function out = get.t_step(obj)
            out = obj.t_end / (double(obj.timeseries_n_pt) / 2);
        end
        function out = get.t_hold(obj)
            out = obj.hold_frac * obj.t_step;
        end
        function out = get.t_backtrack(obj)
            out = obj.backtrack_frac * obj.t_step;
        end
    end
    
    %% calculate intermediate data
    methods
        function out = get.timeseries_n_pt(obj)
            out = 2 * obj.rack_sweep_n_pt * obj.roll_sweep_n_pt;
        end
        function out = get.rack_samples(obj)
            out = zeros(obj.rack_sweep_n_pt, 1);
            for i = 1:obj.rack_sweep_n_pt
                out(i, 1) = ...
                    -obj.F_ref.SY.rack_travel ...
                    + (double(i) - 1) ...
                    / (double(obj.rack_sweep_n_pt) - 1) ...
                    * 2 * obj.F_ref.SY.rack_travel;
            end
        end
        function out = get.roll_samples(obj)
            out = zeros(obj.roll_sweep_n_pt, 1);
            for i = 1:obj.roll_sweep_n_pt
                out(i, 1) = ...
                    -obj.F_ref.SY.roll_travel ...
                    + (double(i) - 1) ...
                    / (double(obj.roll_sweep_n_pt) - 1) ...
                    * 2 * obj.F_ref.SY.roll_travel;
            end
        end
        function out = get.time_input_data(obj)
            out = zeros(obj.timeseries_n_pt, 1);
            for i = 1:obj.timeseries_n_pt / 2
                out(2 * double(i) - 1, 1) = ...
                    double(i) * (obj.t_step) - obj.t_hold;
                out(2 * double(i), 1) = ...
                    double(i) * (obj.t_step);
            end
            out = [0; out];
        end
        function out = get.rack_input_data(obj)
            out = zeros(obj.timeseries_n_pt, 1);
            for i = 1:obj.rack_sweep_n_pt
                for j = 1:obj.roll_sweep_n_pt
                    out(2 * ((i-1)*obj.roll_sweep_n_pt + j) - 1, 1) = ...
                        obj.rack_samples(i);
                    out(2 * ((i-1)*obj.roll_sweep_n_pt + j), 1) = ...
                        obj.rack_samples(i);
                end
            end
            out = [0; out];
        end
        function out = get.roll_input_data(obj)
            out = zeros(obj.timeseries_n_pt, 1);
            for i = 1:obj.rack_sweep_n_pt
                for j = 1:obj.roll_sweep_n_pt
                    out(2 * ((i-1)*obj.roll_sweep_n_pt + j) - 1, 1) = ...
                        obj.roll_samples(j);
                    out(2 * ((i-1)*obj.roll_sweep_n_pt + j), 1) = ...
                        obj.roll_samples(j);
                end
            end
            out = [0; out];
        end
    end
    
    %% construct input timeseries
    methods
        function out = get.ride_input(obj) %#ok<MANU>
            out = timeseries(0,0);
        end
        function out = get.roll_input(obj)
            out = timeseries(obj.roll_input_data, obj.time_input_data);
        end
        function out = get.rack_input(obj)
            out = timeseries(obj.rack_input_data, obj.time_input_data);
        end
        function out = get.L_jounce_input(obj) %#ok<MANU>
            out = timeseries(0,0);
        end
        function out = get.R_jounce_input(obj) %#ok<MANU>
            out = timeseries(0,0);
        end
    end
    
    %% calculate output sample times
    methods
        function out = get.t_samples(obj)
            out = zeros(obj.timeseries_n_pt / 2, 1);
            for i = 1:obj.timeseries_n_pt / 2
                out(i, 1) = ...
                    double(i) * (obj.t_step) - obj.t_backtrack;
            end
        end
    end
    
end