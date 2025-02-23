% adiciona( X , L1 , L2 ) – onde L2 é a lista que contém o elemento X e a lista L1.
adiciona(X , L , [X|L]).

% apaga( X , L1 , L2 ) – onde L2 é a lista L1 sem o elemento X.
apaga(_,[],[]).
apaga(X, [X|L1], L2):- apaga(X, L1, L2).
apaga(X, [Y|L1], [Y|L2]):- X \= Y, apaga(X,L1,L2).

% concatena( L1 , L2 , L3 ) – onde L3 é resultado da junção das listas L2 e L1.
concatena([], L, L).
concatena([Y|L1], L2, [Y|L3]):- concatena(L1,L2,L3).

% membro( X , L ) – que é verdadeiro se X pertencer à lista L.
membro(X,[X|_]).
membro(X,[_|L]):- membro(X,L).

% comprimento( X , L ) – onde X é o número de elementos da lista L.
comprimento(0,[]).
comprimento(X,[_|L]):- comprimento(X2, L), X is X2 + 1.
