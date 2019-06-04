function [f,T] = fourierPeriodicFun(t,bsp)

// INPUT
// t ... time values
// bsp ... example
//
// OUTPUT
// f ... function values at time t
// T ... period

if  argn(2) < 2
    bsp = 1;
end

f = [];

switch bsp
case 1 
    T = 8;
    for k = 1:length(t)
        while t(k) >= T
            t(k) = t(k) - T;
        end
        while t(k) < 0
            t(k) = t(k) + T;
        end
        if t(k) >= T/2 then
            f(k) = 0;
        else
            f(k) = t(k);
        end
    end
end    
endfunction
