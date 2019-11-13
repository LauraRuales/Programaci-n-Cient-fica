%% 2.2 Leer los datos del ECG en MatLab y graficarlos

%Apertura todos los electrocardiogramas en formato binario
EC100 = fopen('100-ECG.bin','r');
EC101 = fopen('101-ECG.bin','r');
EC102 = fopen('102-ECG.bin','r');
EC103 = fopen('103-ECG.bin','r');
EC104 = fopen('104-ECG.bin','r');
EC105 = fopen('105-ECG.bin','r');

%Lectura de los electrocardiogramas
ECG100 = fread(EC100,'uint16');
ECG101 = fread(EC101,'uint16');
ECG102 = fread(EC102,'uint16');
ECG103 = fread(EC103,'uint16');
ECG104 = fread(EC104,'uint16');
ECG105 = fread(EC105,'uint16');

%Apertura todos los tiempos de los electrocardiogramas 
Ti100 = fopen('100-Time.bin','r');
Ti101 = fopen('101-Time.bin','r');
Ti102 = fopen('102-Time.bin','r');
Ti103 = fopen('103-Time.bin','r');
Ti104 = fopen('104-Time.bin','r');
Ti105 = fopen('105-Time.bin','r');

%Lectura de los tiempos de los electrocardiogramas
Time100 = fread(Ti100,'double');
Time101 = fread(Ti101,'double');
Time102 = fread(Ti102,'double');
Time103 = fread(Ti103,'double');
Time104 = fread(Ti104,'double');
%Time105 = fread(Ti105,'double');

%Apertura todos las ganancias y valores iniciales de los electrocardiogramas
T100 = fopen('100.txt');
T101 = fopen('101.txt');
T102 = fopen('102.txt');
T103 = fopen('103.txt');
T104 = fopen('104.txt');
T105 = fopen('105.txt');

%Lectura de la ganancia y valores iniciales de los electrocardiogramas
Txt100 = textscan(T100,'%s');
Txt101 = textscan(T101,'%s');
Txt102 = textscan(T102,'%s');
Txt103 = textscan(T103,'%s');
Txt104 = textscan(T104,'%s');
Txt105 = textscan(T105,'%s');

fclose('all');
%% Se convierte la señal de análoga a digital  

% Se separan los valores iniciales de la ganancia
Text100 = Txt100{1,1};        %Primer valor Zero, Segundo Valor Ganancia
Zero100 = Text100{1,1};       %Se almacena el valor inicial en una variable
Gain100 = Text100{2,1};       %Se almacena la ganacia en una variable
Zero100 = Zero100(9:end);     %Se recorta el vector de charts para obtener sólo los números
Gain100 = Gain100(6:end);     %Se recorta el vector de charts para obtener sólo los números
Zero100= str2double(Zero100); %Se convierte el valor inicial de string a double
Gain100= str2double(Gain100); %Se convierte la ganancia de string a double

Text101 = Txt101{1,1};
Zero101 = Text101{1,1};
Gain101 = Text101{2,1};
Zero101 = Zero101(9:end); 
Gain101 = Gain101(6:end); 
Zero101= str2double(Zero101);
Gain101= str2double(Gain101);

Text102 = Txt102{1,1};
Zero102 = Text102{1,1};
Gain102 = Text102{2,1};
Zero102 = Zero102(9:end); 
Gain102 = Gain102(6:end); 
Zero102= str2double(Zero102);
Gain102= str2double(Gain102);

Text103 = Txt103{1,1};
Zero103 = Text103{1,1};
Gain103 = Text103{2,1};
Zero103 = Zero103(9:end); 
Gain103 = Gain103(6:end); 
Zero103= str2double(Zero103);
Gain103= str2double(Gain103);

Text104 = Txt104{1,1};
Zero104 = Text104{1,1};
Gain104 = Text104{2,1};
Zero104 = Zero104(9:end); 
Gain104 = Gain104(6:end); 
Zero104= str2double(Zero104);
Gain104= str2double(Gain104);

Text105 = Txt105{1,1};
Zero105 = Text105{1,1};
Gain105 = Text105{2,1};
Zero105 = Zero105(9:end); 
Gain105 = Gain105(6:end); 
Zero105= str2double(Zero105);
Gain105= str2double(Gain105);

%% Gráfica de los electrocardiogramas

ECG100 = (ECG100 - Zero100)./Gain100;
figure(1);
plot(Time100,ECG100);
title('Electrocardiograma 1'); %Título gráfica
xlabel('Tiempo'); %Título eje horinzontal
ylabel('Voltaje'); %Título eje vertical
% % 
% % ECG1001=(ECG101 - Zero101)./Gain101;
% % figure
% % plot(Time101,ECG101);
% % title('Electrocardiograma 2'); %Título gráfica
% % xlabel('Tiempo'); %Título eje horinzontal
% % ylabel('Voltaje'); %Título eje vertical
% % 
% % ECG102 = (ECG102 - Zero102)./Gain102;
% % figure;
% % plot(Time102,ECG102);
% % title('Electrocardiograma 3'); %Título gráfica
% % xlabel('Tiempo'); %Título eje horinzontal
% % ylabel('Voltaje'); %Título eje vertical
% % 
% % ECG103 = (ECG103 - Zero103)./Gain103;
% % figure;
% % plot(Time103,ECG103);
% % title('Electrocardiograma 4'); %Título gráfica
% % xlabel('Tiempo'); %Título eje horinzontal
% % ylabel('Voltaje'); %Título eje vertical
% % 
% % ECG104 = (ECG104 - Zero104)./Gain104;
% % figure;
% % plot(Time104,ECG104);
% % title('Electrocardiograma 5'); %Título gráfica
% % xlabel('Tiempo'); %Título eje horinzontal
% % ylabel('Voltaje'); %Título eje vertical
% % 
% % ECG105 = (ECG105 - Zero105)./Gain105;
% % figure;
% % plot(Time105,ECG105);
% % title('Electrocardiograma 6'); %Título gráfica
% % xlabel('Tiempo'); %Título eje horinzontal
% % ylabel('Voltaje'); %Título eje vertical

%% 2.3 Identificacion de arritmias en el ECG, tacograma y frecuencia cardiaca offline

%Picos de las ondas R: Posición y altura
[pics100, loc100]=findpeaks(ECG100,Time100, 'MinPeakHeight', 1050);

%Distancia entre cada onda R
DistR = zeros(length(pics100)-1,1); %Variable que almacena la distancia
for i = 1:length(DistR)
   DistR(i) = abs(loc100(i) - loc100(i+1));  %Distancia entre cada par de puntos consecutivos
end

%Gráfica tacograma
figure;
plot(loc100(2:end),DistR);

%Media y desviación estandar
med = mean(DistR);
st = std(DistR);

%Arritmias en el ECG
Arr = [];
rgSup = med + st;
rgInf = med - st;
for i=1:length(DistR)
    if DistR(i) < rgInf
        Arr(end+1,1) = [loc100(i+1)];
        Arr(end,2) = [pics100(i+1)];
    elseif  DistR(i) > rgSup
        Arr(end+1,1) = [loc100(i+1)];
        Arr(end,2) = [pics100(i+1)];
       end
end

%Gráfica de las arritmias sobre el ECG
figure;
plot(Arr(:,1),Arr(:,2),'O');
hold on
plot(Time100,ECG100);

%Frecuencia cardiaca instantánea
Frec = zeros(length(DistR),1);
for i = 1:length(DistR)
  Frec(i) = 60/DistR(i); %Distancia entre cada par de puntos consecutivos
end

figure;
plot(loc100(2:end),Frec);
