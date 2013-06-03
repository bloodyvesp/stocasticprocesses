function void = GraficaMarkovDadoTmax(Tmax)
	[T,X] = SimMarkov(Tmax);
	[t,x] = MarkovGraficable(Tmax, T, X);
	plot(t, x, 0, 2.10, 0, 0.9);
endfunction 