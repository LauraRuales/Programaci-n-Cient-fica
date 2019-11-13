
%Descripción: Función que puede generar 4 volumenes, dependiendo de los parametros ingresados por
%el usuario 
%Parametros: La función recibe el tipo de superficie que se quiere generar
%y valores correspondientes a, b y c que posteriormente seran claves en la
%ecuacion canónica. Los tipos de superficies estan condificados en códigos numericos
%Tipos de superficie:  Paraboloide Hiperbolico =1
%                      Paraboloide Circular =2
%                      Cono = 3

%Return: Esta función tiene como resultado la gráfica de la función deseada
function [resultado] = Grafica(tipo,a,b,c )
if tipo == 1 %Evalua e identifica el tipo de funcion
    [x,y]= meshgrid(-a:.2:a, -b:0.2:b); %define el dominio de la funcion y los valores tomados por x,y
    z= c*((x/a).^2 - (y/b).^2); % indica la ecuacion canonica de la funcion y determina la forma de esta
    resultado=surf(x,y,z); %realiza la grafica de la funcion
elseif tipo == 2 %evalua e identifica el tipo de funcion
    [x,y]= meshgrid(-a:.2:a, -b:0.2:b); %define el dominio de la funcion y los valores tomados por x,y
    z= c*((x/a).^2 + (y/b).^2); %indica la ecuacion canonica de la funcion y determina la forma de esta    
     resultado=surf(x,y,z);  %realiza la grafica de la funcion
elseif tipo == 3 %Evalua e identifica el tipo de funcion
    [x,y]= meshgrid(-a:.2:a, -b:0.1:b);%define el dominio de la funcion y los valores tomados por x,y
    m=ones(a,a);
    z= m/(x.^2 + y.^2 +1);%indica la ecuacion canonica de la funcion y determina la forma de esta
    resultado=surf(x,y,z); %realiza la grafica de la funcion
end


