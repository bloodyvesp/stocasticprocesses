clear;			
#Se define el parametro lambda en [0, 1].
	lambda = 0.915432451654213;					

#Numero de saltos. 
	n = 50;							

#Muestra para S_1, S_2, .....               
	S = exprnd(1/lambda, n, 1);	
	
#Aqui se calculan los tiempos
#de salto.   
	for i=1:n											
		T(i, 1)	= sum(S(1:i));		
	endfor                          

GraficaPoisson(T, lambda);         