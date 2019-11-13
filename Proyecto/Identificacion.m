function [ Arritmias, Promedio, DesviacionE ] = Identificacion( Distancias, Picos, Tiempos )

%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

Promedio = mean(Distancias);
DesviacionE = std(Distancias);
Arritmias = [];
rgSup = Promedio + 2.8*DesviacionE;
rgInf = Promedio - 2.8*DesviacionE;
for i=2:length(Distancias)
    if Distancias(i) < rgInf
     if( (Distancias(i-1) + Distancias(i))/2)- Promedio < DesviacionE
        Arritmias(end+1,1) =Tiempos(i);
        Arritmias(end,2) =Picos(i);
         end
    elseif  Distancias(i) > rgSup
         if( (Distancias(i-1) + Distancias(i))/2)- Promedio > DesviacionE
        Arritmias(end+1,1) = Tiempos(i);
        Arritmias(end,2) = Picos(i);
         end
    end
end