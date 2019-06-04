function [a0,a,b] = fourierCoeffs(t,f,T,n)
//
// INPUT
// t ... time values
// f ... function values at time t
// T ... period
// n ... order
//
// OUTPUT
// a0, a, b ... fourier coefficients
    
    h = T/length(t); 
    a0 = ...
    w = 2*%pi/T;
    for k = 1:n
        a(k) = ...
        b(k) = ...
    end
    
endfunction
