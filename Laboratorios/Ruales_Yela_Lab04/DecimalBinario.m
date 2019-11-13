%Funcion que recibe por parametro un numero decimal cualquiera 
%y devuelve su correspondente en numero binario
function [binario] = DecimalBinario (decimal) %Se inicializa la funcion
binario1 =[]; %Se crea el vector qeu va a almacenar el resultado entero
binario2 =[]; %Se crea el vector qeu va a almacenar el resultado fraccional
a=str2double(decimal); %Se convierte el string recibido por parametro en double 
b=fix(a);
while b>0 %A se transformara en el cociente de la division y el ciclo se mantiene mientras sea mayor que 0
    c=mod(b,2); %Es uno de los valores del numero binario
    binario1 = [c , binario1]; %Vector que cambia su longitud en cada ciclo 
    b=fix(b/2); %Cociente de la división
end
d=a-fix(a); %Se crea una variable que guarde solo la parte fraccionaria del numero ingresado 
binario1= mat2str(binario1); %Se transforma el vector binario en un str
binario1= binario1(2:length(binario1)-1); %Se corta los bordes de la cadena de caracteres para que no salga '[' y ']'
    cont=0; %Se crea un contador para que finalice el ciclo si llega a ser periodico
    while d~=0 && cont<10 %Se finaliza el ciclo con un contador o cuando ya es igual a cero
    c=d*2 %Se multiplica el valor por 2
    c= fix(c); % Se toma la parte entera de la multiplicación para que sea parte del vector resultado
    binario2 = [binario2, c]; %Vector resultado que se le entrega al usuario
    d=d*2-c; %Se modifica 'a' para que siga con el ciclo
    cont = cont+1; %Se aumenta el contador
    end
    binario2 = mat2str(binario2); %Se transforma el vector binario en un str
   binario2= binario2(2:length(binario2)-1); %Se corta los bordes de la cadena de caracteres para que no salga '[' y ']'
    binario = strcat(binario1, '.' , binario2) %Se concatena el resultado de la parte entera y la parte fraccionaria
end