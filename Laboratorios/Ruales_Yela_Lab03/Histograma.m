%Descripcion: Esta funcion devuelve la distancia promedio de camino del borracho 
%a lo largo de las simulaciones y tambien grafica un histograma con la
%cantida de simulaciones en las que estuvo en cada grupo
function DistProm = Histograma (camino)
Dist=0; %Variable que almacena la suma de distancias 
B= []; %Se inicializa la celda que guarda la lista de los grupos
for i= 2:length(camino(:,3))
Dist = camino{i,2}+ Dist; %Se suma la distancia de cada simulacion en cada ciclo
B = [B camino(i,3)];%La celda guarda los grupos de clasificacion
end
   B = cell2mat(B) %Se transforma la celda en matriz
   hist(B) %Se grafica el histograma 
   DistProm = Dist/(length(camino(:,3))-1) %La variable de salida con la distancia promedio
  