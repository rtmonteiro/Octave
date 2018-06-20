function [Integral, CondErro] = regra_1_3_simpson_composta(a, b, m)
  if(mod(m,2)!=0)
  CondErro = 1;
  Integral = -1;
  return;
  endif
  h=(b-a)/m;
  soma=0;
  for i=0:2:m-2
    soma = soma + funcao(a+i*h) + 4*funcao(a+(i+1)*h) + funcao(a+(i+2)*h);
  endfor
  Integral = soma*h/3;
  CondErro = 0;
endfunction

