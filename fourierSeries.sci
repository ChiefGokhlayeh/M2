function p = fourierSeries(t,a0,a,b,T)
//
// INPUT
// t ... tme values
// a0, a, b ... fourier coefficients    
// T ... period
//
// OUTPUT
// p ... values of fourier series at time t

    w = 2*%pi/T;
    p = a0/2*ones(t);
    for k = 1:length(a)
        p = ...
    end
    
endfunction
