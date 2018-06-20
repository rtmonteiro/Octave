load arquivo_entrada.m;
a
b
m

[Integral, CondErro] = regra_1_3_simpson_composta(a, b, m);
Integral
CondErro

File = fopen('arquivo_saida.m', 'w');
fprintf(File , '#name: Integral\n');
fprintf(File , '#type: scalar\n');
fprintf(File , '%.4f\n' , Integral);
fclose(File);
