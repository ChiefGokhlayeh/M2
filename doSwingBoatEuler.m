#!/usr/bin/octave -qf

clear;

global g m k l;
g = 9.81; # m/s^2
m = 100; # Kg
k = 10; # Kg*m/s
l = 2; # m

h = 0.001;

t = 0:h:30;
[phi, dotphi] = swingBoatEuler(t, pi, 3);

plot(phi, dotphi);
plot([t 30+h], phi, ":r");

k = 1;
while k < length(t)
    t0 = clock();
    clf();
    swingBoatDraw(t(k), phi(k));

    dt = etime(clock(), t0);
    k += round((1/h)*dt);
endwhile
