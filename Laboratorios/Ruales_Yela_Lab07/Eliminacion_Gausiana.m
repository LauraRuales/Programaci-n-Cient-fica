function Gauss = Eliminacion_Gausiana (A)
%Descripcion: Esta funcion nos retorna la matriz diagonal superior
%correspondiente a hacer una eliminacion gausiana en las filas inferiores
%al pivote en cada columna
%Parametros: Matriz a la que se le desea hacer la eliminacion
%Retorna: La matriz con la eliminacion completada
%Autora: Laura Ruales
%Fecha: Octubre 17
tam = length(A); %Tamaño matriz
for i = 1:tam-1 % Ciclo que recorre las columnas de la matriz
    j=1;
    while j<tam %Ciclo que recorre las filas de la matriz
        %(La cantidad de filas es igual a la cantidad de columnas menos una)
        if i==j %Cuando la posicion enta en la diagonal principal
            if A(i,j)~=0 %Si la casilla es distinta de cero
                InvMult= A(i,i); % Valor de cada casilla en la diagonal
                A(i,:) = A(i,:)/InvMult; %Division de la fila por  la casilla en la diagonalend
            else % Cuando la casila es cero
                if i>1 %Cuando no es la ultima fila
                    Remp = A(i-1,:); %Se almacena la fila en un vector temporal
                    A(i-1,:) = A(i,:); %La fila se cambia por los valores de la fial anterior
                    A(i,:) = Remp; % Los valores de la fila anterior se cambian por los valores originales de la fila
                    j= j-1;%Se resta 1 al contador de las columnas pra que vuelva a
                    %esta posicion en las columnas ya que no se ha hecho reduccion
                    %sino solo cambio de columnas
                else
                    Remp = A(i+1,:); %Se almacena la fila en un vector temporal
                    A(i+1,:) = A(i,:); %La fila se cambia por los valores de la fial sgte
                    A(i,:) = Remp; % Los valores de la fila sgte se cambian por los valores originales de la fila
                    j=j-1; %Se resta 1 al contador de las columnas pra que vuelva a
                    %esta posicion en las columnas ya que no se ha hecho reduccion
                    %sino solo cambio de columnas
                end
            end
        elseif j>i %Si esta por debajo de la diagonal inferior
            InvAdt = A(j,i); % Se vuelven cero las columnas usando el inverso aditivo
            Rest = InvAdt*A(i,:); %Vector temporal que guarda la fila del pivote multiplicada por el inverso aditivo
            A(j,:) = A(j,:) - Rest; %A la fila del elemento se le resta el inverso aditivo multiplicado por la fila del pivote
        end
        j=j+1;
    end
end
Gaus = zeros(tam-1,1); % Se inicializa el vector que guarda verticalmente las soluciones
Gaus(tam-1) = A(tam-1,tam); %La ultima casilla de la matriz es igual a la 
              %casilla correspondiente en el vector resultado
for i =tam-2:-1:1 %Se inicia un for que va remplazando los valores hallados para hallar el anterior 
    Gaus(i) = (A(i,tam)- A(i,i+1:tam-1)*Gaus(i+1:tam-1))/A(i+1,i+1);
end
Gauss = Gaus'; %El vector solucion es la traspuesta del vector que guardaba las soluciones
