

/*
Um programa l?gico ? constitu?do de senten?as que
expressam o conhecimento relevante ao problema
que o programa pretende resolver

Paradigma baseado na l?gica de predicados (l?gica
matem?tica dedutiva)
Exemplo:
Tot? ? um cachorro.
Todo cachorro ? um mam?fero.
Logo, Tot? ? um mam?fero.

*/


elefante(dumbo).

cachorro(azulao).

mamifero(X) :- cachorro(X); elefante(X).
/*
RESULTADO

?- consult(exemploLogicaDedutiva).
true.

?- mamifero(X).
X = azulao ;
X = dumbo.

*/


/*Estas cl?usulas (sem condi??es) definem fatos sobre o
dom?nio do problema*/

pai(pedro, maria).

pai(joao, luiz).

mae(maria, luiz).
avo_materno(pedro, luiz) :- pai(pedro,maria), mae(maria, luiz).

/*
RESULTADO

?- consult(exemploLogicaDedutiva).
true.

?- avo_materno(pedro, luiz).
true.

?- avo_materno(pedro, X).
X = luiz.

?- pai(X, Y).
X = pedro,
Y = maria.

?- consult(exemploLogicaDedutiva).
true.

?- mae(maria, Filho), pai(joao, Filho).

Filho = luiz.

*/


