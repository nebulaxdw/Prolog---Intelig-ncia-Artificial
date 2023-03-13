% Arvore Genealogica %
% 1° geração %
gerou(maria,jose).
gerou(joao,jose).
gerou(joao,ana).
% 2° geração %
gerou(jose,julia).
gerou(jose,iris).
gerou(rayana,iris).
gerou(ana,eric).
% 3° geração %
gerou(iris,pamela).
gerou(pedro,pamela).

%4° geração %
gerou(jorge,antonio).
gerou(pamela,antonio).
masculino(jose).
masculino(jorge).
masculino(joao).
masculino(antonio).
masculino(pedro).

feminino(maria).
feminino(iris).
feminino(julia).
feminino(pamela).
feminino(rayana).
feminino(ana).

pai(X,Y) :- gerou(X,Y), masculino(X).
mae(X,Y) :- gerou(X,Y), feminino(X).
filha(X,Y) :- gerou(Y,X), feminino(X).
grandmother(X,Y) :- gerou(X,Z), gerou(Z,Y), feminino(X).
avo(X,Y) :- gerou(X,Z), gerou(Z,Y), masculino(X).

neto(Z,X) :- gerou(X,Y),gerou(Y,Z), masculino(Z).
neta(Z,X) :- gerou(X,Y), gerou(Y,Z), feminino(Z).
bisavo(X,D) :- gerou(X,Y),gerou(Y,Z),gerou(Z,D), masculino(X).
great_grandmother(X,D) :- gerou(X,Y), gerou(Y,Z), gerou(Z,D), feminino(X).
genro(X,Y) :- gerou(X,D), gerou(Y,Z), gerou(Z,D), masculino(X).
nora(X,Y) :- gerou(X,D), gerou(Y,Z), gerou(Z,D), feminino(X).
sogro(X,Y) :- gerou(Y,D), gerou(X,Z), gerou(Z,D), masculino(X).
sogra(X,Y) :- gerou(Y,D), gerou(X,Z), gerou(Z,D), feminino(X).
tia(X,Y) :- gerou(E,X), gerou(E,A), gerou(A,Y), feminino(X).
tio(X,Y) :- gerou(E,X), gerou(E,A), gerou(A,Y), masculino(X).
cunhada(X,A) :-gerou(E,A), gerou(E,Y), gerou(Y,I),gerou(X,I), feminino(X).
cunhado(X,Y) :-gerou(Y,I), gerou(X,J), gerou(I,J),masculino(X).



