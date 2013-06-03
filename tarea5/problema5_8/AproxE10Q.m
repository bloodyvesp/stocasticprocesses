function r = AproxE10Q(h)
	Q = [-2 2; 3 -3];


	lim = floor(10/h);

	P = eye(2);
	for i=[1:lim]
		R = h*(P*Q);
		P = P + R;
	endfor
	
	P
	r=max(max(R));
endfunction