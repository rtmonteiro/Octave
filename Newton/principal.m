load arquivo_entrada.m;
m = size(x, 1);
r = polinomio_newton(m, x, y, z);
File = fopen('arquivo_saida.m', 'w');
fprintf(File , '#name: r\n');
fprintf(File , '#type: scalar\n');
fprintf(File , '%.4f\n' , r);
fclose(File);