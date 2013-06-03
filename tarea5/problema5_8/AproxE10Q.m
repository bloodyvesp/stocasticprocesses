function P = AproxE10Q(h)
    Q = [-2 2; 3 -3];

    P = eye(2);
    lim = floor(10/h);
    for i=[1:lim]
        R = h*(Q*P);
        P = P + R;
    endfor
endfunction