cachorro(docky).
gato(garfield).
peixe(nemo).

passaro(dudu).

pessoa(maria).
pessoa(joao).

magro(docky).
gordo(garfild).


gato_gosta(X) :- peixe(X); passaro(X) ; pessoa(X).
gato_come(X) :- gato_gosta(X), not(pessoa(X)).

cachorro_gosta(X) :-  pessoa(X).

/*
?- cachorro(X);
|    gato(X).
X = docky .

?- gato(X).
X = garfield.

?-
|    cachorro(X).
X = docky.

?- gato(X).
X = garfield.

?- pessoa(X).
X = maria ;
X = joao.

?- peixe(X).
X = nemo.

?- passaro(X).
X = dudu.

?- cachorro(X);
|    gato(X);
|    peixe(X);
|    passaro(X);
|    pessoa(X).
X = docky ;
X = garfield ;
X = nemo ;
X = dudu ;
X = maria ;
X = joao.

?- magro(X).
X = docky.

?- gordo(X).
X = garfild.

?- gato_gosta(X).
X = nemo .

?- gato_gosta(X).
X = nemo ;
X = dudu ;
X = maria ;
X = joao.

?- cachorro_gosta(X).
X = maria .

?- cachorro_gosta(X).
X = maria ;
X = joao.

?- gato_come(X).
X = nemo ;
X = dudu ;

*/
