%Esta funcion entrega el valor correspondiente a la sucesion de Fibonacci
%segun la posicion pedidad por el usuario. 
function v = Fibonacci(n)
if n==0 %Cuando se quiere sólo el valor inicial
    v = 0;
elseif n == 1 %Para el segundo valor de la serie
    v = 1;
else
    v = Fibonacci(n-1) + Fibonacci(n-2); %Para calcular cualquier posicion de la serie
end