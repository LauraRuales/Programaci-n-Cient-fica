%Funcion que representa la variacion de la concentración, el tulrimo valor
%representa el valor de la concentracion para la que se quiere encontrar su
%raiz
syms x; 
Concentracion = inline(-139.34411 + (157570.1/(x + 273.25)) - (66423080/(x+273.15)^2) + ((1.2438*(10^10))/(x+273.15)^3) - ((8.621949*(10^11))/(x+273.15)^4) - log(14));
[ Raiz,Int] = Biseccion(Concentracion,-20, 10,0.5); 
fprintf('%s %d %s','El error absoluto de la temperatura igual a 0,05 grados se logra en', Int, 'iteracciones');

%% Parte b
syms x;
Concentracion8 = inline(-139.34411 + (157570.1/(x + 273.25)) - (66423080/(x+273.15)^2) + ((1.2438*(10^10))/(x+273.15)^3) - ((8.621949*(10^11))/(x+273.15)^4) - log(8));
Concentracion14 = inline(-139.34411 + (157570.1/(x + 273.25)) - (66423080/(x+273.15)^2) + ((1.2438*(10^10))/(x+273.15)^3) - ((8.621949*(10^11))/(x+273.15)^4) - log(14));
Concentracion10 = inline(-139.34411 + (157570.1/(x + 273.25)) - (66423080/(x+273.15)^2) + ((1.2438*(10^10))/(x+273.15)^3) - ((8.621949*(10^11))/(x+273.15)^4) - log(10));

[ Raiz8,Int] = Biseccion(Concentracion8,-90,-70,0.001);
[ Raiz10,Int] = Biseccion(Concentracion10,-90,-70,0.001);
[ Raiz14,Int] = Biseccion(Concentracion14,-90,-70,0.001);

fprintf('%s  %d \n %s  %d \n %s  %d','La temperatura cuando la concentracion es 8mg/l, es:', Raiz8, 'La temperatura cuando la concentracion es 10mg/l, es:',Raiz10,'La temperatura cuando la concentracion es 14mg/l, es:', Raiz14)