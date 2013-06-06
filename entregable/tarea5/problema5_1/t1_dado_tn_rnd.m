function _t1_dado_tn_rnd = t1_dado_tn_rnd(n, t)
	r = rand();
	aux = 1-r;
	aux = aux.^(1./(n-1));
	aux = 1-aux;
	_t1_dado_tn_rnd = aux.*t;
endfunction;