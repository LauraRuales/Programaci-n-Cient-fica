% %%Descripción: Permite determinar a qué grupo pertenece el valor de la distancia absoluta calculada previamente,
% teniendo en cuenta la siguiente clasificación: 
% %%Grupo 1: De 0 a menos de 2 unidades.
% %%Grupo 2: De 2 a menos de 4 unidades.
% %%Grupo 3: De 4 a menos de 6 unidades.
% %%Grupo 4: 6 o más unidades.
% %%Toma como parametro la distancia de la función
% %%Retorna el grupo de clasificación de la distancia

function [Out1] = Clasificacion(Parm1)
if Parm1>=0 && Parm1<2 %Compara lo que recibe por parametro con el rango del grupo para saber si pertenece
    Out1=1; %Si pertenece, lo asigna
elseif Parm1>=2 && Parm1<4%Compara lo que recibe por parametro con el rango del grupo para saber si pertenece
    Out1=2;%Si pertenece, lo asigna
elseif Parm1>=4 && Parm1<6%Compara lo que recibe por parametro con el rango del grupo para saber si pertenece
    Out1=3;%Si pertenece, lo asigna
else
    Out1=4; %Si no pertenece a los demas debe pertenecer a este, lo asigna
end
