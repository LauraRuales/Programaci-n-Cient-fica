function str = Invertidor (cadena)
a = length(cadena);
 b= cadena(a);
if a>1
   b= cadena(a);   
   cadena(:,a)=[];
   a= a-1;
   str = strcat(b,Invertidor(cadena));
else 
    str = b;
end