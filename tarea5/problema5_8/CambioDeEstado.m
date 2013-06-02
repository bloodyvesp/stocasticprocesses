function _estado_final = CambioDeEstado(estado, vector_probabilidades)
	r = rand();
	if(estado == 0)
		_estado_final = ceil(r*length(vector_probabilidades));
		return;
	endif

	suma_probabilidades = round(sum(vector_probabilidades)*1000000)/1000000;
	if(suma_probabilidades != 1)
		error("El vector de probabilidades no suma 1. Suma %f", suma_probabilidades)
	endif
	
	x = cumsum(vector_probabilidades);
	y = r <= x; 
	_estado_final = find(y, 1);
endfunction