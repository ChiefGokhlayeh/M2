function p = fourierSeries(t, a0, a, b, T)
    # INPUT
    # t ... tme values
    # a0, a, b ... fourier coefficients
    # T ... period
    #
    # OUTPUT
    # p ... values of fourier series at time t

    w = 2*pi/T;
    p = a0/2*ones(1, length(t));

    for k = 1:length(a)
        p = p + a(k)*cos(k*w*t) + b(k)*sin(k*w*t);
    endfor

endfunction
