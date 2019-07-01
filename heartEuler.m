#!/bin/false

function [x, dotx] = heartEuler(t, x0, dotx0)
    z = [x0; dotx0];
    x = [x0];
    dotx = [dotx0];
    for k = 1:length(t)
        if k == 1
            h = t(k + 1) - t(k);
        else
            h = t(k) - t(k - 1);
        endif
        z = z + h * heartOde(t, z);
        x = [x, z(1)];
        dotx = [dotx, z(2)];
    endfor
endfunction
