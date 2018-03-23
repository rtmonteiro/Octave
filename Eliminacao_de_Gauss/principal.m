load arquivo_entrada.m;
n = size(A,1);
A
b


[U,d] = eliminacao_gauss(n,A,b);
U
d

x = substituicoes_retroativas(n,U,d);

save arquivo_saida.m x;