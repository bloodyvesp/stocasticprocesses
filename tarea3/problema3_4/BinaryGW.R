k=[10];
aux=k(length(k));

while (aux>0 && length(k)<1000)
	k=[k;2*binornd(aux,.5)];
	aux=k(length(k));
endwhile

plot(k)
