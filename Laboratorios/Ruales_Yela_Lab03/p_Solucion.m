% Programación Científica 2017-20
% Solución Laboratorio_02
% Corra cada sección por separado, pues si corre todo de una vez, las
% llamadas de limpieza (clear all, clc) van a borrar cada ejercicio antes
% de seguir. 
% ------------------------- PRIMERA PARTE ------------------------------- %
%% 1.1  Imprime suma, producto, diferencia, cociente y residuo 
clc;clear all
x=input('introduzca el primer nÃºmero: \n');%recibe el primer numero del usuario
y=input('introduzca el segundo nÃºmero: \n');%recibe el segundo numero del usuario

%Realiza las operaciones entre los 2 nÃºmeros
suma=x+y;producto=x*y;diferencia=x-y;cociente=x/y;residuo=x-floor(x/y)*x;

%Se imprime el resultado de cada una de las operaciones
display(suma),display(producto),display(diferencia),display(cociente);
display(residuo);

%% 1.2
clc;clear all
x=input('introduzca el primer nÃºmero: \n');%recibe el primer numero del usuario
y=input('introduzca el segundo nÃºmero: \n');%recibe el segundo numero del usuario

if x>y
    fprintf('%.f es mayor\n',x);%Imprime x si es el mayor
elseif y>x
    fprintf('%.f es mayor\n',y);%Imprime y si es el mayor
else
    disp('Estos nÃºmeros son iguales');%Imprime si son iguales
end

%% 1.3
clc;clear all
maximo=0;%Maximo actual
minimo=99999999;%Minimo actual

%Ciclo para recibir los 5 numero y decir cuÃ¡l es mayor
for i=1:5
    Z(i)=input('Introduzca nÃºmero: \n');%Recibe un numero
    if Z(i)>maximo %Compara el numero con el maximo actual
        maximo=Z(i); %Si es mayor lo asigna como nuevo maximo
    end
    if Z(i)<minimo %Compara el numero con el minimo actual
        minimo=Z(i); %Si es menor lo asigna como nuevo minimo
    end
end

%Imprime el numero mayor y el numero menor
fprintf('\nEl nÃºmero mayor es: %d\nEl nÃºmero menor es: %d\n\n',maximo,minimo);

%% 1.4
clc;clear all
s=input('Ingrese un entero: ');%Recibe un entero

%Si el residuo es igual a 0 o diferente de 0
if ~mod(s,2)
    disp('El nÃºmero es par');%Imprime si es par
else
    disp('El nÃºmero es impar');%Imprime si es impar
end

%% 1.5
clc;clear all
num=input('Ingrese un nÃºmero de 5 dÃ­gitos: '); %recibe entero de 5 dÃ­gitos

j=4:-1:0;% vector de 4 a 0
for i=1:5
    div=10^j(i);
    cos=num/div;%divide el numero entre potencia j de 10
    res=mod(num,div);%saca el residuo del numero y la potencia j de 10
    x(i)=round(cos-(res/div));%Resta la divisiÃ³n entre el residuo y la potencia 
                              % de j de 10 del cociente
    num=res;%Actualiza el numero como el residuo
end

fprintf('\n\n%d   %d   %d   %d   %d\n\n',x);%Imprime los digitos separados

% otra soluciÃ³n
fprintf('OTRA SOLUCIÃ“N:\n\n')

num=input('Ingrese un nÃºmero de 5 dÃ­gitos: ');%Recibe entero de 5 dÃ­gitos
str=int2str(num);%Lo covierte a cadena de caractÃ©res

fprintf('\n\n%c   %c   %c   %c   %c\n\n',str(1),str(2),str(3),...
    str(4),str(5));%imprime cada caracter de la cadena

%% 1.6
clc;clear all
A=[   3  5  7;
    0.5  1  3;
      0  2  6 ];

B=[ 0.3  4.5;
      5  3.3;
    0.1    9 ];

C=[ 1 2 3;
    3 2 1 ];

%Hace las operaciones entre las matrices de forma que no den error
AxB=A*B, CxA=C*A, BxC=B*C,

% ------------------------- SEGUNDA PARTE ------------------------------- %
%% 2.1. Escriba un programa que use ciclos para imprimir en la ventana de comandos la siguiente tabla de valores.

% Borrar todas las variables, cerrar todas las gráficas abiertas y borrar
% la consola para evitar errores.
clear all
close all
clc

% Imprimir la primera fila de la tabla
fprintf('\t N \t N*10 \t N*100 \t N*1000 \n');

