function [ DetMatriz ] = DeterminanteMatriz( Matriz )
if size(Matriz,1)==1
    DetMatriz=Matriz;
else
    DetMatriz=0;
    for j=1:size(Matriz,2)
        Menor=zeros(size(Matriz,1)-1,size(Matriz,1)-1);
        Auxiliar=0;
        for i=1:size(Matriz,1)
            if i==1
                continue;
            end
            Auxiliar=Auxiliar+1;
            Auxiliark=0;
            for k=1:size(Matriz,2)
                if k==j
                    continue;
                end
                Auxiliark=Auxiliark+1;
                Menor(Auxiliar,Auxiliark)=Matriz(i,k);
            end
        end
        DetMatriz=DetMatriz+Matriz(1,j)*(-1)^(1+j)*DeterminanteMatriz(Menor);
    end
end      
end