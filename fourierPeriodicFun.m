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

    switch bsp # "select expr," in scilab
        case 1 # "case expr1 then" in scilab
            T = 8;
            for k = 1:length(t)
                t(k) = mod(t(k), T); # modulo in scilab

                if t(k) >= T/2 # modulo in scilab
                    f(k) = 0;
                else
                    f(k) = t(k);
                endif
            endfor
        case 2
            T = 2;
            for k = 1:length(t)
                t(k) = mod(t(k), T); # modulo in scilab

                if t(k) >= T/2
                    f(k) = -1;
                else
                    f(k) = 1;
                endif
            endfor
    endswitch
endfunction