% Crear el ciclo para imprimir la tabla de valores
for s_Num = 1:10 % Se repetirá el mismo procedimiento 10 veces
    if  s_Num == 10 % Si es el último ciclo imprimir diferente para que quede bien la identación de la tabla
        fprintf('\t %2.0f  %3.0f \t %4.0f \t %5.0f \n', s_Num, s_Num*10,...
            s_Num*100, s_Num*1000); % Imprimir la línea correspondiente
    else
        fprintf('\t %1.0f \t %2.0f \t %3.0f \t %4.0f \n', s_Num, ...
            s_Num*10, s_Num*100, s_Num*1000); % Imprimir la línea correspondiente
    end   
end

%% 2.2. Escriba un código que reciba una serie de 10 números del usuario, determine e imprima los dos mayores números

% Borrar todas las variables, cerrar todas las gráficas abiertas y borrar
% la consola para evitar errores.
clear all
close all
clc

% Input del usuario con 10 números enteros en un vector
v_Nums = input('Ingrese 10 numeros de forma vectorial (Separados por un espacio y entre []) ');

% Variables para guardar los máximos
s_Max1 = -inf;
s_Max2 = -inf;

% Ciclo para recorrer todos lo números ingresados
for s_Count = 2:length(v_Nums)
   
   s_ActNum = v_Nums(s_Count); % Obtener el número actual
   s_PrevNum = v_Nums(s_Count-1); % Obtener el número anterior al actual
   if(s_ActNum > s_Max1)
      s_Max1 = s_ActNum; % Actualizar el máximo 1 
   end
   if(s_PrevNum > s_Max2)
       s_Max2 = s_PrevNum; % Actualizar el máximo 2
   end
   
end

% Imprimir el resultado 
fprintf('El mayor 1 es: %1.0f, y el mayor 2 es: %1.0f \n',s_Max1,s_Max2);

%% 2.3. Escriba un programa que reciba del usuario un entero de 5 dígitos y determine si es o no un palíndromo

% Borrar todas las variables, cerrar todas las gráficas abiertas y borrar
% la consola para evitar errores.
clear all
close all
clc

% Recibir el número del usuario
s_Num = input('Ingrese un numero de 5 digitos ');

% ---------------------------- Método 1 --------------------------------- %
% Convertir el número a string
s_StrNum = num2str(s_Num);
% Imprimir los dígitos separados por un espacio
fprintf('%s %s %s %s %s\n',s_StrNum(1),s_StrNum(2),...
    s_StrNum(3),s_StrNum(4),s_StrNum(5));

% ---------------------------- Método 2 --------------------------------- %
% Obtener los dígitos usando división y residuo
s_Dig1 = floor(s_Num/10000); 
s_Res1 = mod(s_Num,10000);

s_Dig2 = floor(s_Res1/1000);
s_Res2 = mod(s_Res1,1000);

s_Dig3 = floor(s_Res2/100);
s_Res3 = mod(s_Res2,100);

s_Dig4 = floor(s_Res3/10);
s_Res4 = mod(s_Res3,10);

s_Dig5 = s_Res4;

% Imprimir los dígitos separados por un espacio
fprintf('%1.0f %1.0f %1.0f %1.0f %1.0f\n',s_Dig1,s_Dig2,...
    s_Dig3,s_Dig4,s_Dig5);

%% 2.4. Escriba un algoritmo que imprima constantemente los múltiplos del entero 2, es decir, 2,4,8,16,32,64, etc.
% Ans: El ciclo es infinito. 

% Borrar todas las variables, cerrar todas las gráficas abiertas y borrar
% la consola para evitar errores.
clear all
close all
clc

% Variable para guardar el resultado a imprimir
s_Ans = 2;
% Loop infinito
while true
    s_Ans = s_Ans*2; % Actualización de la respuesta
    display(s_Ans); % Impresión de la respuesta
end

%% 2.5.Cree un vector que contenga los números del 1 al 16 de forma 
% consecutiva en una variable llamada D, luego convierta ese vector en una
% matriz cuadrada y almacénela en una variable llamada E.

% Borrar todas las variables, cerrar todas las gráficas abiertas y borrar
% la consola para evitar errores.
clear all
close all
clc

% Vector con valores del 1 al 16
D = (1:1:16);
% Convertir el vector en una matriz cuadrada accediendo a sus posiciones
E = [D(1:4);D(5:8);D(9:12);D(13:16)];
% Imprimir la matriz resultante en pantalla
display(E);

