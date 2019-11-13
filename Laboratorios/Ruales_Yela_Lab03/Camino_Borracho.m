% %%Descripción: Esta funcion invoca a las funciones: TiempoPasos,
% Coordenadas_Pasos, Distancia_Absoluta y Clasificacion para retornar un
% camino que es un celda en donde se almacena los datos de simular cierta
% cantidad de veces el camino del borracho conforme el tiempo
% %%Toma como parametro el tiempo de camino y el numero de veces que se
% quiere simular 
% %%Retorna una celda con el numero de simulacion, la distancia que recorre
% segun la simulación y el grupo al que clasifica 
function[camino]= Camino_Borracho(tiempo, num_Sim)
camino = cell(num_Sim+1,3); %Celda que almacenara los datos 
camino{1,1} = 'Num_Sim'; %Titulo de la columna
camino{1,2} = 'Distancia'; %Titulo de la columna
camino{1,3}= 'Grupo'; %Titulo de la columna
for i=2:num_Sim+1 %Ciclo que se encarga de llenar la celda con los datos correspondientes
    camino{i,1}=i-1; %Numero de simulación
    Pasos = TiempoPasos(tiempo); 
    Cor= Coordenadas_Pasos(Pasos);
    Dis= Distancia_Absoluta(Cor);    
    camino{i,2} = Dis; %Distancia que recorre en esta simulacion 
    Cla= Clasificacion(camino{i,2});
    camino{i,3} = Cla; %Grupo al que clasifica en esta simulacion
        
end
  camino 
  
  

