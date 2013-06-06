clear;			
#Se define el parametro lambda en [0, 1].
	lambda = rand();					
	t = 50;

#Se calcula la cantidad de saltos al tiempo t
	N_t = poissrnd(lambda*50);
	T(N_t) = t;
	T(1)=0;
	for i = 1:(N_t-1)
		T(i+1) = t1_dado_tn_rnd(N_t - i + 1, t - T(i));
		T(i+1) = T(i+1) + T(i);
	endfor;
	T = T(2:end);

GraficaPoisson(T, lambda);