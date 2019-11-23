classdef F_sim_control_Cl < sim_control_Cl
    %% F_SIM_CONTROL_CL Front Sim Control Class
    %   stores all data necessary to run tests on the model (front)
    
    %% test structures
    properties
        roll_test (1,1) F_roll_test_Cl;
        steer_test (1,1) steer_test_Cl;
        steer_roll_test (1,1) steer_roll_test_Cl;
    end
    
    %% variant subsystem configuration
    properties (Dependent)
        VS_modes (1,1) F_VS_mode_Cl;
    end
    
    %% get functions for test structures
    methods
        function out = get.roll_test(obj)
            obj.roll_test.F_ref = obj.F_ref;
            obj.roll_test.R_ref = obj.R_ref;
            obj.roll_test.G_ref = obj.G_ref;
            out = obj.roll_test;
        end
        function out = get.steer_test(obj)
            obj.steer_test.F_ref = obj.F_ref;
            obj.steer_test.R_ref = obj.R_ref;
            obj.steer_test.G_ref = obj.G_ref;
            out = obj.steer_test;
        end
        function out = get.steer_roll_test(obj)
            obj.steer_roll_test.F_ref = obj.F_ref;
            obj.steer_roll_test.R_ref = obj.R_ref;
            obj.steer_roll_test.G_ref = obj.G_ref;
            out = obj.steer_roll_test;
        end
    end
    
    %% grab inputs from a test structure depending on the current mode
    methods
        function out = get.VS_modes(obj)
             try
                 out = obj.(obj.current_test).VS_modes;
             catch
                 out = "Error: shit's fucked";
             end
        end
    end
    
end