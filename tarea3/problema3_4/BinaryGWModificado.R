k=[1000];
aux=k(length(k));
tic;
while (aux>0 && length(k)<1000000)
	if(mod(length(k), 1000) == 0)
		printf(strcat("iteracion: ",  int2str(length(k)), "; vivos: ", int2str(aux), "\n"))
	endif
	k=[k;2*binornd(aux,.5)];
	aux=k(length(k));
endwhile
toc;
plot(k)