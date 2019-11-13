function v =  imprimir (n)
v=[];
if n >= 1
 v = [imprimir(n-1), n];
 else     
   v= [0];
end