#!/bin/false

function [phi, dotphi] = swingBoatEuler(t, phi0, dotphi0)
    z = [phi0; dotphi0];
    phi = [phi0];
    dotphi = [dotphi0];
    for k = 1:length(t)
        if k == 1
            h = t(k + 1) - t(k)
        else
            h = t(k) - t(k - 1);
        endif
        z = z + h * swingBoatOde(t, z);
        phi = [phi, z(1)];
        dotphi = [dotphi, z(2)];
    endfor
endfunction
