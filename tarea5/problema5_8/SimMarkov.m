function [T,X]    = SimMarkov(Tmax)
    X(1) = ceil(2*rand());
    T(1) = 0;
    
    i=2;
    while max(T) <= Tmax;
        estado_anterior = X(i-1);
        
        #cambia el estado. 
        X(i) = estado_anterior + (-1)^(estado_anterior + 1);
    
        #calcula el tiempo de salto siguiente, aprovechando 
        #que los estados son 1 y 2. Y las tasas 2 y 3 
        #(por eso el +1 en los parametros
        # de la variable exponencial. 
        T(i) = exprnd(1/(estado_anterior + 1)) + T(i-1);
        i = i+1;
    endwhile
endfunction