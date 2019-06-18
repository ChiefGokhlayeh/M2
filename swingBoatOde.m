#!/bin/false

function zp = swingBoatOde(t, z)
    # INPUT
    #  t ... time
    #  z = [z(1); z(2)] ... state vector
    #
    # OUTPUT
    #  zp = [zp(1); zp(2)] ... derrivatives

    zp = [0; 0];

    global g k m l;
    zp(1) = z(2);
    zp(2) = -(k / (m * l)) * z(2) - (g / l) * sin(z(1));
endfunction
