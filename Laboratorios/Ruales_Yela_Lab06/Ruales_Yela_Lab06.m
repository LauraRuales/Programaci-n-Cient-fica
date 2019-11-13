%% Punto 1.
% Funci�n que toma dos n�meros y recursivamente los multiplica
x = input('Escriba el primer n�mero que quiere multiplicar'); 
y = input('Escriba el segundo n�mero que quiere multiplicar'); 
c = Multiplicacion(x,y);  
%% Punto 2
%  Funci�n que toma dos n�meros (una base y un exponente) y recursivamente
%  realiza la operacion exponencial
x = input('Escriba el n�mero que quiere como base');
y = input('Escriba el n�mero que quiere como exponente');
c = Exponencial(x,y);
%% Punto 3
% Es una funci�n que usando recursi�n imprime en pantalla los n�meros del 0 al n.
x = input('Ingrese el n�mero hasta el cual quiere imprimir los valores');
y = Imprimir(x);
%% Punto 4
%Funci�n que usando recursi�n encuentra el valor m�nimo en un arreglo de n�meros
A = input('Ingrese el tama�o del vector');
v = zeros(1,A);
for i=1:A
    v(i) = input('Ingrese su valor');
end
minimo = Minimo(v);
%% Punto 5
%Funci�n que usando recursi�n toma un string y lo devuelva escrito al contrario
str = input('Ingrese sus caracteres','s');
respuesta = Invertidor(str);
%% Punto 6
%Funci�n que usando recursi�n revisa si un n�mero es primo o no
primo = input('Ingrese su valor');
NumeroPrimo(primo,2);
%% Punto 7
%Funci�n que usando recursi�n entrega los valores de la serie de Fibonacci
 n = input('Ingrese la cantidad de valores que desea');
 m = zeros(1,n); %Ya que la funcion no retorna un vector, se crea el vector aparte
 for i =1:n
     m(i)= Fibonacci(i-1); %Mediante un for se llena el vector con los valores de cada posicion
 end
 display(m); %Se muestra el vector al usuario

%% Punto 8
% Funcion que con recursividad organiza de mayor a menor un arreglo
A = input('Ingrese el tama�o del vector');
v = zeros(1,A);
for i=1:A
    v(i) = input('Ingrese su valor');
end
B = MayorMenor(v,1);
%% Punto 9
%Funciones que reciben como par�metro un entero n y devuelven el valor de
%la suma correspondiente:
n = input('Ingrese el valor para el cual quiere llegar en la suma');
a = SumatoriaA(n);
b = SumatoriaB(n);
c = SumatoriaC(n);
d = SumatoriaD(n);
%% Punto 10
%Funciones que reciben como par�metro un entero n y devuelven el valor de
%la serie correspondiente:
x = input('Ingrese el valor para el cual quiere hacer el c�lculo');
n = input('Ingrese el valor del n�mero de interacciones');
a = SerieSeno(x,n);
b = SerieCoseno(x,n);
c = Euler(n,x);
%% Punto 11
A = [ 1 2 3; 4 7 6; 9 8 9]
B = MatrizInversa(A)


% 8 para el exponente en 32 bits y 23 mantisa. 11 para el exponente y 52 para la mantisa en 64 bits 