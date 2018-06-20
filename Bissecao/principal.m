load arquivo_entrada.m;

[Raiz, Iter, CondErro] = bissecao(a, b, Toler, IterMax);

File = fopen('arquivo_saida.m', 'w');

fprintf(File , '#name: Raiz\n');
fprintf(File , '#type: scalar\n');
fprintf(File , '%.4f\n\n' , Raiz);

fprintf(File , '#name: Iter\n');
fprintf(File , '#type: scalar\n');
fprintf(File , '%d\n\n' , Iter);

fprintf(File , '#name: CondErro\n');
fprintf(File , '#type: scalar\n');
fprintf(File , '%d\n' , CondErro);

fclose(File);
