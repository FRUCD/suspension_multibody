function Ackermann_Analysis(~, out)
    
    %% No Delay Steer Angle
    del_SW = out.F.RK.position.Data ./ 0.0254 .* (360/4.5); % degrees
    
    %% Ackerman Percentage
    
    iAck = 180/pi * atan( 1554 ./ (1554./tand(out.FR.WP.orientation.Data(:,4)) - 1220));
    
    AckDif = iAck - out.FR.WP.orientation.Data(:,4);
    
    RealDif = (- out.FL.WP.orientation.Data(:,4) - ...
        out.FR.WP.orientation.Data(:,4));
    
    AckPer = RealDif./AckDif * 100;
    %AckPer = RealDif./iAck * 100;
    
    %% Plots 
    
    figure
    hold on
    plot(del_SW,-out.FL.WP.orientation.Data(:,4))
    plot(del_SW,out.FR.WP.orientation.Data(:,4))
    
    xlabel('Wheel Angle [deg]')
    ylabel('Steer Angle [deg]')
    
    legend({'Inner Tire','Outer Tire'})
    
    figure
    hold on
    plot(del_SW(del_SW > 20), AckPer(del_SW > 20))
    
    xlabel('Wheel Angle [deg]')
    ylabel('Ackermann Precent')

end