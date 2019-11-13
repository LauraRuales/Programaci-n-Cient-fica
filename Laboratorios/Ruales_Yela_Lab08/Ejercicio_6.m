syms x;
Con_Sus = 0:0.1:200;
inter=1;
for t =0:0.1:200
Funcion = 0.5*log(1/x) + 1 - x -5*t;
[Raiz, Int, Error] = Newton_Raphson(Funcion,1.5, 10);
Con_Sus(inter+1)= Raiz;
inter=inter + 1;
end