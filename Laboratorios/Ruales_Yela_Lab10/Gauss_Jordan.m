function Inversa = Gauss_Jordan ( Mat)
%Descripcion: Esta funcion nos retorna el vector solucion a una
%multiplicacion matricial hallando la inversa
%Parametros: Matriz cuadrada aumentada con el resultado de la multiplicacion a la que se le desea conocer el vector solucion
%Retorna: La matriz con la eliminacion completada
%Autora: Laura Ruales
%Fecha: Octubre 17
%Parametros: Matriz y resultado con lo que se hallara la inversa y la solucion a la multiplicacion
%Retorna: La matriz con la eliminacion completada
tam= length(Mat); %Cantidad de columnas de la matriz
Id = zeros(tam,tam);
for i=1:tam
Id(i,i) =1;
end
Mat = [ Mat Id];
Inversa = []; %Vector que almacenara la solucion al sistema de ecuaciones
for i = 1:tam %For que recorre la cantidad de filas
    j=1; %Inicializo el avance del while
    while j<tam %For que recorre las columnas
        if j<i %Cuando la casilla esta abajo de la diagonal principal
            InvAdit = Mat(i,j); %Valor de la casilla
            Rest = InvAdit*Mat(j,:); %Multiplicacion de la fila del pivote por el valor de la casilla
            Mat(i,:)= Mat(i,:) - Rest; %A la fila de la casilla se le resta el valor de la
            %casilla veces la casilla del pivote
        elseif i==j %Cuando la casilla esta en la diagonal principal
            if Mat(i,j)~=0 %Si la casilla es distinta de cero
                InvMult= Mat(i,i); % Valor de cada casilla en la diagonal
                Mat(i,:) = Mat(i,:)/InvMult; %Division de la fila por  la casilla en la diagonalend
            else % Cuando la casila es cero
                if i>1 %Cuando no es la ultima fila
                     Remp = Mat(i-1,:); %Se almacena la fila en un vector temporal
                    Mat(i-1,:) = Mat(i,:); %La fila se cambia por los valores de la fial anterior
                    Mat(i,:) = Remp; % Los valores de la fila anterior se cambian por los valores originales de la fila
                    j= j-1;%Se resta 1 al contador de las columnas pra que vuelva a
                    %esta posicion en las columnas ya que no se ha hecho reduccion
                    %sino solo cambio de columnas                    
                else                   
                    Remp = Mat(i+1,:); %Se almacena la fila en un vector temporal
                    Mat(i+1,:) = Mat(i,:); %La fila se cambia por los valores de la fial sgte
                    Mat(i,:) = Remp; % Los valores de la fila sgte se cambian por los valores originales de la fila
                    j=j-1; %Se resta 1 al contador de las columnas pra que vuelva a
                    %esta posicion en las columnas ya que no se ha hecho reduccion
                    %sino solo cambio de columnas
                end
            end
        end
        j=j+1;%Se hace el aumento del while
    end
end
%En un for aparte se realiza el proceso para volver cero las casillas
%superiores a la diagonal principal. Así nos aseguramos que ya tenemos los
%pivotes en uno
for i = 1:tam/2%El for recorre de la primera a la ultima fila
    for j = 1:tam/2 %El for recorre de la primera a la penultima columna (La ultima es el resultado de la multiplicacion)
        if i<j %Si la casilla esta dentro de la matriz superior
            InvAdit = Mat(i,j); %Se guarda el valor de la casilla
            Rest = InvAdit*Mat(j,:); %Se multiplica el valor de la casilla por la fila del pivote de esa columna
            Mat(i,:)= Mat(i,:) - Rest; %Se transforma esa casilla en cero restandole su valor veces la fila del pivote
        end
    end
    Inversa = [Mat(:,tam/2+2 :end)]%Vector solucion 
end