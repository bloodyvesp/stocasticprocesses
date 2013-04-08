Estas tareas utilizan una librería llamada pgfornament.

Hay dos maneras de conseguir compilar el códgio:

Solución 1------------------------------------------------------------------------------------
Esta librería tiene que instalarse para poder compilar el código tal cual está.

En la raiz de proyecto se encuentra un archivo nombrado "pgfornament.zip" que contiene las instrucciones y las librerías.
las instrucciones se encuentran en el archivo ornaments.pdf, página 5.

Después de poner los archivos mencionados en las instrucciones en los lugares mencionados en las instrucciones desde la terminal
hay que ejectuar texhash:
 
usuer@location> texhash

Y con esto tex reconocerá los cambios.

Solución 2-------------------------------------------------------------------------------------
En tareas.tex hay que cambiar la linea que dice:
	\input{definiciones/ornamentos.tex}
por la linea:
	%\input{definiciones/ornamentos.tex}
(Esta linea debería ser la número 33).