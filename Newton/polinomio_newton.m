function soma = polinomio_newton(m,x,y,z)
  mult = 1;
  soma = 0;
  difdiv = y;
  for ordem=1:m-1
    for linha=m:-1:ordem+1
      difdiv(linha) = (difdiv(linha) - difdiv(linha-1))/(x(linha) - x(linha-ordem));
    endfor
  endfor
  for i=1:m
    soma = soma + difdiv(i)*mult;
    mult = mult*(z-x(i));
  endfor
endfunction