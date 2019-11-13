
% %%Descripción: Mide la distancia que hay desde el origen hasta la posición del borracho
%  %%Parametros: Los parametros son las coordenadas finales de la posición del borracho
%  siendo parm1 la coordenada en x y parm2 la coordenada en y
%  %%Retun: Lo que la función retorna es la distancia absoluta
function [Out1] = Distancia_Absoluta (A) 
x= A(2,1) - A(1,1); %Segun lo recibido por parametro se saca el movimiento real del borrachoen este eje
y= A(2,2) - A(1,2); %Segun lo recibido por parametro se saca el movimiento real del borrachoen este eje
Out1 = ((x)^2 + (y)^2)^(1/2); %Se utiliza pitagoras para calcular la distancia absoluta
end
