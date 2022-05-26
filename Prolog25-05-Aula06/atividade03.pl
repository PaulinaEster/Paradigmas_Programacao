aluno(joao,calculo).
aluno(maria,calculo).
aluno(joel, programacao).
aluno(joel, estrutura).

frequenta(joao, ufsm).
frequenta(maria,ufsm).
frequenta(joel, uri).

professor(carlos, calculo).
professor(ana_paula,estrutura).
professor(pedro, programacao).

funcionario(pedro, ufsm).
funcionario(ana_paula, ufsm).
funcionario(carlos, uri).

alunos_professor(NomeProfessor, NomeAluno) :- professor(NomeProfessor, Disciplina),
                                                  aluno(NomeAluno, Disciplina).

pessoas_univerisdades(Pessoa, Universidade) :- frequenta(Pessoa, Universidade) ;
                                                    funcionario(Pessoa, Universidade).


/*
?- alunos_professor(pedro, Aluno).
Aluno = joel.

?- alunos_professor(Professor, Aluno).
Professor = carlos,
Aluno = joao ;
Professor = carlos,
Aluno = maria ;
Professor = ana_paula,
Aluno = joel ;
Professor = pedro,
Aluno = joel.

?- pessoas_univerisdades(Pessoa, Univerisdade).
Pessoa = joao,
Univerisdade = ufsm ;
Pessoa = maria,
Univerisdade = ufsm ;
Pessoa = joel,
Univerisdade = uri ;
Pessoa = pedro,
Univerisdade = ufsm ;
Pessoa = ana_paula,
Univerisdade = ufsm ;
Pessoa = carlos,
Univerisdade = uri.
*/
