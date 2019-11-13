%% R = 0.6
R = 0.6; %Constante que guarda el factor
%Sistema de ecuaciones
Fun1 = @(x1,x2) 780*(1-R) + R*(0.5*x2 + 1.5*x1) - 0.08*((8.75*x1)/(2.1 + x1)) - 2*x1;
Fun2 = @(x1,x2) 0.5*x1 - 0.322*((118*x2)/(7 + x2)) - 0.5*x2;
%Derivadas con respecto a cada variable de ambas funciones
Dif1X1 = @(x1,x2) 1.5*R - (0.08*8.75*2.1)/(2.1 + x1)^2 - 2;
Dif1X2 = @(x1,x2) 0.5*R;
Dif2X1 = @(x1,x2) 0.5;
Dif2X2 = @(x1,x2) -(118*0.322*7)/(7+x2)^2 - 0.5;
%Obtengo las raices cerca de los puntos dados usando la función
%Newton_Raphson y luego imprimo sus valores en consola
raiz = Newton_Raphson(Fun1, Fun2, Dif1X1, Dif1X2, Dif2X1, Dif2X2, 360.6, 284.6);
fprintf('%s %2.3f %s %2.3f \n', 'Una posible solución cuando R = 0.6 es: Clung =', raiz(1), 'y Cliver', raiz(2));
%% R = 0.8
R = 0.8; %Constante que guarda el factor
%Sistema de ecuaciones
Fun1 = @(x1,x2) 780*(1-R) + R*(0.5*x2 + 1.5*x1) - 0.08*((8.75*x1)/(2.1 + x1)) - 2*x1;
Fun2 = @(x1, x2) 0.5*x1 - 0.322*((118*x2)/(7 + x2)) - 0.5*x2;
%Derivadas con respecto a cada variable de ambas funciones
Dif1X1 = @(x1,x2) 1.5*R - (0.08*8.75*2.1)/(2.1 + x1)^2 - 2;
Dif1X2 = @(x1,x2) 0.5*R;
Dif2X1 = @(x1,x2) 0.5*R;
Dif2X2 = @(x1,x2) -(118*0.322*7)/(7+x2)^2 - 0.5;
%Obtengo las raices cerca de los puntos dados usando la función
%Newton_Raphson y luego imprimo sus valores en consola
raiz = Newton_Raphson(Fun1, Fun2, Dif1X1, Dif1X2, Dif2X1, Dif2X2, 312.25, 236.25);
fprintf('%s %2.3f %s %2.3f \n', 'Una posible solución cuando R = 0.8 es: Clung =', raiz(1), 'y Cliver', raiz(2));
%% R = 0.9
R = 0.9;%Constante que guarda el factor
%Sistema de ecuaciones
Fun1 = @(x1,x2) 780*(1-R) + R*(0.5*x2 + 1.5*x1) - 0.08*((8.75*x1)/(2.1 + x1)) - 2*x1;
Fun2 = @(x1, x2) 0.5*x1 - 0.322*((118*x2)/(7 + x2)) - 0.5*x2;
%Derivadas con respecto a cada variable de ambas funciones
Dif1X1 = @(x1,x2) 1.5*R - (0.08*8.75*2.1)/(2.1 + x1)^2 - 2;
Dif1X2 = @(x1,x2) 0.5*R;
Dif2X1 = @(x1,x2) 0.5*R;
Dif2X2 = @(x1,x2) -(118*0.322*7)/(7+x2)^2 - 0.5;
%Obtengo las raices cerca de los puntos dados usando la función
%Newton_Raphson y luego imprimo sus valores en consola
raiz = Newton_Raphson(Fun1, Fun2, Dif1X1, Dif1X2, Dif2X1, Dif2X2, 215.5, 139.5);
fprintf('%s %2.3f %s %2.3f \n', 'Una posible solución cuando R = 0.9 es: Clung =', raiz(1), 'y Cliver', raiz(2));