%Esta funci�n recibe dos n�meros, el primero hace las veces de base y el
%segundo de exponente. La base se mantiene constante a trav�s de cada
%iteraci�n, pero el exponente es la cantidad de veces que la base se
%multiplica por si misma, por lo que disminuye 1 en cada iteracci�n
function resultado = Exponencial (b,e)
if e>0 %Verifica que el exponente siempre sea mayor que cero
    resultado = b*Exponencial(b,e-1); %Toma la base y la multiplica por                            %el resultado de llamar a la funcion 
                                      %con un grado menos en el exponente
elseif e<0 %Si el exponente es negativo
    b = 1/b; %Toma el valor de la base como si fuera el inverso multiplicativo de la base original
    e = abs(e); %Se vuelve el exponente positivo 
    Exponencial(b,e); %Se llama a la funci�n
else   
  resultado =1; %Cuando el exponente es cero, ante cualquier base el resultado siempre es cero
end