%Esta funci�n devuelve el valor m�nimo de un vector de n�meros
function min = Minimo(A)
if length(A) == 1 %El punto de parada de la funci�n es cuando la longitud del vector sea 1
    min = A(1); %Entonces el minimo deebe corresponder a ese valor 
else %Cuando el vector es mas largo
    if A(1,1) >=A(1,2) %Se compara la posicion uno, con la posicion dos
        A(:,1)=[]; %Si la posicion uno es mayor, se elimina del vector
        min = Minimo(A); %Se llama nuevamente la funci�n 
    elseif A(1,1)<=A(1,2)%Se compara la posicion uno, con la posicion dos
        A(:,2)=[]; %Si la posicion dos es mayor, se elimina del vector
        min = Minimo(A); %Se llama nuevamente la funci�n 
    end
end
    
    
    