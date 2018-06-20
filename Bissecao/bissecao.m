function [Raiz, Iter, CondErro] = bissecao(a, b, Toler, IterMax);
  Fa = f(a); Fb = f(b);
  if (Fa * Fb > 0)
    disp ("função não muda de sinal nos extremos do intervalo dado")
  endif
  DeltaX = abs(b - a)/2;
  Iter = 0;
  while (1)
    x = (a + b)/2;
    Fx = f(x);
    if (DeltaX <= Toler && abs(Fx) <= Toler) || (Iter >= IterMax)
      break
    endif
    if (Fa * Fx > 0)
      a = x;
      Fa = Fx;
    else
      b = x;
    endif
    DeltaX = DeltaX/2;
    Iter = Iter + 1;
  endwhile
  Raiz = x;
  if (DeltaX <= Toler && abs(Fx) <= Toler)
    CondErro = 0;
  else
    CondErro = 1;
  endif
endfunction