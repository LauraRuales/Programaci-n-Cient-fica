%Esta funcion retorna la sumatoria de la potencias de 2 desde 1 hasta el
%valor indicado por el usuario 
function resultado = SumatoriaB (n)
if n>1 %Si el valor de interacciones faltantes es mayor a 1 
    resultado = 2^n + SumatoriaB(n-1); %Se suma el valor actual de la interaccion 
                                %mas el valor dado por la funcion en una interaccion menos
else %Cuando se encuentra en la ultima interacción
    resultado = 2;
end