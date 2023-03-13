% FATOS %
% bebe(X,Y) : a pessoa X bebe a bebida Y %
% bebe(ze,pinga). %
% bebe(mane,agua). %
% vivo(mane). %
% REGRAS %
% Bebida Saudavel: aquela que a pessoa bebe e continua viva %
saudavel(X):-bebe(X,Y), vivo(Y).


% homem(X): a pessoa X � homem %
homem(socrates).
homem(garrincha).
%todo homem � mortal %
mortal(X) :- homem(X).
mortal(socrates).

% nasceu(X,Y): a pessoa X nasceu em Y %
% JOSEVALDO NASCEU EM MARILIA %
nasceu(josevaldo,marilia).
% KARINA NASCEU EM MILAO %
nasceu(karina,milao).

% fica(X,Y): a cidade X fica em Y %
% MARILIA FICA EM S�O PAULO %
fica(marilia,sp).
% MIL�O FICA NA IT�LIA %
fica(milao,italia).

%Paulista: aquele quem nasce em S�o paulo %
paulista(X) :-nasceu(X,Y),fica(Y,sp).



