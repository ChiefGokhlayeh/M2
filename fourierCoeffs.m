function [a0,a,b] = fourierCoeffs(t, f, T, n)
    # INPUT
    # t ... time values
    # f ... function values at time t
    # T ... period
    # n ... order
    #
    # OUTPUT
    # a0, a, b ... fourier coefficients

    h = T/length(t);
    a0 = (2/T)*fourierInt(f, h);
    w = 2*pi/T;
    for k = 1:n
        a(k) = (2/T)*fourierInt(f.*cos(k*w*t), h);
        b(k) = (2/T)*fourierInt(f.*sin(k*w*t), h);
    endfor

endfunction
