clear;			
#Se define el parametro lambda en [0, 1].
	lambda = rand();					
	t = 50;

#Se calcula la cantidad de saltos al tiempo t
	N_t = poissrnd(lambda*50);
	T = sort(rand(N_t, 1)) * t;
	T(N_t) = T(N_t - 1);
	

GraficaPoisson(T, lambda);