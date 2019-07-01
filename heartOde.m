#!/bin/false

function zp = heartOde(t, z)
    zp = [0; 0];

    global B L0;
    zp(1) = z(2);
    zp(2) = -100 * (z(2)*z(1)^2 - B*z(2) + z(1) - L0);
endfunction
