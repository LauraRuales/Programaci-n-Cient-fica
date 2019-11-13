% % % Primera parte: Operaciones entre enteros, matrices y condicionales
% % 1.1
% % Se pide al usuario que ingrese los números
PrimerNumero= input('Ingrese el primer número');
SegundoNumero= input ('Ingrese el segundo número');
% % Se realizan las operaciones
Suma = PrimerNumero+SegundoNumero;
Resta = PrimerNumero-SegundoNumero;
Producto = PrimerNumero*SegundoNumero;
Cociente = PrimerNumero/SegundoNumero;
Residuo = PrimerNumero - (SegundoNumero*floor(Cociente));

% % Se entregan al usuario sus resultados
display(Suma,'La suma es')
display(Resta,'La resta es')
display(Producto,'El producto es')
display(Cociente,'El cociente es')
display(Residuo,'El residuo es')

%% 

% % 1.2
% % Se pide al usuario que ingrese los números
PrimerNumero= input('Ingrese el primer número');
SegundoNumero= input ('Ingrese el segundo número');

% % Se usan comparaciones para determinar cual es el número mayor o en su
% % defecto si son iguales
if PrimerNumero>SegundoNumero
    display(PrimerNumero,'Es mayor')
else if SegundoNumero>PrimerNumero
        display(SegundoNumero,'Es mayor')
else
        fprintf('Estos números son iguales')
    end
end

%% 

% % 1.3
% % Se pide al usuario que ingrese los números
PrimerNumero= input('Ingrese el primer número');
SegundoNumero= input ('Ingrese el segundo número');
TercerNumero= input('Ingrese el tercer número');
CuartoNumero= input('Ingrese el cuarto número');
QuintoNumero= input('Ingrese el quinto número');

% % Se inicializan las variables para comparar los minimos y maximos,
% % seguido del vector de los numeros ingresados para acceder a ellos
% % mediante un while. Mediante if y while se comparan los numeros ingresados
% % y se entregan al usuario los resultados
max=-inf;
min=inf;
b=[PrimerNumero, SegundoNumero, TercerNumero, CuartoNumero, QuintoNumero];
c=1;
while c<6
   if max<b(c)
       max=b(c);
   end
   if min>b(c)
       min=b(c);
   end
   c=c+1;
end

display(min,'Es el número menor')
display(max,'Es el número mayor')

%% 

% % 1.4
% % Se pide al usuario que ingrese los números
PrimerNumero= input('Ingrese el primer número');

% % Se determina si un numero es par segun el residuo de una division entre 2
% % y se muestra al usuario su resultado

Paridad= PrimerNumero - (fix(PrimerNumero/2)*2)
if Paridad==0
    fprintf('El número es par')
else
    fprintf('El número es impar')
end
%% 

% %1.5
% % Se pide al usuario que ingrese sus cinco dígitos,se vuelve un string y
% % con esto se transforma en una cadena de caracteres
a=input('Ingrese cinco dígitos');
b=num2str(a);
c=char(b);
fprintf('t\t%c\t\t%c\t\t%c\t\t%c\t\t%c',c)

%% 

% % 1.6
% % Se inicializan las variables matriciales, y se hace la multiplicacion
% % en la segunda multiplicación hay error por lo que se usa la matriz
% % de la matriz C

A=[ 3 5 7; 0.5 1 3; 0 2 6]
B=[0.3 4.5; 5 3.3; 0.1 9]
C=[1 2 3; 3 2 1]
d=A*B
e=A*C'
f=B*C

%% 

% % % Segunda parte:
% % 2.1
% %  Se imprimen los valores del encabezado y se continua imprimiendo en cosola sus
% % valores

b=0; c=0; d=0;
fprintf('\tN\t10*N\t100*N\t1000*N\n')
for i=1:10
    b=i*10;
    c=i*100;
    d=i*1000;
    fprintf('\t%d \t%d  \t%d \t%d \n',i,b,c,d)
 end
 %% 

% % 2.2
% % Se pide al usuario que ingrese los números
a= input('Ingrese el primer número');
b= input ('Ingrese el segundo número');
c= input('Ingrese el tercer número');
d= input('Ingrese el cuarto número');
e= input('Ingrese el quinto número');
f= input('Ingrese el sexto número');
g= input('Ingrese el septimo número');
h= input('Ingrese el octavo número');
i= input('Ingrese el novenoo número');
j= input('Ingrese el decimoo número');
% %  Se crea un vector con los valores ingresados por el usuario, un
% % contador para los ciclos y se inicializan las variables que luego seran
% % los numeros mayores
vector=[a b c d e f g h i j];
contador=0;
mayor1=-inf;
mayor2=-inf;
% % Se crean dos ciclos para obtener los dos numeros mayores, aun cuando
% % son el mismo
for i=1:10
    if vector(i)> mayor1
        mayor1=vector(i);
    end
    for j=1:10
        if j~=i && vector(j)> mayor2
        mayor2=vector(j);
        end
    end
