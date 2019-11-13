function [ Menor ] = MatrizMenor( Matriz, Fila, Columna )
Auxiliar=0;
for i=1:size(Matriz,1)
    if i==Fila
        continue;
    end
    Auxiliar=Auxiliar+1;
    Auxiliark=0;
    for k=1:size(Matriz,2)
        if k==Columna
            continue;
        end
        Auxiliark=Auxiliark+1;
        Menor(Auxiliar,Auxiliark)=Matriz(i,k);
    end
end
end

