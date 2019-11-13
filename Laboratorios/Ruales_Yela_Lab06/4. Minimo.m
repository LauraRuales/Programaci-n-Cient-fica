function min = Minimo(a)
A = [ 3 4 5 6 1 7 8 4 5 6 7 ];
min = inf;
if a>1
  if min > A(a) 
      min = A(a);
  end
  Minimo(a-1);
end
min
end