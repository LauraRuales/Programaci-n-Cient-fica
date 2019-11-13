%% ECG1
[Tiempo, data_ECG]=ECG('100-ECG__.bin','100-Time__.bin'); %Aquí le cambias, el nombre del archivo y ya
[Diferencia, Coordenadas, picos]=Tacograma(data_ECG,Tiempo,-0.3);
Frecuencia=60./Diferencia;
[Arritmias, Promedio, DesviacionE] = Identificacion( Diferencia, picos, Coordenadas );
% % 
% % Nuestras = Arritmias(:,1);
% % Medicos = wuux2(100);
% % longN = 1:1:length(Nuestras);
% % longM = 1:1:length(Medicos);
% % longN = longN';
% % longM = longM';
% % 
% % figure;
% % plot(longN,Nuestras,'*','b');
% % hold on
% % plot(longM,Medicos,'*','r');

% Es el código que grafica lo de arriba, no es importante
figure
subplot(3,1,1)
plot(Tiempo, data_ECG); %Electrocardiograma
hold on
plot(Arritmias(:,1),Arritmias(:,2), 'O')

PromDesMin = zeros(length(Coordenadas),1);
PromDesMin(:) = Promedio-2*DesviacionE;
PromDesMax = zeros(length(Coordenadas),1);
PromDesMax(:) = Promedio+2*DesviacionE;

subplot(3,1,2)
plot(Coordenadas,Diferencia) %Tacograma
hold on
plot(Coordenadas, PromDesMax)
hold on
plot(Coordenadas,PromDesMin)

subplot(3,1,3)
plot(Coordenadas,Frecuencia) %Frecuencia

% 100 = 6
% 105 = 21
% 109 = 13
% 116 = 39
% 118 = 42
% 119 = 139
