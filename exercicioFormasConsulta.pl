/*
Operadores relacionais:
> Maior
< Menor
>= Maior ou igual
=< Menor ou igual
=:= Igual
=\= Diferente

*/



idade(pabloVittar, 35).
idade(lula, 78).
idade(anitta, 9).
idade(ranya, 18).
idade(paulina, 28).
idade(fernanda,44).


/*
RESULTADO
?- consult(exercicioFormasConsulta).
true.

?- idade(Pessoa,Idade), Idade =< 30.
Pessoa = anitta,
Idade = 9 ;
Pessoa = ranya,
Idade = 18 ;
Pessoa = paulina,
Idade = 28 ;
false.

?- idade(Pessoa,Idade), Idade >= 30.
Pessoa = pabloVittar,
Idade = 35 ;
Pessoa = lula,
Idade = 78 ;
Pessoa = fernanda,
Idade = 44.

*/


jovem(X) :- idade(X, Y), Y =< 25.

terceira_idade(Nome) :- idade(Nome, Idade), Idade > 60.

adulto(Nome) :- idade(Nome, Idade), Idade =< 60, Idade > 25.

/*
REUSLTADO:

?- consult(exercicioFormasConsulta).
true.

?- jovem(Nome).
Nome = anitta ;
Nome = ranya ;
false.

?- adulto(Nome).
Nome = pabloVittar ;
Nome = paulina ;
Nome = fernanda.

?- terceira_idade(Nome).
Nome = lula ;
false.

?-

*/


tempo_trabalhado(lula, 40).
tempo_trabalhado(fernanda, 20).
tempo_trabalhado(anitta, 0).
tempo_trabalhado(ranya, 3).


pode_aposentar(Nome) :- idade(Nome, Idade), tempo_trabalhado(Nome, Tempo), Idade + Tempo >= 90.

/*

RESULTADO:

?- consult(exercicioFormasConsulta).
true.

?- pode_aposentar(Nome).
Nome = lula ;
false.

*/
