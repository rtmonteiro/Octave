function [U,d] = eliminacao_gauss(n,A,b)
    d(1,1) = b(1,1);
    for i=1:1:n-1
        m = A(i+1,1)/A(1,1);
        for j = i:1:n
            U(1,j) = A(1,j);
            U(i+1,j) = A(i+1,j) - A(1,j)*m;
        endfor
        d(i+1,1) = b(i+1,1) - b(1,1)*m;
    endfor
    a = "função 1 rolou"
endfunction