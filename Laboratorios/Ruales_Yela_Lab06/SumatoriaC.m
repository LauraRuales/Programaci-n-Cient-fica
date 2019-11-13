%Esta funcion retorna el resultado de la sumatoria
function resultado = SumatoriaC (n)
if n > 1 %Verifica que el n�mero de interacciones restantes sea mayor que 1
    resultado = 1/(n*(n+1)*(n+2)) + SumatoriaC(n-1)
else %Da el resultado de cuando se realiza la interaccion m�nima
    resultado = 1/6;
end