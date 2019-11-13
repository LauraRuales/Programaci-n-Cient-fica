function [ tiempo, ECG ] = ECG( Nombre, Tiempo  )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
ID=fopen(Nombre,'r');
Electro=fread(ID,'uint16');
ECG=(Electro-1024)./200;

ID2=fopen(Tiempo,'r');
tiempo=fread(ID2,'double');

fclose('all');
end

