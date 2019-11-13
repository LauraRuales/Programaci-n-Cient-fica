function [ Diferencia,coordenadas, picos] = Tacograma( Datos, Tiempo,umbral)
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here

% umbral = mean(Datos) + std(Datos)
[picos, coordenadas] = findpeaks(Datos,Tiempo, 'MinPeakDistance',0.4, 'MinPeakHeight',umbral);
Diferencia=zeros((size(picos,1))-1,1);
 for i=1:length(Diferencia)
     Diferencia(i)=abs(coordenadas(i+1)-coordenadas(i));
 end
 picos = picos(2:end);
 coordenadas=coordenadas(2:end);
 end

