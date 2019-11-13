%% Laboratorio 7 Eliminacion Gausiana y Gauss-Jordan
% Autora: Laura Cristina Ruales Yela
% Fecha: Octubre 17
%Matrices:
A = [ 1 3 4 3; 2 7 3 -7; 2 8 6 -4];
B = [ 2 8 -4 0; 2 11 5 9; 4 18 3 11];
C = [0 2 6 2; 3 9 4 7; 1 3 5 6];
D = [ 0 5 2 6 5; 1 3 2 5 11; -1 2 -2 5 -6; 2 6 4 7 19];
%% Parte 1 
E = Eliminacion_Gausiana(A);
F = Eliminacion_Gausiana(B);
G = Eliminacion_Gausiana(C);
H = Eliminacion_Gausiana(D);
%% Parte 2
I = Gauss_Jordan(A);
J = Gauss_Jordan(B);
K = Gauss_Jordan(C);
L = Gauss_Jordan(D);