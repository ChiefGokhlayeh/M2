clear;
exec swingBoatOde.sci;
exec swingBoatEuler.sci;

global g m k l;
g = 9.81; // m/s^2
m = 100; // Kg
k = 10; // Kg*m/s
l = 2; // m

t = 0:0.001:30;
[phi, dotphi] = swingBoatEuler(t, %pi, 3);
plot(phi, dotphi);
plot(t, phi, ":r");

for k = 1:length(t) do
    t0 = getdate();
    drawlater();
    clf();
    swingBoatDraw(t(k), phi(k));

    drawnow();
    dt = etime(getdate(), t0);
    disp(dt);
end
