for k=[1:10000]
	[T,X]	= SimMarkov(10);
	j = sum(T <= 10);
	x(k) = X(j);
endfor	

p1 = mean(x-1)
p2 = 1-p1

##resultado devuelto en consola
##p1 = 0.39940
##p2 = 0.60060