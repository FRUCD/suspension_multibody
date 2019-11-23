function ackermann_graphs(SP, out)
    
    %% old fucked up shit
    
    %{
    
    ackerman = atand(60 ./ (60 ./ tand(out.FR.WP.orientation.Data(:, 4)) - SP.F.SY.static_track)) ...
               .* (0 < (out.FR.WP.orientation.Data(:, 4) - out.FL.WP.orientation.Data(:, 4))) ...
               + atand(60 ./ (60 ./ tand(out.FL.WP.orientation.Data(:, 4)) - SP.F.SY.static_track)) ...
               .* (0 > (out.FR.WP.orientation.Data(:, 4) - out.FL.WP.orientation.Data(:, 4)));
    
    ackerman_percent = (out.FR.WP.orientation.Data(:, 4) .* (0 < (out.FR.WP.orientation.Data(:, 4) - out.FL.WP.orientation.Data(:, 4))) ...
                       + out.FL.WP.orientation.Data(:, 4) .* (0 > (out.FR.WP.orientation.Data(:, 4) - out.FL.WP.orientation.Data(:, 4)))) ...
                       ./ ackerman;
    
    ackerman_steer_angle_difference = - atand(60 ./ (60 ./ tand((out.FR.WP.orientation.Data(:, 4) - out.FL.WP.orientation.Data(:, 4)) / 2) - SP.F.SY.static_track / 2)) ...
                                      + atand(60 ./ (60 ./ tand((out.FR.WP.orientation.Data(:, 4) - out.FL.WP.orientation.Data(:, 4)) / 2) + SP.F.SY.static_track / 2));
                                   
    ackerman_steer_angle_difference_percent = (out.FL.WP.orientation.Data(:, 4) + out.FR.WP.orientation.Data(:, 4)) ./ ackerman_steer_angle_difference;
    
    ackerman_steer_angle_difference_percent = ackerman_steer_angle_difference_percent ...
                                              .* ((ackerman_steer_angle_difference < -0.5) | (ackerman_steer_angle_difference > 0.5));
    
    %}
    
    %% calculate ackermann
    [ackermann_percent, steer_diff] = ...
        ackermann_function( ...
            SP.G.wheelbase, ...
            SP.F.SY.static_track * 0.0254, ...
            - out.FL.WP.orientation.Data(:, 4), ...
            out.FR.WP.orientation.Data(:, 4));
    
    %% make plots
    figure( ...
        'Name', 'Individual Steer Angles', ...
        'NumberTitle', 'off', ...
        'Color', 'white', ...
        'WindowState', 'maximized');
    hold on;
    title('Steer Angles');
    plot(out.F.RK.position.Data, -out.FL.WP.orientation.Data(:, 4), 'r');
    plot(out.F.RK.position.Data, out.FR.WP.orientation.Data(:, 4), 'g');
    grid on;
    legend('Left Wheel','Right Wheel')
    xlabel('Rack Position (in)');
    ylabel('Steer Angle (deg)');
    hold off;
    
    figure( ...
        'Name', 'Steer Angle Difference', ...
        'NumberTitle', 'off', ...
        'Color', 'white', ...
        'WindowState', 'maximized');
    hold on;
    title('Steer Angle Difference');
    plot(out.F.RK.position.Data, steer_diff);
    grid on;
    xlabel('Rack Position (in)');
    ylabel('Steer Angle Difference (deg)');
    hold off;
    
    figure( ...
        'Name', 'Ackemann Plot', ...
        'NumberTitle', 'off', ...
        'Color', 'white', ...
        'WindowState', 'maximized');
    hold on;
    title('Ackermann');
    plot(out.F.RK.position.Data, ackermann_percent);
    grid on;
    xlabel('Rack Position (in)');
    ylabel('Ackerman Percent');
    hold off;
    
    
    %{
    subplot(3, 1, 3);
    hold on;
    title('Ackerman');
    plot(out.F.RK.position.Data, ackerman_percent);
    grid on;
    xlabel('Rack Position (in)');
    ylabel('Ackerman Percent (deg)');
    hold off;
    %}
    
end