%% 2.6.(BONO) Cree una matriz de ceros de tamaño 10x10 en una variable 
% llamada ceros, sobre esta matriz genere una secuencia de pasos para 
% obtener el siguiente resultado.

% Borrar todas las variables, cerrar todas las gráficas abiertas y borrar
% la consola para evitar errores.
clear all
close all
clc

% Creacion de la matriz
ceros = zeros(10,10);

% Recuerde que pueden haber muchas formas de resolver el problema
ceros(2:9,2:9) = ones(8);
ceros(3:8,3:8) = zeros(6);
ceros(4:7,4:7) = ones(4);
ceros(5:6,5:6) = zeros(2);

% Visualización del resultado
display(ceros);

% ------------------------- TERCERA PARTE ------------------------------- %
%% 3.1. El siguiente código debe entregar el valor de b para 100 ciclos.
% a = 0;
% while a<100
% b(a) = a^2;
% end

a = 1; % La variable debe empezar en 1 si se va a usar como índice de un vector
while a < 100 
    b(a) = a^2;
    a = a + 1; % Se debe avanzar en el ciclo
end

%% 3.2.El siguiente código debe entregar un valor para b para 250 ciclos.
% a = 0;
% for c = 0:0.1:25-0.1
% b(a) = c^3;
% a = a + 0.1;
% end

a = 1; % La variable debe empezar en 1 si se va a usar como índice de un vector
for c = 0:0.1:25-0.1
    b(a) = c^3;
    a = a + 1; % Al usar a como índice de un vector, a no puede tomar valores no enteros ni negativos. 
end 

%% 3.3. El siguiente código debe recorrer todos sus ciclos y entregar los múltiplos de 3.
% a = 0;
% for c = 1:200
%     multiplo = c/3;
%     if multiplo – fix(multiplo) = 1;
%         b(a) = c;
%         a = a + 2;
%     end
% end

a = 1; % La variable debe empezar en 1 si se va a usar como índice de un vector
for c = 1:200
    multiplo = c/3; 
    if multiplo - fix(multiplo) == 0; % Es múltiplo si el residuo de la división en 0
        b(a) = c;
        a = a + 1; % Debe avanzar de a una posición en el vector
    end
end 

%% 3.4. El siguiente código debe recorrer todos sus ciclos y clasificar el siguiente vector en múltiplos de 2, múltiplos de 3, múltiplos de 7 y el resto.
% z = [12 62 93 -8 22; 16 2 49 43 91; -4 17 -72 95 6; 5 32 543 -85 99];
% multiplo2 = [];
% multiplo3 = [];
% multiplo7 = [];
% resto = [];
% while a = 1:length(z(:,1))
%     for b = 1:length(z(1,:))
%         if(z(a,b)/2)-fix((z(a,b)/2)) == 0
%             multiplo2 = [multiplo2 z(a,b)];
%         elseif (z(a,b)/3)-fix((z(a,b)/3)) == 0
%             multiplo3 = [multiplo2 z(a,b)];
%         elseif (z(a,b)/7)-fix((z(a,b)/5)) == 0
%             multiplo7 = [multiplo2 z(a,b)];
%         else
%             resto = [resto z(a,b)];
%         end
%     end
% end

z = [12 62 93 -8 22; 16 2 49 43 91; -4 17 -72 95 6; 5 32 543 -85 99];

multiplo2 = [];
multiplo3 = [];
multiplo7 = [];
resto = [];

a = 1; % Inicialización de la variable que controla el ciclo
while a < (length(z(:,1)) + 1) % El ciclo debe ir hasta la longitud del vector
    for b = 1:length(z(1,:)) 
        if(z(a,b)/2)-fix((z(a,b)/2)) == 0
            multiplo2 = [multiplo2 z(a,b)];
        elseif (z(a,b)/3)-fix((z(a,b)/3)) == 0
            multiplo3 = [multiplo3 z(a,b)]; % Se reemplaza la concatenación del mutiplo2 por multiplo3
        elseif (z(a,b)/7)-fix((z(a,b)/7)) == 0 % Se reemplaza la división del fix por 7 y no 5
            multiplo7 = [multiplo7 z(a,b)]; % Se reemplaza la concatenación del mutiplo2 por multiplo7
        else
            resto = [resto z(a,b)];
        end
    end
    
    a = a + 1; % Se debe avanzar en el ciclo para no crear un loop infinito
end
% * NOTA: Si un número es múltiplo de 2 y 3 (i.e. 12) se da prevalencia al
% orden de los vectores, es decir, primero es múltiplo de 2 por lo que no
% aparecerá en la lista de múltiplos de 3. 

