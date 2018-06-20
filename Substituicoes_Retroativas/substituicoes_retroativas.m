function x = substituicoes_retroativas(n, U, d)
  x(n, 1) = d(n, 1) / U(n,n);
  for i=n-1:-1:1
    Soma = 0;
    for j=i+1:1:n
      Soma = Soma + U(i, j) * x(j, 1);
    endfor
    x(i,1) = (d(i, 1) - Soma) / U(i,i);
  endfor
endfunction