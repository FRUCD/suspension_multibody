function ackermann_graphs(SP, out)
    
    %% calculate ackermann
    [ackermann_percent, steer_diff] = ...
        ackermann_function( ...
            SP.G.wheelbase, ...
            SP.F.SY.static_track * 0.0254, ...
            - out.FL.WP.orientation.Data(:, 4), ...
            out.FR.WP.orientation.Data(:, 4));
    average_steer = ...
        (- out.FL.WP.orientation.Data(:, 4) ...
        + out.FR.WP.orientation.Data(:, 4)) ...
        / 2;
    
    %% make plots
    figure( ...
        'Name', 'Steer Angles', ...
        'NumberTitle', 'off', ...
        'Color', 'white', ...
        'WindowState', 'maximized');
    hold on;
    title('Steer Angles');
    plot(out.F.RK.position.Data, -out.FL.WP.orientation.Data(:, 4), 'r');
    plot(out.F.RK.position.Data, out.FR.WP.orientation.Data(:, 4), 'g');
    plot(out.F.RK.position.Data, average_steer, 'b');
    grid on;
    legend('Left Wheel','Right Wheel', 'Average')
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