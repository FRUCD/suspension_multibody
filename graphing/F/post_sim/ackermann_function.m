function [ackermann_percent, steer_diff] = ...
    ackermann_function(...
        WB, ...
        TR, ...
        L_steer, ...
        R_steer)
    
    average_steer = (L_steer + R_steer) / 2;
    steer_diff = L_steer - R_steer;
    rear_radius = WB ./ tand(average_steer);
    L_ackermann = atan2d(WB, rear_radius - TR / 2);
    R_ackermann = atan2d(WB, rear_radius + TR / 2);
    ackermann_diff = L_ackermann - R_ackermann;
    ackermann_percent = steer_diff ./ ackermann_diff * 100;
    ackermann_percent = ackermann_percent .* (ackermann_percent < 1000);
end