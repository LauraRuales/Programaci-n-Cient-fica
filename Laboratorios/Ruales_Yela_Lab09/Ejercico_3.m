% Funciones del sistemas
Fun1 = @(x1,x2) ((5000.*x1)+(10000.*x2))/((5000.*(1-x1))*((24000 - (5000.*x1) - (10000.*x2)).^3));
Fun2 = @(x1,x2) ((5000.*x1)+(10000.*x2))/((10000.*(1-x2))*((24000 - (5000.*x1) - (10000.*x2)).^2));
%Derivadas con respecto a cada variable de ambas funciones
Dif1X1 = @(x1,x2) -((15*x1^2) + (10*x1*((4*x2)-1))+4*(5*x2^2-17*x2-6))/(1000000000*((x1-1)^2)*(5*x1 + 2*(5*x2-12))^4);
Dif1X2 = @(x1,x2) -(10*x2+ 5*x1 +12)/((((10*x2) + (5*x1) -24 )^4)*(x1-1)*250000000);
Dif2X1 = @(x1,x2)(5*x1 + (2*((5*x2)+12)))/(2000000*(5*x1 + 2*(5*x2-12))^3*(x2-1));
Dif2X2 = @(x1,x2)(40*x2^2 + (10*x2*(3*x1-1))+(5*x1^2)-(34*x1)-48)/((((10*x2) + (5*x1) -24 )^3)*((x2-1)^2)*2000000);

%Rango de valores para ver gráficamente los ceros de la funcion en ambas
%variables
x1= -9:0.1:5;
x2= -9:0.1:5;
% % %Gráfica de las curvas de nivel de las funciones, para hallar los puntos
% % %donde ambas son cero
% % [X1 X2] = meshgrid(x1,x2);
% % figure;
% % [c1,h1] = contour( X1, X2, Fun1(X1,X2), 'g'); 
% % clabel ( c1, h1);
% % grid;
% % hold on
% % [c2,h2] = contour( X1, X2, Fun2(X1,X2), 'y');
% % clabel ( c2, h2);
%Teniendo los puntos cercanos a la raiz se llama a
%la funcion y se imprime en consola los resultados
raiz = Newton_Raphson(Fun1, Fun2, Dif1X1, Dif1X2, Dif2X1, Dif2X2, 0.5 ,0.2);
fprintf('%s %2.3f %s %2.3f ', 'Una posible solución para el sistema es: X1 =', raiz(1), 'y X2', raiz(2));