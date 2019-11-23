function F_camber_and_toe_graphs(~, out)
    figure(...
        'Name', 'Front Camber and Toe Graphs', ...
        'NumberTitle', 'off', ...
        'Color', 'white', ...
        'WindowState', 'maximized');
    
    subplot(2,1,1);
    hold on;
    title('Left Wheel Camber');
    plot(out.F.SY.roll_angle.Data(:, 1), out.FL.WP.orientation.Data(:, 5));
    axis([-2.2,2.2,-2.1,-1]);
    grid on;
    xlabel('Roll Angle (deg)');
    ylabel('camber (deg)');
    hold off;
    
    subplot(2,1,2);
    hold on;
    title('Left Wheel Toe');
    plot(out.F.SY.roll_angle.Data(:, 1), out.FL.WP.orientation.Data(:, 4));
    axis([-2.2,2.2,-0.2,0.1]);
    grid on;
    xlabel('Roll Angle (deg)');
    ylabel('toe (deg)');
    hold off;
end