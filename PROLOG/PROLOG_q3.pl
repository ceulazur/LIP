% a) Utilizando o predicado progenitor( X , Y ) ( X é progenitor de Y ), represente em Prolog todos os progenitores da família Pinheiro.
progenitor(jose, joao).
progenitor(jose, ana).
progenitor(maria, joao).
progenitor(maria, ana).

progenitor(joao, mario).
progenitor(ana, helena).
progenitor(ana, joana).

progenitor(mario, carlos).
progenitor(helena, carlos).


% b) Utilizando o predicado progenitor( X , Y ) ( X é progenitor de Y ), represente em Prolog todos os progenitores da família Pinheiro.
sexo(feminino, ana).
sexo(feminino, maria).
sexo(feminino, helena).
sexo(feminino, joana).

sexo(masculino, jose).
sexo(masculino, joao).
sexo(masculino, mario).
sexo(masculino, carlos).

irmandade(X, Y) :- progenitor(P, Y) , progenitor(P, X).
irma(X, Y) :- irmandade(X, Y) , sexo(feminino, X), X \= Y.
irmao(X, Y) :- irmandade(X, Y) , sexo(masculino, X), X \= Y.

descendente(X, Y) :- progenitor(Y, X).
descendente(X, Y) :- progenitor(H, X), descendente(H, Y).

mae(X, Y) :- progenitor(X, Y), sexo(feminino, X).
pai(X, Y) :- progenitor(X, Y), sexo(masculino, X).

avof(X, Y) :- (mae(X, Z), mae(Z, Y)) ; (mae(X, Z), pai(Z, Y)).
avom(X, Y) :- (pai(X, Z), mae(Z, Y)) ; (pai(X, Z), pai(Z, Y)).

tio(X, Y) :- progenitor(Z, Y), irmao(X, Z).
tia(X, Y) :- progenitor(Z, Y), irma(X, Z).

primo(X, Y) :- (progenitor(Z, X), tio(Z, Y)) ; (progenitor(Z, X), tia(Z, Y)), sexo(masculino, X).
prima(X, Y) :- (progenitor(Z, X), tio(Z, Y)) ; (progenitor(Z, X), tia(Z, Y)), sexo(feminino, X).
