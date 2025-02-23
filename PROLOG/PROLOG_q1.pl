% exemplo de grafo

total_nos([0,1,2,3,4,5,6,7,8,9]).

vertice(0).
vertice(1).
vertice(2).
vertice(3).
vertice(4).
vertice(5).
vertice(6).
vertice(7).
vertice(8).
vertice(9).

aresta(0, 1).
aresta(1, 2).
aresta(1, 3).
aresta(3, 4).
aresta(4, 2).
aresta(2, 6).
aresta(6, 5).
aresta(6, 7).
aresta(5, 7).
aresta(7, 8).
aresta(8, 9).

% ?- adjacente( 0 , 1 ). ? O vértice 0 é adjacente ao vértice 1?
adjacente(X, Y) :- aresta(X, Y).
adjacente(Y, X) :- aresta(X, Y).

% ?- caminho( [0 , 1 , 2] ). ? Os vértices 0,1,2 formam um caminho?
caminho([_]).
caminho([H,H2 | T]) :- adjacente(H, H2), caminho([H2 | T]).

% grau( 1 , W ). ? Qual o grau do vértice 1?
grau(1, W) :- total_nos(N), total_adj(1, W, N).

total_adj(1, 0, []).
total_adj(1, W, [Y|L]):- adjacente(1, Y), total_adj(1, W1, L), W is W1 + 1.
total_adj(1, W, [_|L]):- total_adj(1, W, L).

