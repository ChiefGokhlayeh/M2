#!/usr/bin/octave -qf

[y, T] = fourierPeriodicFun([], 1);
x = -T:0.01:2*T;
[y, T] = fourierPeriodicFun(x, 1);
plot(x, y, 'linewidth', 2);

samples = 20;
h = 1/samples;
t = h:h:T;
[f, T] = fourierPeriodicFun(t);
plot(t, f, '.r', 'marksize', 8);

I = fourierInt(f, h);
disp(I);
