bonito(ana).
bonito(marcos).
bonito(rodrigo).

rico(marcos).
rico(maria).

forte(rodrigo).
forte(maria).
forte(silvio).

amavel(silvio).

mulher(ana).
mulher(maria).

homem(rodrigo).
homem(marcos).
homem(silvio).

gosta(ana,marcos).
gosta(marcos,maria).
gosta(marcos,ana).
gosta(silvio,ana).
gosta(maria, marcos).

maria_gosta(H) :- homem(H), gosta(H, maria).
ana_gosta(X) :- gosta(X, ana), homem(X), bonito(X), amavel(X); gosta(X, ana), homem(X), rico(X), forte(X).



homem_gosta(X) :- mulher(X), bonito(X).
homem_feliz(X) :- homem(X), rico(X).

homem_feliz(X, Y) :- homem(X), gosta(X, Y), mulher(Y), gosta(Y, X).

mulher_feliz(Mulher, Homem) :-  mulher(Mulher), gosta(Mulher, Homem), homem(Homem), gosta(Homem, Mulher).


/*
᐀?- maria_gosta(X).
false.

?-
% c:/Users/Usuário/Documents/Prolog/Prolog25-05/atividade02.pl compiled 0.00 sec, 0 clauses
?- maria_gosta(X).
X = marcos ;
false.

?- ana_gosta(Homem).
false.

?-
% c:/Users/Usuário/Documents/Prolog/Prolog25-05/atividade02.pl compiled 0.00 sec, 0 clauses
?- ana_gosta(Homem).
false.

?-
% c:/Users/Usuário/Documents/Prolog/Prolog25-05/atividade02.pl compiled 0.00 sec, 0 clauses
?- ana_gosta(Homem).
false.

?-
% c:/Users/Usuário/Documents/Prolog/Prolog25-05/atividade02.pl compiled 0.00 sec, 2 clauses
?- ana_gosta(Homem).
false.
*/
