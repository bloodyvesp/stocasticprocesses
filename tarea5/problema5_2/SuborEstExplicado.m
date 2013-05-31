C=1;
e=.000001;
alpha=1/2;
lambda=C/e^alpha;
T=1;

##Se estiman la cantidad de saltos al tiempo T.
N=poissrnd(lambda*T, 1);

##Se estiman los incrementos de X.  Aquí se utiliza
##el resultado del inciso anterior, dodne (rand(N,1).^(1/(alpha)))
##no significa otra cosa mas que $t^{1/alpha}$. Se está suponiendo que
##$t^{1/alpha} X_1$ va variando en incrementos tan chiquitos como e y
##entonces se estima el valor de los incrementos que debería tener X.
dx=e./(rand(N,1).^(1/(alpha)));

##Se acumulan los incrementos de X.
s=[0;cumsum(dx)];

##Se toman N puntos uniformemente distribuidos en [0, T] y se ordenan 
##(Se está parametrizando para graficar).
u=T*rand(N,1);
t=[0;sort(u)];


##Se grafica.
subplot(1,2,1)
plot(t(2:length(t)),dx)
subplot(1,2,2)
plot(t,s)
