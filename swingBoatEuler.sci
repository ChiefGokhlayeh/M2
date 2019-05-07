function [phi, dotphi] = swingBoatEuler(t, phi0, dotphi0)
    z = [phi0;  dotphi0];
    for k = 1:length(t)
        h = 0.001;
        z = z + h * swingBoatOde(t, z);
    end
endfunction
