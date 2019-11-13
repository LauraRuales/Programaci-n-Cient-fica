%Esta función permite calcular el valor de las raices para dos funciones no
%lineales con dos incognitas.
% Los parametros que recibe son las dos funciones originales y sus
% respectivas derivadas con respecto a cada una de las variables, ademas de
% un punto inicial cercano al valor de la raiz
function x = Newton_Raphson( Fun1, Fun2, Dif1X1, Dif1X2, Dif2X1, Dif2X2, a, b)
x1=a;
x2=b;
x=[x1;x2]; %Vector con los valores de la 'raiz'
TolX=10^-5; %Cercania mínima respecto a los valores de la 'raiz'
TolF=10^-5; %Cercanía al cero de las funciones
Iter=0; % Variable que guarda el numero de variables
while 1
    Iter = Iter + 1;
    J=[Dif1X1(x(1),x(2)) Dif1X2(x(1),x(2));
      Dif2X1(x(1),x(2)) Dif2X2(x(1),x(2))]; %Matriz Jacobiana para dos variables
    F=[Fun1(x(1),x(2));Fun2(x(1),x(2))]; %Valor de las funciones
    dX=J \(-F); %Cambio en el valor de la raiz
    x= x+dX; %Nuevos valores de la raiz              
    F=[Fun1(x(1),x(2));Fun2(x(1),x(2))]; %Función evaluada en los nuevos valores
    if abs(dX) <= TolX %Tolerancia en el valor de la raiz
        break;
    end
    if abs(F) <= TolF %Tolerancia en el valor de la funcion
        break;
    end
end