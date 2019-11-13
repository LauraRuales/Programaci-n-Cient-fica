
Diam = 2.8; %Diametro en milimetros
Vel = 1.8; %Velocidad en metros/segundo
Den = 1000; %Densidad en kg/m3
Vis = 0.001; %Viscosidad en kg/m.s
Re = Diam*Vel*Den/Vis; %Número de Reynolds
Colebrook = @(x) (x.^(-1/2))-(4.07*log10(Re*x.^(1/2)))+ 0.06;
b=-100:1:100;
y = zeros(1,201);
y = Colebrook(b);
plot(b,y,'r');
grid
%Al hacer el plot no se encuentra ningun punto de corte con el eje x, por
%tanto con cualquier intervalo para ambas funciones obtendría error 
% [Raiz, limites, error]=Falsa_Posicion(Colebrook,1,75);
% fprintf(' %s %d ', 'El factor de friccion en el cual el flujo es 0 es:', Raiz)
% [ Raiz,Int] = Biseccion(Concentracion,-20, 10,0.5); 
% fprintf('%s %d %s','El factor de friccion en el cual el flujo es 0 es:', Raiz);