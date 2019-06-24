#!/bin/false

function [f, T] = fourierPeriodicFun(t, bsp)
    # INPUT
    # t ... time values
    # bsp ... example
    #
    # OUTPUT
    # f ... function values at time t
    # T ... period

    f = [];
    T = 0;

    switch bsp
        case 1
            T = 8;
            for k = 1:length(t)
                while t(k) >= T
                    t(k) = t(k) - T;
                endwhile
                while t(k) < 0
                    t(k) = t(k) + T;
                endwhile
                if t(k) >= T/2
                    f(k) = 0;
                else
                    f(k) = t(k);
                endif
            endfor
    endswitch
endfunction
