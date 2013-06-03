h = 1;
r=1;
while( r > 0.000001)
	r = AproxE10Q(h);
	h = h - h/10000;
endwhile
"terminó"
h