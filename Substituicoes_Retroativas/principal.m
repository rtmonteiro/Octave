load arquivo_entrada.m;
U
d

n = size(U,1);
n

x = substituicoes_retroativas(n, U, d);
x

save arquivo_saida.m x;