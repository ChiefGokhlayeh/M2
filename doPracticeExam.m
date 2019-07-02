#!/usr/bin/octave -qf

# Question 1
A = [
    1 1 1 1 1;
    1 2 4 8 16;
    1 3 9 27 81;
    1 4 16 64 256;
    1 5 25 125 625
];
b = [
    0;
    0;
    1;
    0;
    0
];
c = A \ b;
t = 0:0.001:6;
y = c(1) + c(2)*t + c(3)*t.^2 + c(4)*t.^3 + c(5)*t.^4;
figure(1);
hold on;
grid on;
plot(t, y, "-b");
axis([0 6 -1 2]);
p_x = [1 2 3 4 5];
p_y = [0 0 1 0 0];
plot(p_x, p_y, "*r");

# Question 2
global B L0;
B=1;
L0=0.5;
x0=0.6;
dotx0=0;

h = 0.001;
t = 0:h:10;
[x, dotx] = heartEuler(t, x0, dotx0);

figure(2);
plot(x, dotx);
figure(3);
plot([t 10+h], x, ":r");

# Question 3
h = 1/100;
t = -2:h:4;
[f, T] = fourierPeriodicFun(t, 2);
figure(4);
hold on;
plot(t, f, '.b', "markersize", 8);

n = 10;
[a0, a, b] = fourierCoeffs(t, f, T, n);

p = fourierSeries(t, a0, a, b ,T);
plot(t, p, '-r', 'linewidth', 2);
hold off;

A = [abs(a0), sqrt(a.^2+b.^2)];
figure(5);
bar(0:1:n, A);
