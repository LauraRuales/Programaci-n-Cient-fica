lista = load('Lista.mat');
agnos = cell(length(lista-1));
for a = 1:length(lista-1);
    a = lista.data(i,6);
    agnos(i-1) = a;
  end