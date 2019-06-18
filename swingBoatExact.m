function [phi, dotphi] = swingBoatExact(t, phi0, dotphi0)
    # INPUT
    #  t ... time
    #  phi0 ... initial angle
    #  dotphi0 ... initial angular velocity
    #
    # OUTPUT
    #  phi ... angle at time t
    #  dotphi ... angular velocity at time t
    global g m k l;

    delta = k / (2 * m);
    omega0 = sqrt(g / l);
    omegaD = sqrt(omega0.^2 - delta.^2);

    if delta < omega0
        c1 = phi0;
        c2 = (dotphi0 + delta * phi0) / omegaD;
        phi = exp(-delta .* t) .* (c1 * cos(omegaD .* t) + c2 * sin(omegaD .* t));
        dotphi = -delta * exp(-delta .* t) .* (c1 * cos(omegaD .* t) + c2 * sin(omegaD .* t))
        + omegaD * exp(-delta .* t) .* (-c1 * sin(omegaD .* t) + c2 * cos(omegaD .* t));
    else
        error('not implemented!');
    endif
endfunction
