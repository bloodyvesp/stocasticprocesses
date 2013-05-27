Estas tareas utilizan una librería llamada pgfornament.
Las librerías parecen sólo estar hechas para funcionar con TexLive.
En caso de usar MikTek, ir directamente a la Solución 2 que
indica como "desactivar" el uso de dichas librerías.

Hay dos maneras de conseguir compilar el códgio:
Solución 1------------------------------------------------------------------------------------

Esta librería tiene que instalarse para poder compilar el código tal cual está.

En la raiz de proyecto se encuentra un archivo nombrado "pgfornament.zip" que contiene las instrucciones y las librerías.
las instrucciones se encuentran en el archivo ornaments.pdf, página 5.

Después de poner los archivos mencionados en las instrucciones en los lugares mencionados en las instrucciones, 
desde la terminal hay que ejectuar texhash:
 
usuer@location> texhash

Y con esto tex reconocerá los cambios hechos en el sistema de librerías que se han hecho.

Solución 2-------------------------------------------------------------------------------------
En tareas.tex hay que cambiar la linea que dice:
	\input{definiciones/ornamentos.tex}
por la linea:
	%\input{definiciones/ornamentos.tex}
(Esta linea debería ser la número 40).

Si esto último no funciona, entonces también cambie la linea que dice
    \RequirePackage{pgfornament,tkzexample,tikzrput}  
por la linea:
    %\RequirePackage{pgfornament,tkzexample,tikzrput}
(Esta linea debería ser la número 1).