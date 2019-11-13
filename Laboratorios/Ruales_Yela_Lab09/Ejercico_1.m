%Sistema de ecuaciones
Fun1 = @(x1,x2) 3*x1.^2 + x2.^2 -10;
Fun2 = @(x1, x2) x1.^2 + x2-1;
%Derivadas con respecto a cada variable de ambas funciones
Dif1X1 = @(x1,x2) 6*x1;
Dif1X2 = @(x1,x2) 2*x2;
Dif2X1 = @(x1,x2) 2*x1;
Dif2X2 = @(x1,x2) 1;
%Rango de valores para ver gráficamente los ceros de la funcion en ambas
%variables
x1= -5:0.1:5;
x2= -5:0.1:5;
%Gráfica de las curvas de nivel de las funciones, para hallar los puntos
%donde ambas son cero
[X1 X2] = meshgrid(x1,x2);
figure;
[c1,h1] = contour( X1, X2, Fun1(X1,X2), 'g'); 
clabel ( c1, h1);
grid;
hold on
[c2,h2] = contour( X1, X2, Fun2(X1,X2), 'y');
clabel ( c2, h2);
%Teniendo los puntos cercanos a la raiz por medio de la gráfica se llama a
%la funcion y se imprime en consola los resultados
raiz = Newton_Raphson(Fun1, Fun2, Dif1X1, Dif1X2, Dif2X1, Dif2X2, -2,0);
fprintf('%s %2.3f %s %2.3f ', 'Una posible solución para el sistema es: X1 =', raiz(1), 'y X2', raiz(2));
