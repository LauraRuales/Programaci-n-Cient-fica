% % % Se crea un cuadro de dialogo que pide al usuario que ingrese un
% numero y luego le devuelve el numero en binario si fuera decimal y en
% decimal si fuera binario
prompt = {'Numero a convertir:', %Se nombra los cuadros en donde el usuario ingresa el numero a convertir
    'Conversión a binario:', %Se coloca la conversion en binario
    'Conversión a entero/decimal:'}; %Se coloca la conversion en entero o decimal
name='Calculador'; %Nombre del cuadro de dialogo
lineas = 1; %numero de lineas en cada campo
defaultans = {'0','0','0'}; %El valor predeterminado de cada campo
respuesta = inputdlg(prompt,name,lineas,defaultans); %creacion de la ventana
c = respuesta{1};  %Se pide el valor del primer campo
a =DecimalBinario(c); %la representacion en binario del valor del primer campo
b=0; %Es un valor que se toma como booleano para saber si en el nuero ingresado por el usuario hay numeros diferentes de 1 y 0
for i=1:length(c) %Se hace un ciclo que recorre cada posición y evalua si es difente de 1, 0 o el punto decimal
    if str2double(c(i))~=1
        if str2double(c(i))~=0
            if (c(i))~= '.'
            b=1; %En caso de que haya algo distinto de 1, 0 y el punto decimal se cambia el booleano
            end           
        end
    end
end
    if b==1 %Si el booleano indica que no es un numero binario
        d= 'El numero ya es decimal'; %Se indica al usuario que el numero ya es decimal
    else
        d = num2str(BinarioDecimal(c));  %la representacion en decimal o entero del valor del primer campo
    end
defaultans = {c,a,d};%valor a mostrar de los campos
respuesta = inputdlg(prompt,name,lineas,defaultans);%Devuelve la ventana ya modificada