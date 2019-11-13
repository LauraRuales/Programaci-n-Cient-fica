
% Laura Cristina Ruales Yela 
%%  Caminata del borracho 
tiempo=input ('Ingrese e tiempo de camino'); %Se pide al usuario que ingrese el tiempo de caminata
num_Sim=input('Ingrese el numero de simulaciónes'); % Se pide al usuario que ingrese la cantidad de simulaciones que desea
camino= Camino_Borracho(tiempo, num_Sim); % Se llama a la función que integra todas las funciones para que en una celda incluya el numero de simulacion, la distancia recorrida y el grupo de clasificacion
h = Histograma(camino); %Se llama al a función histograma que grafica la cantidad de simulaciones que estuvo en cada grupo y devuelve la distancia promedio

%%  Informatización de registros medicos 
nombre=cell(1,1);%declarar celda para almacenar el nombre del paciente
nombre{1,1}=input('ingrese el nombre del paciente: \n','s');%se ingresa el nombre del paciente por consola
apellido=cell(1,1);%declarar celda para almacenar el apellido del paciente
apellido{1,1}=input('ingrese el apellido del paciente: \n', 's');%se ingresa el apellido del paciente por consola
fecha1=input('ingrese la dia de nacimiento del paciente: \n');%se ingresa el dia del paciente por consola
fecha2=input('ingrese la mes de nacimiento del paciente: \n');%se ingresa el numero del mes correspondiente al paciente del paciente por consola
fecha3=input('ingrese la año de nacimiento del paciente: \n');%se ingresa el año del paciente por consola
genero=cell(1,1);%declarar celda para almacenar el genero del paciente
genero{1,1}=input('ingrese el genero del paciente: \n','s');%se ingresa el genero del paciente por consola
[altura]=input('ingrese la altura en metros del paciente: \n');%se ingresa el altura del paciente por consola
[peso]=input('ingrese el peso en kilogramos del paciente: \n');%se ingresa el peso del paciente por consola
[fecha]=[ fecha1, fecha2, fecha3];%se forma un vector con las fechas ingresadas por consola
[ edad, FCM, RFM, IMC  ]= Indice_Salud( fecha, peso, altura )%se llama a la funcion con parametros vector fecha, peso y altura
global Health %se declara una structura general donde se almacenarán los perfiles de salud
Health=Perfil(nombre,apellido,genero,fecha,altura,peso,edad,FCM,RFM,IMC);%se almacena el perfil de salud del paciente en la estructura global
Health(1).field %se muestra en consola el prefil del paciente
display(Health);
%% cargar pacientes
load('Lista.mat');%se cargan los valores de la lista en el workspace
nombre=data(2:end,1);%se almacenan todos los nombres de la lista en la variable
apellido=data(2:end,2);%se almacenan todos los apellidos de la lista en la variable
genero=data(2:end,3);%se almacenan todos los generos de la lista en la variable
fecha=[cell2mat(data(2:end,4)),cell2mat(data(2:end,5)),cell2mat(data(2:end,6))];%se almacenan todos las fehcas de la lista en el vector, conviertiendolos a tipo double
altura=cell2mat(data(2:end,7));%se almacenan todos las alturas de la lista en el vector, convirtiendolo a tipo double
peso=cell2mat(data(2:end,8));%se almacenan todos los pesos de la lista en el vector, convirtiendolo a tipo double
[ edad, FM, FMCO, IMC  ]=Indice_Salud( fecha, peso, altura );%se almacenan los resultados de la funcion
Health=Perfil(nombre,apellido,genero,fecha,altura,peso,edad,FM,FMCO,IMC);%se almacena de los perfiles de salud del paciente en la estructura global
for i=1:length(nombre)
    Health(i).field%muestra en consola todos los perfiles
end
[ minimo, maximo, media] = Datos( edad ); %se almacenan los resultados de la funcion
fprintf('la edad maxima de los datos: %d \n la minima:%d \n la media: %d\n', minimo, maximo, media)%muestra en consola todos los perfiles
[ minimo, maximo, media] = Datos( peso );%se almacenan los resultados de la funcion
fprintf('el peso maximo de los datos: %d \n el minimo:%d \n la media: %d\n', minimo, maximo, media)%muestra en consola todos los perfiles
[ minimo, maximo, media] = Datos( altura);%se almacenan los resultados de la funcion
fprintf('la altura maxima de los datos: %d \n la minima:%d \n la media: %d \n', minimo, maximo, media)%muestra en consola todos los perfiles
%% Gráficas
tipo=input('Ingrese el tipo de función que desea'); %Se pide al usuario que ingrese el tipo de función que quiere
a=input('Ingrese el valor de "a" en la formula canónica'); %Se pide al usuario que ingrese el valor que desea
b=input('Ingrese el valor de "b" en la formula canónica'); %Se pide al usuario que ingrese el valor que desea
c=input('Ingrese el valor de "c" en la formula canónica'); %Se pide al usuario que ingrese el valor que desea
grafica = Grafica (tipo, a, b,c); %Se llama a la función para que realice la gráfica