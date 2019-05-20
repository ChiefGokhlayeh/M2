function [phi, dotphi] = swingBoatEuler(t, phi0, dotphi0)
    z = [phi0;  dotphi0];
    phi = [];
    dotphi = [];
    for k = 1:length(t)
        if k == 1 then
            h = t(k + 1) - t(k)
        else
            h = t(k) - t(k - 1);
        end
        z = z + h * swingBoatOde(t, z);
        phi = [phi, z(1)];
        dotphi = [dotphi, z(2)];
    end
endfunction
