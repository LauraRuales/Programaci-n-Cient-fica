%Funcion de Falsa Posición que permite encontrar las raices de cualquier función,
%usando intervalos cada vez mas pequeños. Se traza una recta que une a,f(a) con b,f(b) 
%Uno de los extremos permanece constante mientras el otro cambia convirtiendose en el 
%punto en el cual la recta corta el eje x y un punto fijo en unos de los 
%extremos del intervalo inicial 
% La funcion recibe como parametros la funcion y los intervalos que vamos
% a evaluar y como resultado retorna la cantidad de interacciones hechas,
% la raiz encontrada, en que límites se encontró y el error relativo de
% este error
% Autora: Laura Cristina Ruales Yela
% Fecha:  Martes 31 de octubre de 2017
function [raiz, limites,error] = Falsa_Posicion (fun, a,b)
x=a:0.0001:b; % Intervalo en el cual itera la funcion
%Grafica de la función en el intervalo
figure; 
plot(x,fun(x));
grid;
hold on;
ErrorY = 10^-3; %Variable que guarda la tolerancia al error
ErrorX = 10^-7; %Variable que guarda la minima variación en X
int=1; %Variable que guarda el número de interacciones
%Ciclo que comprueba si el numero que tengo es la raiz y me arroja el valor
%de solución de la ecuación
fprintf(' %s %s %s      %s      %s     %s\n', 'Iteracciones', 'Extremo Inferior','Extremo Superior', 'Raiz', 'Valor F en Raiz', 'Error');
fprintf('          %i         %2.4f         %2.4f                          \n', int, a, b);
while 1    
    plot ([a b], [fun(a) fun(b)], 'r'); %Se traza una recta que une las 
                  %imagenes de los extremos para observar el corte con el eje x
    pause(1)
    c=b - fun(b)*((b-a)/(fun(b)-fun(a))); %Punto de corte 
    if fun(a)*fun(c)<0 %Se verifica que a raiz se encuentre en este inter
        b=c; %El extremo 'b' se cambia por el punto de corte
    else
        a=c; %El extremo 'a' se cambia por el punto de corte
    end    
    if int>1
        error = abs(fun(c) - fun(raiz)); %Error relativo en y
        acercamiento = abs((c-raiz)/c); %Error relativo en X
        if error< ErrorY || acercamiento < ErrorX
            break;
        end
    else
        error = 20; %Un valor al azar cuando no hay con que comparar
    end 
    raiz=c;    
    limites = [a b];
    int=int+1; %Se aumenta en una el valor de la interacción
    fprintf('          %i         %2.4f         %2.4f         %2.4f     %2.4f        %2.5f\n', int, a, b, c, fun(c), error);
end