// https://dspillustrations.com/pages/posts/misc/the-sound-of-harmonics-approximating-instrument-sounds-with-fourier-series.html

clear();

exec fourierIntJK.sci
exec fourierCoeffsJK.sci
exec fourierSeriesJK.sci

// hints for Matlab users:
// loadwave(...) -> audioread(...)
// playsnd(...) -> sound(...)
 
//<-fourierSaxophone--
// load wave file
[data,info] = loadwave('saxophone.wav');
samples = info(3);
channels = info(5);
plot(data(1,:));

// find periodic sequence
h = 1/samples;
T = 128/samples;
t = h:h:T;
f = data(1,50250:50250+127);

// fourier coefficients and series
[a0,a,b] = fourierCoeffs(t,f,T,15);
p = fourierSeries(t,a0,a,b,T);

// spectrum
A = [abs(a0);sqrt(a.^2+b.^2)];
a = a(1:10);
b = b(1:10);

// sound
tt = 0:h:4;
pp = fourierSeries(tt,a0,a,b,T);
playsnd(data(1,:),samples);
sleep(5000);
playsnd(pp,samples);
//--fourierSaxophone->

f0 = figure(0);
clf;
set(f0,'figure_size',[600,600]);
set(f0,'background',color('white'));
plot(data(1,:));
set(gca(),'font_size',3);
set(gca(),'margins',[0.1 0.1 0.1 0.1 ]);
//xs2pdf(f0,'saxophoneWave');

f1 = figure(1);
clf();
set(f1,'figure_size',[600,600]);
set(f1,'background',color('white'));
plot(data(1,:));
mtlb_axis([50000 50500 -1 1]);
plot(50250:50250+127,f,'.r','marksize',3);
set(gca(),'font_size',3);
set(gca(),'margins',[0.1 0.1 0.1 0.1 ]);
//xs2pdf(f1,'saxophoneZoom');

f2 = figure(2);
clf();
set(f2,'figure_size',[600,600]);
set(f2,'background',color('white'));
plot(data(1,:));
mtlb_axis([50000 50500 -1 1]);
plot(50250:50250+127,p,'-r');
set(gca(),'font_size',3);
set(gca(),'margins',[0.1 0.1 0.1 0.1 ]);
//xs2pdf(f2,'saxophoneFourier');

f3 = figure(3);
clf();
set(f3,'figure_size',[600,500]);
set(f3,'background',color('white'));
bar(0:length(A)-1,A);
set(gca(),'font_size',3);
set(gca(),'margins',[0.1 0.1 0.1 0.1 ]);
//xs2pdf(f3,'saxophoneSpectrum');
