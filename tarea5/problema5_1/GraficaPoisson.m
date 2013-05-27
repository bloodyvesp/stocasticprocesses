function void = GraficaPoisson(T, lambda)
	n = length(T);
	#Se define la rejilla para graficar 
	#(precision de milesimas).
		x = (0: .001: T(n))';			


	#Se calculan las alturas.               
		for i=1:length(x)
			y(i, 1) = sum(T < x(i));
		endfor

	#Se grafica.
		plot(x, y);
		grid("on");
		l = strcat("lambda = ", mat2str(lambda));
		text(-1, -2, l);
		t = strcat("Proceso de Poisson. ", int2str(n), " saltos.");
		title(t);
endfunction;