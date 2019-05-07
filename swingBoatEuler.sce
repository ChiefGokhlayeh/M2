clear;
exec swingBoatOde.sci;
exec swingBoatEuler.sci;

global g m k l;
g = 9.81; // m/s^2
m = 100; // Kg
k = 10; // Kg*m/s
l = 2; // m

t = 0:0.01:10;
[phi, dotphi] = swingBoatEuler(t, %pi/6, 0);
plot(t, phi, '-b', t, dotphi, ':b');
