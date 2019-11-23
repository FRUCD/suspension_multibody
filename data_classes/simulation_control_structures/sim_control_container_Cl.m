classdef sim_control_container_Cl
    %% SIM_CONTROL_CONTAINER_CL Sim Control Container Class
    %   holds the sim control structures for each end
    
    %% references to parameter structures
    properties
        F_ref (1,1) F_end_Cl;
        R_ref (1,1) R_end_Cl;
        G_ref (1,1) general_SY_parameters_Cl;
    end
    
    %% simulation control structures
    properties
        F (1,1) F_sim_control_Cl;
        R (1,1) R_sim_control_Cl;
    end
    
    %% get functions for simulation control structures
    methods
        function out = get.F(obj)
            obj.F.F_ref = obj.F_ref;
            obj.F.R_ref = obj.R_ref;
            obj.F.G_ref = obj.G_ref;
            out = obj.F;
        end
        function out = get.R(obj)
            obj.R.F_ref = obj.F_ref;
            obj.R.R_ref = obj.R_ref;
            obj.R.G_ref = obj.G_ref;
            out = obj.R;
        end
    end
    
end