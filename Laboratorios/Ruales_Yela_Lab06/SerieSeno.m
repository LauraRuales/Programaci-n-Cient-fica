%Esta función calcula el valor del seno de un valor dado, a traves de n
%interacciones de la sumatoria del seno. Recibe dos párametros x, el valor
%al que se le calcula el seno y n, la cantidad de interacciones que se hace
%para calcularlo
function resultado = SerieSeno(x,n) 
if n>=1 %Cuando la cantidad de interacciones restantes es mayor que cero
    %Se calcula el valor de esta interaccion y se suma con el valor de
    %llamar a la función con una interaccion menos
    resultado = ((((-1)^n)/factorial(2*n+1))* x^(2*n+1)) + SerieSeno(x, n-1); 
else %Cuando es la última interacción, el resultado es el valor de x
    resultado = x;
end