
directorio = "C:/Users/Hector/Dropbox/StocasticProcesses (1)/tareas/Hector/stocasticprocesses/tarea2/problema2_1/graficas_inciso2_1_4";
setwd(directorio);


graficaDeProbabilidadDeQueC_pSupereAN = function (n, rejilla = 1000)
{
    p = (1:rejilla) / (rejilla);
    i = (1:n);

    resultado = rep(0, rejilla);
    
    for(j in (1:rejilla))
    {
      terminos     = (1-p[j])^(i-1) * p[j];
      resultado[j] = 1 -sum(terminos);
    }
    
    nombre = paste("probabilidadDeQueC_pSupere", n, ".png", sep="");
    png(nombre);
    plot(p, resultado, xlab = "p", ylab = "1 - \\sum_{i = 1}^{n} (1-p)^{i-1} p");
    dev.off();
    plot.new();
}