load arquivo_entrada.m; 

n = size(A, 1); 

[U, d] = eliminacao_gauss_pivotacao_parcial(n, A, b);
x = substituicoes_retroativas(n, U, d);

save arquivo_saida.m x;
