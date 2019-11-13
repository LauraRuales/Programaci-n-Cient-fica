%Esta funcion permite calcular cualquier potencia del número de Euler 
% partir de una sumatoria. Recibe como parametros dos números, el primero 
% indica la cantidad de veces que se quiere correr la función (entre mayor 
% sea este número mas aproximado es el resultado. El segundo número es la potencia
% a la que se esta elevando el número de Euler
function resultado = Euler (n,x)
if n>=1 %Mientras la cantidad de veces que falte por correr la función almenos  1
    resultado = ((x^n)/factorial(n)) + Euler(n-1,x); %La función se va a llamar a si misma para dar el resultado
else
    resultado = 1; %Cuando esta es la ultima vez que se llama a la función, se da el valor de la sumatoria cuando n es cero
end
