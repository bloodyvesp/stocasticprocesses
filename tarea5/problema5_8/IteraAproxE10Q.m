h = 1/3;
r=1;
i=1;
E10Q = expm(10*[-2 2; 3 -3]);
while( r > 0.000001)
    r = max(max(abs(AproxE10Q(h) - E10Q)));
    h = h - h/10000;
    i=i+1;
endwhile
h