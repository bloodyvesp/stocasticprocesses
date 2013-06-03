function [t,x]	= MarkovGraficable(Tmax, T, X)
	t = [0:0.001:Tmax];
	for i=[1:length(t)]
		j = sum(T <= t(i));
		x(i) = X(j);
	endfor;
endfunction