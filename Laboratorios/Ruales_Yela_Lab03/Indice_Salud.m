% Descripcion: Esta funcion tomara como parametro la fecha de nacimiento
% que sera de ayuda al calcular la edad. Y con esto calcular la  La cual sirve para calcular el rango de frecuencia
% maxima objetivo y por ultimo la altura y el peso que calcula el indice de
% masa corporal
% Recibe fecha de nacimiento, altura, peso. Retorna edad, frecuencia
% cardiaca maxima, indice de masa corporal y el rango de frecuencia maxima
% objetivo 
function[edad, FCM, RFM, IMC ]=Indice_Salud ( FN , altura, peso)
fecha=date; %Se utiliza una funcion propia de matlab para conocer la fecha actual
anho = str2double(fecha(8:11)); %Se separan los datos de esta fecha por dia, mes y año
mes = (fecha(4:6));%Se separan los datos de esta fecha por dia, mes y año
dia= str2double(fecha(1:2));%Se separan los datos de esta fecha por dia, mes y año

%Para conocer la edad se necesita tener la informacion del mes en numeros y
%asi poder compararlo con la fecha de nacimiento y saber si ya cumplio años
%o aun no. Por esto se compara el resultado del mes con todos los 12
%resultados posibles para esta variable y se transforma en numero
if strcmp(mes,'Jan')
    mes= 1;
elseif strcmp(mes,'Feb')
    mes = 2;
elseif strcmp(mes,'Mar')
    mes=3;
elseif strcmp(mes,'Apr')
    mes=4;
elseif strcmp(mes,'May')
    mes = 5;
elseif strcmp(mes,'Jun')
    mes=6;
elseif strcmp(mes,'Jul')
    mes=7;
elseif strcmp(mes, 'Aug')
    mes=8;
elseif strcmp(mes,'Sep')
    mes=9;
elseif strcmp(mes,'Oct')
    mes=10;
elseif strcmp(mes,'Nov')
    mes=11;
else
    mes =12
end
tamanho= length(FN(:,1)); %Se toma la longitud de la lista
edad=zeros(tamanho,1);%Se inicializa el vector que almacenara las edades de los pacientes
FCM=zeros(tamanho,1);%Se inicializa el vector que almacenara la frecuencia cardiaca maxima de los pacientes
RFM= zeros(tamanho,2);%Se inicializa el vector que almacenara el rango de frecuencia maxima de los pacientes
IMC=zeros(tamanho,1);%Se inicializa el vector que almacenara el indice de masa corporal de los pacientes
for i=1:tamanho %Inici el ciclo que asignara el valor de la edad en cada caso
    if FN(i,3)<anho
        if  mes>=FN(i,2) %Se compara para saber si ya cumplio años en este año
            if dia>=FN(i,1)%Se compara para saber si ya cumplio años en este año
                edad(i)=anho-FN(i,3);
            else%Ya que aun no ha cumplido años se le resta uno a la resta del año actual menos el de nacimiento
                edad(i)=anho-FN(i,3)-1;
            end
        else%Ya que aun no ha cumplido años se le resta uno a la resta del año actual menos el de nacimiento
            edad(i)=anho-FN(i,3)-1;
        end
    end
    FCM(i)=220-edad(i); %Se calcula la la frecuencia cardiaca maxima
    RFM(i,1)= FCM(i)*0.5;%Se calcula el valor minimo del rango
    RFM(i,2)= FCM(i)*0.85;%Se calcula el valor maximo del rango
    IMC(i)= (peso(i))/(altura(i)^2);%Se calcula el valor del indice de masa corporal
end
