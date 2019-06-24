#!/usr/bin/octave -qf

[y, T] = fourierPeriodicFun([], 1);
x = -T:0.01:2*T;
[y, T] = fourierPeriodicFun(x, 1);
hold on
plot(x, y, 'linewidth', 2);

samples = 20;
h = 1/samples;
t = h:h:T;
[f, T] = fourierPeriodicFun(t, 1);
plot(t, f, '.r', "markersize", 8);

I = fourierInt(f, h);
disp(I);
hold off
