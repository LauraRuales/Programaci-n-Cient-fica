%Esta función recibe dos números, el primero hace las veces de base y el
%segundo de exponente. La base se mantiene constante a través de cada
%iteración, pero el exponente es la cantidad de veces que la base se
%multiplica por si misma, por lo que disminuye 1 en cada iteracción
function resultado = Exponencial (b,e)
if e>0 %Verifica que el exponente siempre sea mayor que cero
    resultado = b*Exponencial(b,e-1); %Toma la base y la multiplica por                            %el resultado de llamar a la funcion 
                                      %con un grado menos en el exponente
elseif e<0 %Si el exponente es negativo
    b = 1/b; %Toma el valor de la base como si fuera el inverso multiplicativo de la base original
    e = abs(e); %Se vuelve el exponente positivo 
    Exponencial(b,e); %Se llama a la función
else   
  resultado =1; %Cuando el exponente es cero, ante cualquier base el resultado siempre es cero
end