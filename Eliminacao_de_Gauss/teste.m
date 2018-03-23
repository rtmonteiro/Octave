% apresentando as linhas da matriz
L1 = [1 -3 2 11]
L2 = [-2 8 -1 -15]
L3 = [4 -6 5 29]

 1 -3  2 | 11
-2  8 -1 |-15
 4 -6  5 | 29

% #1 leva de operações
L2 = L2 .- -2*L1
L3 = L3 .- 4*L1

% #2 leva de operações
L3 = L3 .- 3*L2

% #3 leva de operações
L2 = L2./2
L3 = L3./-12

% #4 leva de operações
L2 = L2 .- L3*3/2
L1 = L1 .- L3*2

% #5 leva de operações
L1 = L1 .- -3*L2

% resposta encontrada
1 0 0 |  2
0 1 0 | -1
0 0 1 |  3

