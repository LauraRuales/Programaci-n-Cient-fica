%Funcion de bisección que permite encontrar las raices de cualquier función,
%usando intervalos cada vez mas pequeños, a través de dividir estos por la
%mitad y validar en cual de los dos intervalos resultantes esta la raiz.
% % La funcion recibe como parametros la funcion, la cantidad de interacciones y los intervalos en los que
% se evalua y como resultado retorna la cantidad de interacciones hechas,
% la raiz encontrada, en que límites se encontró y el error relativo de
% este error
% Autora: Laura Cristina Ruales Yela
% Fecha:  Martes 31 de octubre de 2017
function [ raiz,int] = Biseccion (fun, a,b, ErrorY)
int = 1; %Variable qu guarda la cantidad de interacciones
x = a:0.1:b; % Intervalo en el cual itera la funcion
fprintf(' %s %s %s      %s      %s     %s\n', 'Iteracciones', 'Extremo Inferior','Extremo Superior', 'Raiz', 'Valor F en Raiz', 'Error');
fprintf('          %i         %2.4f         %2.4f                          \n', int, a, b);
while 1
    prom = (a+b)/2; %Punto medio entre los dos extremos del intervalo
    if fun(prom)==0%Si el valor medio cumple con ser la raiz de la función
        raiz = prom;%La raiz es el valor medio
        error = 0; %Ya que encontramos el valor exacto de la raiz no hay error
        break; %Ya que se encontró la raiz se termina la función
    else %Cuando la raiz no es el valor medio
        if fun(prom)*fun(b)<0 %Se evalua si la raiz esta en el intervalo entre el valor medio y b
            raiz = prom; %El valor intermedio se convierte en la raiz actual
            if int>1
            error = abs((b-raiz)/b);
            fprintf('          %i         %2.4f         %2.4f         %2.4f     %2.4f        %2.5f\n', int, a, b, prom, raiz, error);  %Se imprime 
                        %en la consola el valor de las iteracciones, el limite inferior, el limite superior, la mitad de los
                        %límites, el valor asignado a la raiz y el porcentaje de error
            end
            a = raiz;  %El valor intermedio se convierte en el extremo del nuevo intervalo       
        elseif fun(a)*fun(prom)<0%Se evalua si la raiz esta en el intervalo entre el valor medio y a
            raiz = prom; %El valor intermedio se convierte en la raiz actual
            if int>1
            error = abs((a-raiz)/a);
            fprintf('          %i         %2.4f         %2.4f         %2.4f     %2.4f        %2.5f\n', int, a, b, prom, raiz, error);  %Se imprime 
                        %en la consola el valor de las iteracciones, el limite inferior, el limite superior, la mitad de los
                        %límites, el valor asignado a la raiz y el porcentaje de error
            end
            b = raiz; %El valor intermedio se convierte en el extremo del nuevo intervalo
        end
            if int>1 %Si no hay mas de una interacción no se puede calcular el error relativo
                if  error<ErrorY  %Si el error es menor a la tolerancia se termina el ciclo
                    break;%Ya que la precisión no aumenta mucho, se puede asumir que el valor intermedio es la raiz
                end
                
            else
                error =-1; %En caso de que solo haya una interacción no se puede calcular el error relativo
            end
        end        
    int = int +1; %Se aumenta en una el valor de la interacción
    end
end