end
fprintf('\t%d\n\t%d',mayor1,mayor2)
%% 

% % 2.3
% % Se pide al usuario que ingrese sus cinco dígitos,se vuelve un string y
% % con esto se transforma en una cadena de caracteres
a=input('Ingrese cinco dígitos');
  b= floor(a/10000);
c= a - b*10000;
  d=floor(c/1000);
e= c - d*1000;
  f= floor(e/100);
g= e- f*100;
  h=floor(g/10);
i= g-h*10;
palindrome= false;
if b==i && h==d
    palindrome = true;
    fprintf('Es palindrome');
else
    fprintf('No es palindrome');
end
%% 


% % 2.4
% % Se crea un ciclo que no termine nunca para que siempre imprima potencias
% % de 2. Cuando se corre este programa matlab siempre esta ocupado
a=2;
while 1
    a=2*a;
    display(2*a);
end
%% 

% % 2.5
% % Se crea el vector, luego se toma su longitud a la cual se le saca la
% % raiz para saber cual seria la dimension de la matriz si fuera otro caso y
% % se inicializa una matriz vacia con la dimension necesaria
vector = [1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16];
a= length(vector);
b= a^(1/2);
E= ones(b,b);
c=1;
% %  Se crea un doble ciclo que llene la matriz con los valores del 1 al 16
 for i =1:b
     for j=1:b
         E(i,j)=c
         c=c+1;
     end
 end
 %% 

% %  2.6 (BONO)
% % Se inicializa la matriz con unos y luego se colocan los unos en sus
% % lugares utilizando un doble recorrido y condicionales
M = ones(10,10);
for i=1:10
    for j=1:10
        if i==1 || i==10 || j==1 || j==10
                M(i,j)= 0
        elseif i==3 && j>2 && j<9
                M(i,j)= 0
        elseif i==8 && j>2 && j<9
                M(i,j)= 0
        elseif i==5 && j>4 && j<7
                M(i,j)= 0
        elseif i==6 && j>4 && j<7
                M(i,j)= 0
        elseif j==3 && i>2 && i<9
                M(i,j)= 0
        elseif j==8 && i>2 && i<9
                M(i,j)= 0
        elseif j==5 && i>4 && i<7
                M(i,j)= 0
        elseif j==6 && i>4 && i<7
                M(i,j)= 0
        end
    end
end
%% 

% % % Cuarta parte:
% %4.1
% % Se inicializa un vector en  donde el usuario va a llenar sus numeros por
% % medio de un imput y un for 
F=ones(1,10);  
for a=1:10
    F(a)=input('Ingrese un número: ');
end

% % Se inicializa una variable tipo boolean que indica que posiciones del
% % arreglo se han ordenado
ordenado=true; 

% %Ciclo que recorre todo el vector desde la segunda hasta la última posición. Si el valor de la izquierda es mayor que el de la
% %derecha dentro del arreglo, se intercambian los valores
while ordenado
    ordenado=false;
    for contador =2:length(F)
        if F(contador)<F(contador-1) 
            x=F(contador);
            F(contador)=F(contador-1);
            F(contador-1)=x;
            ordenado=true; 
        end
    end
end
%% 
% %4.2
% % Se inicializa un vector en  donde el usuario va a llenar sus numeros por
% % medio de un imput y un for 
F=ones(1,20);  
for a=1:20
    F(a)=input('Ingrese un número: ');
end

% % Calcular media
suma=0;
for b=1:20
    suma = suma + b;
end 
media = suma/20;
% % Calcular mediana
mediana = (F(10)+F(11))/2;
% % Calcular moda
moda=0;
contador2=0
for c=1:length(F)
    contador1 =0;
    for d=1:length(F)
        if F(d) == F(c)
            contador1 = contador1 +1  ;         
        end
    end
    if contador1>contador2
        contador2 = contador1;
        moda=F(c);
    end
end
x=moda
fprintf('\t%La media es: \n\t%La mediana es: \n\t%La moda es: \n',media,mediana,x);
%% 

a = 0; 
for c = 1:249 
b(a) = (c/10)^3; 
a = a + 0.1; 
end 
