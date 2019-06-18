#!/bin/false

function swingBoatDraw(t,phi)

    hold on;
    axis([-5 5 -3 3]);
    # ground
    fill([-2 2 2 -2 -2],[-3.2 -3.2 -3 -3 -3.2],'g');

    # frame
    plot([-1.5 0 1.5],[-3 0 -3],'-b','linewidth',5);
    plot([-1 1],[-2 -2],'-b','linewidth',5);

    # rotation
    R = [cos(phi) -sin(phi); sin(phi) cos(phi)];

    # boat
    boat = [ 0.5  0.8 -0.8 -0.5  0.5 nan -0.4 0  0.4;...
                 -2.8 -2.3 -2.3 -2.8 -2.8 nan -2.3 0 -2.3];
    boat = R*boat;
    plot(boat(1,:),boat(2,:),'-r','linewidth',3);

    # head
    t = linspace(0,2*pi,20);
    head = [0.13*cos(t);-1.1+0.13*sin(t)];
    head = R*head;
    plot(head(1,:),head(2,:),'-k','linewidth',3);

    # body
    body = [ 0.0  0.0  0.2  0.2;...
                 -1.23 -2.0 -2.4 -2.8];
    body = R*body;
    plot(body(1,:),body(2,:),'-k','linewidth',3);

    # arm
    arm = [ 0.0  0.1  0.2;...
                -1.4 -1.7 -1.3];
    arm = R*arm;
    plot(arm(1,:),arm(2,:),'-k','linewidth',3);

    hold off;
    drawnow();

endfunction
