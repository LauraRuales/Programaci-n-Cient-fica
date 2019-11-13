% % 2. Generar una secuencia de pasos de forma aleatoria. Recibe por
% parametro la cantidad de pasos que 'el borracho' va a dar y retorna sus
% posciciones iniciales y finales

function[Out1]= Coordenadas_Pasos(Parm1)
Coordenadas = zeros(Parm1, 2); % Se inicializa la matriz que guarda los movimientos
suma1=0; %Se crea la variable que almacenara la distancia que recorre en x
suma2=0; %Se crea la variable que almacenara la distancia que recorre en y
for i=1:Parm1 %Inicio del ciclo que genera un valor que representa cada movimiento aleatorio del borracho
    while 1 %Ciclo que verifica que el borracho siempre se este en movimiento
        x=rand; %Primer random que define la dirección del movimiento del borracho
        if x<0.33 && suma1 <6 %Se asigna una dirección en el movimiento segun el rand y se verifica que este dentro de su area de movimiento 
            Coordenadas(i,1)= 1;
        elseif x>0.33 && x<0.66 && suma1>-6 %Se asigna una dirección en el movimiento segun el rand y se verifica que este dentro de su area de movimiento
            Coordenadas(i,1)= -1;
        else%Se asigna una dirección en el movimiento segun el rand o no permite que salga de su area de movimiento
            Coordenadas(i,1)=0; 
        end
        x=rand; %Segundo random que define la dirección del movimiento del borracho
        if x<0.33 && suma2 <6%Se asigna una dirección en el movimiento segun el rand y se verifica que este dentro de su area de movimiento
            Coordenadas(i,2)= 1;
        elseif x>0.33 && x<0.66 && suma2>-6%Se asigna una dirección en el movimiento segun el rand y se verifica que este dentro de su area de movimiento
            Coordenadas(i,2)= -1;
        else %Se asigna una dirección en el movimiento segun el rand o no permite que salga de su area de movimiento
            Coordenadas(i,2)=0;
        end
        suma1= suma1 + Coordenadas(i,1); %Va sumando los movimientos del borracho, para saber siempre su posicion y que nunca se salga de sus limites 
        suma2 = suma2 + Coordenadas(i,2); %Va sumando los movimientos del borracho, para saber siempre su posicion y que nunca se salga de sus limites
        if Coordenadas(i,1)~=0 || Coordenadas(i,2)~=0 % Condicional que se encarga de verificar que el borracho siempre se ha movido o repite el ciclo
            break
        end
    end
end
Out1 = [0 0; suma1 suma2]; %Matriz con la posicion iniicial y final del borracho para x y para y