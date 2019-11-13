%Esta función devuelve el resltado en la cantidad de interacciones o sumas pedidas
%por el usuario
function resultado = SumatoriaD(n)
if n>1 %Verifica que las sumas restantes sean mayores que uno
    resultado = ((2^n + 3^n)/(6*n)) + SumatoriaD(n-1);
else %Cuando solo falta 
    resultado = 1;
end