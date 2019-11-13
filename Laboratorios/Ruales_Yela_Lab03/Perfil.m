function [ Health ] = Perfil( nombre, apellido, genero, fecha, altura, peso,edad,FM,FMCO,IMC)
%
for i=1:length(nombre)    
Health(i).field=struct('Nombre',nombre(i),'Apellido',apellido(i),'Genero',genero(i),'FechaNacimiento',fecha(i,:),'Altura',altura(i,1),'Peso',peso(i,1),'Edad',edad(i,1),'FrecuenciaMaxima',FM(i,1),'RangoFrecuenciaMax',FMCO(i,1),'IndiceMasaCorporal',IMC(i,1))
end