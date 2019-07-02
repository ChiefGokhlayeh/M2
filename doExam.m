#!/usr/bin/octave -qf

clear();

figure(1);
x = [-8 -4  0   4   8];
y = [ 6 -6  6  -6   6];

XY = [x; y];
alpha = 18 * pi/180;
R=[cos(alpha) -sin(alpha);
    sin(alpha) cos(alpha)];
R_XY=R*XY;

hold on;
grid on;
grid minor on;
plot(x, y, "-000000", "linewidth", 2);
plot(R_XY(1, :), R_XY(2, :), "-r", "linewidth", 2);
axis([-10 10 -10 10], "square");
hold off;
