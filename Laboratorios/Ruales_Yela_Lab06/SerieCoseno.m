%Esta función retorna el conseno de un número ingresado por el usuario,
%calculandolo a partir de una serie. Recibe el valor al  cual se le calcula
%el coseno, y el número de interacciones en que se lo hace
function resultado = SerieCoseno(x,n)
if n>=1 %Mientras el número de interacciones sea mayor a 1, entra al condicional y se llama asi misma
    resultado = (((-1)^n)/factorial(2*n))*x^(2*n) + SerieCoseno(x,n-1);
else %Cuando el numero de interacciones restantes es cero, el resultado es 1
    resultado = 1;
end