classdef (Abstract) F_base_test_Cl < base_test_Cl
    %% F_BASE_TEST_CL Front Base Test Class
    %   stores data necessary to run any test on the front model
    
    %% rack input timeseries
    properties (Abstract)
        rack_input timeseries;
    end
    
    %% variant subsystem modes
    properties
        VS_modes (1,1) F_VS_mode_Cl;
    end
    
end