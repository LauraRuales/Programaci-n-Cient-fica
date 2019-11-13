% Laboratorio 5 
% Date: 13/09/17
% Laura Cristina Ruales Yela
% Primera Parte: Archivos Binarios
v=rand(1,100); %Se cea el vector con 100 datos de números aleatorios
archivo=fopen('v_Rand.bin','w+'); %Se crea un archivo binario
fwrite(archivo, v, 'int8'); %Se almacena el vector en un archivo binario
fclose(archivo); %Se borra el archivo creado
clear all %Se borra la información del workspace
archivo=fopen('v_Rand.bin','r'); %Se abre el archivo en modo lectura
x=fread(archivo, [1,100], 'int8'); %Se crea una variable para leer el archivo 
fclose(archivo); %Se cierra el archivo
%%  Segunda Parte: Archivos.mat
Lista=load('Lista.mat'); %Se carga la lista
agnos=[]; %Se inicializa un vector vacio para guardar después la información
for i=2:101 
   agnos(i-1)=Lista.data{i,6}; %Con este ciclo se cargan los valores de la Lista 
end
save('Agnos_Nacimiento.mat', 'agnos'); %Se guarda el vector en un nuevo archivo 
%% Tercera parte: Figuras
f=figure('Name','Histograma Años','Color','white','NumberTitle','off'); %Inicialización de la variable que guarda el fondo blanco de la figura del fondo
archivo=load('Agnos_Nacimiento.mat'); %Se carga el archivo 
minimo = inf; %Variable que guarda el menor año de nacimiento
maximo = -inf; %Variable que guarda el mayor año de nacimiento
for i=1:length(archivo.agnos) %Ciclo que recorre todo el archivo para saber cual es el numero minimo y maximo de año de nacimiento
    if archivo.agnos(i) < minimo %Compara si es menor que el minimo actual
        minimo= archivo.agnos(i); %Si se cumple la condición cambia el minimo por el valor del archivo en la posicion dada
    end
    if archivo.agnos(i) > maximo %Compara si es mayor que el minimo actual
        maximo=archivo.agnos(i); %Si se cumple la condición cambia el maximo por el valor del archivo en la posicion dada
    end
 end
a = maximo -minimo; %Al sacar la diferencia entre el minimo y maximo año de nacimiento. Se obtiene el periodo en años donde se va a realizar el histograma
b = zeros(1,a); %Se inicializa un vector en donde se guardaran los años de nacimiento ( eje x)
c= zeros(1,a); %Se inicializa un vector en donde se guardaran la cantidad de nacimientos por año ( eje x)
for i=1:length(archivo.agnos) %Se crea un doble ciclo para recorrer cada posición del archivo 
    cont = 0; %Variable que guarda la cantidad de personas que nacieron por año
    for j=1:length(archivo.agnos) %Segundo ciclo: Compara el año de nacimiento de la posicion i con los años de nacimiento en la posicion j
        if archivo.agnos(i)== archivo.agnos(j)
            cont = cont + 1; %Cuando el año en la posicion i es igual al año en la posicion j, se suma 1 al contador
        end
    end
   if i <=a % Mientras el valor en el primer ciclo sea menor que la diferencia entre le maximo y minimo año de nacimiento
        b(i)= minimo -1 + i; %El vector b esta lleno de ceros, y será el eje x del histograma, por lo que debe empezar a llenarse con los valores correspondientes al minimo mas la posicion para una cantidad de ciclos igual a la diferencia
        c(i)= cont; %El vector c corresponde al eje y del histograma por lo que debe almacenar la cantidad de personas que nacieron por año
   end
  end
h= bar(b,c); %Se invoca la función var para crear el histograma
save('Histograma_Años.fig', 'h'); %Se guarda el archivo como formato figura
save('Histograma_Años.jpg', 'h'); %Se guarda el archivo como formato imagen