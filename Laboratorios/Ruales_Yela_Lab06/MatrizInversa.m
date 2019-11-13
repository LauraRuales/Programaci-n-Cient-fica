function [ MatInv ] = MatrizInversa( Mat )
DetMat=DeterminanteMatriz(Mat);
if DetMat==0;
    fprintf('El determinante es cero, la inversa no existe \n');
    return;
end
MatInv=zeros(size(Mat));
for i=1:size(Mat,1)
    for j=1:size(Mat,2)
        MatInv(j,i)=(-1)^(i+j)*DeterminanteMatriz(MatrizMenor(Mat,i,j));
    end
end
MatInv=(1/DetMat).*MatInv;
end

