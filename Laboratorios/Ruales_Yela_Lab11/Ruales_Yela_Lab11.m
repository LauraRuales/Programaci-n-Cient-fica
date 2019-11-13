%% Ejercicio 1
xi = 0;
yi = 9;
h = 0.00001;
b = 1;

% Método Euler Forward
FunFor= @(x,y) 4*exp(6*x) + 11*y;
[xF, yF] =  MetEuler(FunFor,xi,yi,h,b);

% Método Euler Backward
FunBackX = @(x) 4*exp(6*x);
FunBackY = 11;
[xB,yB] = MetEuBack(FunBackX,FunBackY,xi,yi,h,b);

% Método Euler Modificado
[xM,yM] = MetEuMod(FunFor,FunBackX,FunBackY,xi,yi,h,b);

%Solución analítica
FunAn = @(x) (49/5)*exp(11*x) - (4/5)*exp(6*x);
xan = xi:h:b;
yan = zeros(numel(xan),1);
for i = 1: numel(xan)
   yan(i) = FunAn(xan(i)); 
end

%Error Forward
ErF = 0;
for i = 1: numel(yan)
   ErF = ErF + abs(yan(i) - yF(i));
end
%Error Backward
ErB = 0;
for i = 1: numel(yan)
   ErB = ErB + abs(yan(i) - yB(i));
end
%Error Modificado
ErM = 0;
for i = 1: numel(yan)
   ErM = ErM + abs(yan(i) - yM(i));
end
ErF = ErF/numel(yan);
ErB = ErB/numel(yan);
ErM = ErM/numel(yan); 

fprintf('%s %2.3f \n','El error promedio en el método Euler Forward es:', ErF)
fprintf('%s %2.3f \n','El error promedio en el método Euler Backward es:', ErB)
fprintf('%s %2.3f \n','El error promedio en el método Euler Modificado es:', ErM)

%% Ejercicio 2
% Método Euler Forward
% FunFor= 
% Método Euler Backward
% FunBack =
% Método Euler Modificado
% FunMod =