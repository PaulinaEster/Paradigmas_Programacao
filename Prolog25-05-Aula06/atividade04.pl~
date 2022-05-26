nota(joao, 5.0).
nota(maria, 6.0).
nota(joana, 8.0).
nota(mariana, 9.0).
nota(cleuza, 8.5).
nota(jose, 6.5).
nota(joaquim, 4.5).
nota(mara, 4.0).
nota(mary, 10.0).


aprovado(Aluno) :- nota(Aluno, Nota), Nota >= 7.0 , Nota =< 10.0.
recuperacao(Aluno) :- nota(Aluno, Nota), Nota >= 5.0 , Nota =< 6.9.
reprovado(Aluno) :- nota(Aluno, Nota), Nota >= 0.0, Nota =< 4.9.


/*
?- aprovado(Aluno).
Aluno = joana ;
Aluno = mariana ;
Aluno = cleuza ;
Aluno = mary.

?- reprovado(Aluno).
Aluno = joaquim ;
Aluno = mara ;
false.

?- recuperacao(Aluno).
Aluno = joao ;
Aluno = maria ;
Aluno = jose ;
false.



*/
