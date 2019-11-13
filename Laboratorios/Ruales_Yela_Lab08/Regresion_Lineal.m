function [a1 a0]= Regresion_Lineal(Data)
%Separo los datos de la matriz en cada uno de sus vectores
x = Data(:,1); 
y = Data(:,2);
a1 = (sum(x.*y) - numel(x)*mean(x)*mean(y))/(sum(x.^2) - numel(x)*mean(x)^2);%Fórmula pendiente
a0 = mean(y) - a1*mean(x); %Fórmula intercepto
a1aux = cov(x(:),y(:));
a1aux2 = a1aux(2,1)/a1aux(1,1);
yreg = a1.*x + a0; %Función lineal que aproxima los valores de los puntos
figure;
plot (x,y,'.'); %Valores de los datos
title('Regresión Lineal'); %Título gráfica
xlabel('Brth15to17'); %Título eje horinzontal
ylabel('Indice Pobreza'); %Título eje vertical
hold on ;
plot(x, yreg, 'r'); %Recta de la regresión lineal
