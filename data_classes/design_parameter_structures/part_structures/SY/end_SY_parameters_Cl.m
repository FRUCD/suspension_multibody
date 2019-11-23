classdef end_SY_parameters_Cl
    %% END_SY_PARAMETERS_CL End System Parameters Class
    %   stores system level design parameters for an end of the car
    %   (generic) 
    
    %% design parameters
    properties
        %% system-level geometry parameters
        ride_height (1,1) double {is_design_parameter} = 0; % (in)
        static_track (1,1) double {is_design_parameter} = 0; % (in)
        static_toe (1,1) double {is_design_parameter} = 0; % (deg)
        static_camber (1,1) double {is_design_parameter} = 0; % (deg)
        static_caster (1,1) double {is_design_parameter} = 0; % (deg)
        WP_contact_patch_X (1,1) double {is_design_parameter} = 0; % (in)
        
        %% spring/damper parameters
        travel (1,1) double {is_design_parameter} = 0; % (m)
        roll_travel (1,1) double {is_design_parameter} = 0; % (deg)
        wheel_spring_rate (1,1) double {is_design_parameter} = 0; % (N/m)
        wheel_damping_rate (1,1) double {is_design_parameter} = 0; % (N/(m/s))
        damping_ratio (1,1) double {is_design_parameter} = 0; % (1)
        omega_n (1,1) double {is_design_parameter} = 0; % (Hz)
        roll_rate (1,1) double {is_design_parameter} = 0; % (N-m/deg)
        roll_damping_rate (1,1) double {is_design_parameter} = 0; % (N-m/(deg/s))
        roll_damping_ratio (1,1) double {is_design_parameter} = 0; % (1)
        roll_omega_n (1,1) double {is_design_parameter} = 0; % (Hz)
        
        %% motion ratio parameters
        MR_n_points (1,1) double {is_design_parameter} = 10; % (1)
        jounce_array double {is_MR_array} = zeros(10,1); % (m)
        SH_delta_array double {is_MR_array} = zeros(10, 1); % (m)
        MR_array double {is_MR_array} = zeros(10, 1); % (m/m)
        
        %% tire parameters
        cornering_force_coeffient (1,1) double {is_design_parameter} = 0; % (N/(m/s))
        cornering_moment_coeffient (1,1) double {is_design_parameter} = 0; % (N-m/(m/s))
        
    end
end