classdef R_sim_control_Cl < sim_control_Cl
    %% R_SIM_CONTROL_CL Rear Sim Control Class
    %   stores all data necessary to run tests on the model (rear)
    
    %% test structures
    properties
        roll_test (1,1) R_roll_test_Cl;
    end
    
    %% variant subsystem configuration
    properties (Dependent)
        VS_modes (1,1) R_VS_mode_Cl;
    end
    
    %% get functions for test structures
    methods
        function out = get.roll_test(obj)
            obj.roll_test.F_ref = obj.F_ref;
            obj.roll_test.R_ref = obj.R_ref;
            obj.roll_test.G_ref = obj.G_ref;
            out = obj.roll_test;
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