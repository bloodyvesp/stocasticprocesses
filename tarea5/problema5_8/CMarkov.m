clear;
#se define Q
Q = [-2 2; 3 -3];

#se define el número de iteraciones
n = 1000;
#se define el tiempo en que se detendrá
fin = 10;
#se toma un estado inicial
X(1) = CambioDeEstado(0, [0, 0]);

for i=1:n
	estado_actual = X(i);
	p = expm((1/n)*Q)(estado_actual,:);
	X(i+1) = CambioDeEstado(estado_actual, p);
endfor

#se define el tiempo
t = fin*([0:1/n:1]);
plot(t,X)