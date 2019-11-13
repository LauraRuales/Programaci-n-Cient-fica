%% Autora: Laura Cristina Ruales Yela // Laboratorio 8
%Primera Parte: Regresion Lineal
Arch = fopen('pobreza(1).txt','r'); %Se abre el archivo 
Archivo = textscan(Arch, '%s %s %s' , 'delimiter', ','); %Se escanea y guarda el archivo
fclose('all'); %Se cierran todos los arcivos que pudieran estar abiertos
Ind = Archivo{1,2}; %Se extrae del archivo la segunda columna
Brth = Archivo{1,3}; %Se extrae del archivo la primera columna
y= zeros(51,1); %Se inicializa un vector que almacenara los datos de la segunda columna
x = zeros(51,1); %Se inicializa un vector que almacenara los datos de la primera columna
for i=1:51    %Se hace un recorrido que llene el vector con los datos correspondientes
y(i)= str2num(Ind{i+1,1});
x(i) = str2num(Brth{i+1,1});
end
Data = [x,y]; %Una vez almacenados los datos en los vectores correspondientes se almacentan en una matriz
[PendReg , InterReg ] = Regresion_Lineal(Data); %Se llama a la funci�n Regresi�n lineal
ResMat = polyfit (x,y,1); %Se llama la funcion para regresiones lineales de Matlab
%Se toma los valores arrojados por las regresiones en variables separadas
a = PendReg; 
b = ResMat(1,1);
c = InterReg;
d = ResMat(1,2);
prompt = {'Pendiente regresi�n:', %Se nombran los cuadros en donde el usuario ver� los resultados
    'Pendiente Matlab:', 
    'Intercepto Regresi�n:', 
    'Intercepto Matlab:'};
name='Comparaci�n Regresi�n - Matlab'; %Nombre del cuadro de dialogo
lineas = 1; %numero de lineas en cada campo
defaultans = {num2str(a),num2str(b),num2str(c),num2str(d)}; %El valor predeterminado de cada campo
respuesta = inputdlg(prompt,name,lineas,defaultans); %creacion de la ventana

%% Segunda Parte 
% 1. Funci�n Biseccion.
% 2. Funci�n Falsa_Posicion.
% 3. Funci�n Newton_Raphson.
% 4. Funci�n Secante.
% 5. Funci�n Punto_Fijo

%% Tercera Parte: Ejercicios
% Ejercicio 2