% -------------------------- CUARTA PARTE ------------------------------- %
%% 4.1
clc;clear all
%Recibe un vector con 10 valores enteros
x=input('Ingrese un vector con 10 valores enteros (dentro de []): \n');

% bubble sort
while 1
    cambios=0;%numero de intercambios de numeros en el vector
    for i=2:length(x)
        num1=x(i-1);%numero del vector en la posiciÃ³n i-1
        num2=x(i);%numero del vector en la posiciÃ³n i
        
        %Si el numero 1 es mayor al numero 2, ls intercambia de posiciÃ³n en
        %el vector
        if num1>num2
            x(i-1)=num2;
            x(i)=num1;
            cambios=cambios+1;
        end
    end
    
    %Con el while 1 se continua haciendo el proceso anterior hasta que el
    %numero de intercambios sea igual a 0
    if cambios==0
        break
    end
end

display(x);
%% 4.2
clc;clear all
%Recibe vector con 20 valores enteros
x=input('Ingrese un vector con 20 valores enteros (dentro de []): \n');

% Media %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
suma=0;
for i=1:length(x)
    suma=suma+x(i);%Suma todos los valores del vector
end
media=suma/length(x);%Divide entre el numero de valores del vector

% Mediana %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%bubble sort del punto anterior
while 1
    cambios=0;
    for i=2:length(x)
        num1=x(i-1);
        num2=x(i);
        if num1>num2
            x(i-1)=num2;
            x(i)=num1;
            cambios=cambios+1;
        end
    end
    if cambios==0
        break
    end
end

%Revisa si el numero de elementos del vector es impar o par. Aunque en este
%caso no es necesario. numel=20
if ~mod(length(x),2)
    val1=x(length(x)/2);
    val2=x(length(x+1)/2);
    mediana=(val1+val2)/2;%Saca el promedio entre los dos valores del medio
else
    mediana=x(round(length(x)/2));
end

% Moda %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
y=zeros(size(x));

%Doble ciclo que compara cada valor del vector con todos los demÃ¡s
%elementos
for i=1:length(x)
    value=x(i);
    for j=i:length(x)
        value2=x(j);
        if value==value2
            y(i)=y(i)+1;%Si ambos valores son iguales, suma una nueva
            %repeticiÃ³n de dicho valor en un vector y, que tiene el mismo
            %tamaÃ±o que el vector original
        end
    end
end

%Encuentra el maximo en el vector y, que tienen el numero de veces que se
%repite cada valor del vector de valores x
maximo=0;
ind=0;
for i=1:length(y)
    if y(i)>maximo
        maximo=y(i);
        ind=i;
        clear v_max
        v_max(1)=ind;
    elseif y(i)==maximo
        v_max(length(v_max)+1)=i;%v_max es el vector que guarda la posiciÃ³n
        %de los valores que tienen un numero de repeticiones mÃ¡ximo e
        %igual. Es decir, cuando existe mas de una moda
    end
end

moda=x(v_max);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Concatena los valores de moda como cadena de caractÃ©res, en caso de que 
%sean mas de uno.
str='';
for i=1:length(moda)
    if i==length(moda)
        str=strcat(str,'%d. ');
    else
        str=strcat(str,'%d, ');
    end
end

%Imprime la media, media y la moda(s)
fprintf('\nLa media es: %.2f, la mediana es: %.2f y la moda es: ',media,mediana);
fprintf(str,moda);
fprintf('\n\n');

%% 4.3
clc;clear all
M=zeros(6,6);%Matriz 6x6

%ciclo hasta 36000
for i=1:36000
    x1=randi([1,6]);x2=randi([1,6]);%Dos valores enteros aleatorios 
                                    %entre 1 y 6
    M(x1,x2)=M(x1,x2)+1;
end

%Imprime la matriz de 6x6 separado por tabuladores \t
fprintf('\t1\t2\t3\t4\t5\t6\n\n')
for i=1:size(M,1)
%     fprintf('%d  ',i);
%     fprintf('\t*\t*\t*\t*\t*\t*\n\n')
    fprintf('%d\t%d\t%d\t%d\t%d\t%d\t%d\n',i,M(i,:));
%     disp(M(i,:));
    fprintf('\n\n');
end

% freq=0;
% column=size(M,2)+1;
% for i=1:size(M,1)
%     j=column-i;
%     freq=freq+M(i,j);
%     i,j
%     pause();
% end
% 
% per7=freq/sum(sum(M))
