function R_roll_center_graphs_old(~, out)
    H_1 = figure(...
        'Name', 'Roll and Instant Center Plots', ...
        'NumberTitle', 'off', ...
        'Color', 'white');
    set(H_1, 'WindowState', 'maximized');
    
    subplot(3,2,1);
    hold on
    title('Front Left Instant Center Lateral Position')
    plot(...
        out.R.SY.roll_angle.Data(:, 1), ...
        25.4 * out.RL.SY.instant_center.Data(:, 1))
    grid on;
    xlabel('Roll Angle (deg)')
    ylabel('Y (mm)')
    hold off
    
    subplot(3,2,2);
    hold on
    title('Front Left Instant Center Vertical Position')
    plot(...
        out.R.SY.roll_angle.Data(:, 1), ...
        25.4 * out.RL.SY.instant_center.Data(:, 2))
    grid on;
    xlabel('Roll Angle (deg)')
    ylabel('Z (mm)')
    hold off
    
    subplot(3,2,3);
    hold on
    title('Front Right Instant Center Lateral Position')
    plot(...
        out.R.SY.roll_angle.Data(:, 1), ...
        25.4 * out.RR.SY.instant_center.Data(:, 1))
    grid on;
    xlabel('Roll Angle (deg)')
    ylabel('Y (mm)')
    hold off
    
    subplot(3,2,4);
    hold on
    title('Front Right Instant Center Vertical Position')
    plot(...
        out.R.SY.roll_angle.Data(:, 1), ...
        25.4 * out.RR.SY.instant_center.Data(:, 2))
    grid on;
    xlabel('Roll Angle (deg)')
    ylabel('Z (mm)')
    hold off
    
    subplot(3,2,5);
    hold on
    title('Roll Center Lateral Position')
    plot(...
        out.R.SY.roll_angle.Data(:, 1), ...
        25.4 * out.R.SY.roll_center.Data(:, 1))
    grid on;
    xlabel('Roll Angle (deg)')
    ylabel('Y (mm)')
    hold off
    
    subplot(3,2,6);
    hold on
    title('Roll Center Vertical Position')
    plot(...
        out.R.SY.roll_angle.Data(:, 1), ...
        25.4 * out.R.SY.roll_center.Data(:, 2))
    grid on;
    xlabel('Roll Angle (deg)')
    ylabel('Z (mm)')
    hold off
    
    H_2 = figure(...
        'Name', 'Roll and Instant Center Paths', ...
        'NumberTitle', 'off', ...
        'Color', 'white');
    set(H_2, 'WindowState', 'maximized');
    paths_axis_handle = axes;
    set(paths_axis_handle, 'XDir', 'reverse');
    clear paths_axis_handle;
    hold on;
    title('Front Roll and Instant Center Paths');
    plot(...
        25.4 * out.R.SY.roll_center.Data(:, 1), ...
        25.4 * out.R.SY.roll_center.Data(:, 2));
    plot(...
        25.4 * out.RL.SY.instant_center.Data(:, 1), ...
        25.4 * out.RL.SY.instant_center.Data(:, 2));
    plot(...
        25.4 * out.RR.SY.instant_center.Data(:, 1), ...
        25.4 * out.RR.SY.instant_center.Data(:, 2));
    legend('Roll Center', 'Left Instant Center', 'Right Instant Center');
    axis equal;
    grid on;
    xlabel('Y (mm)');
    ylabel('Z (mm)');
    hold off;
end