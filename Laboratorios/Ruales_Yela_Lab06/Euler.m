%Esta funcion permite calcular cualquier potencia del n�mero de Euler 
% partir de una sumatoria. Recibe como parametros dos n�meros, el primero 
% indica la cantidad de veces que se quiere correr la funci�n (entre mayor 
% sea este n�mero mas aproximado es el resultado. El segundo n�mero es la potencia
% a la que se esta elevando el n�mero de Euler
function resultado = Euler (n,x)
if n>=1 %Mientras la cantidad de veces que falte por correr la funci�n almenos  1
    resultado = ((x^n)/factorial(n)) + Euler(n-1,x); %La funci�n se va a llamar a si misma para dar el resultado
else
    resultado = 1; %Cuando esta es la ultima vez que se llama a la funci�n, se da el valor de la sumatoria cuando n es cero
end
