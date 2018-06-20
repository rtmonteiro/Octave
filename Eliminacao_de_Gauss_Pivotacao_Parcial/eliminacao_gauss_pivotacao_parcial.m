function [A, b] = eliminacao_gauss_pivotacao_parcial(n, A, b)
  for j=1:n-1
    valor_pivo = A(j,j);
    posicao_pivo = j;
    for linha=j:n
      if (abs(valor_pivo)<abs(A(linha,j)))
        posicao_pivo = linha;
        valor_pivo = A(linha,j);
      endif
    endfor
    if (posicao_pivo!=j)
      aux = b(j,1);
      b(j,1) = b(posicao_pivo,1);
      b(posicao_pivo,1) = aux;
      for coluna = j:n
        vetor_subs(coluna) = A(j,coluna);
        A(j,coluna) = A(posicao_pivo,coluna);
        A(posicao_pivo,coluna) = vetor_subs(coluna);
      endfor
    endif
    if (A(j,j)!=0)
      for i=j+1:n
        mult = A(i,j) / A(j,j);
        for k=j:n
          A(i,k) = A(i,k) - mult * A(j,k);
        endfor
        b(i,1) = b(i,1) - mult * b(j,1);
      endfor
    endif
  endfor
endfunction