% associação entre nome e disciplinas

atua_curso(joao, sistemas).
atua_curso(joao, licenciatura).
atua_curso(paula, sistemas).

ministra(joao, paradigmas).
ministra(joao, gerencia).
ministra(joao, algoritmos).
ministra(paula, programacao).

discente(paulina, algoritmos).
discente(gabriela, erencia).
discente(gabriela, programacao).
discente(tainara, programacao).

% variaveis sao sempre iniciados com letra maiusculas, e os outros dados
% sao minusculos

% descobre quais disciplinas o professor joao tem com um aluno qualquer
% X
% CONSULTA EXPECIFICA DO PROFESSOR JOAO E DE UM ALUNO QUALQUER Y
% professor_discente(joao, X) :- ministra(joao, Y),
%    discente(X, Y).

% alunoaluno
%discente_professor(X, joao) :-  ministra(joao, Y), discente(X,Y).
% CONSULTAS DE VALORES MOSTRA QUAIS DISCIPLINAS EM COMUM UM PROFESSOR
% TEM COM UM DISCENTE
professor_discente(Professor, Aluno) :- ministra(Professor, Disciplina),discente(Aluno, Disciplina).

/*
RESULTADO:


?- consult(paulinaAula05).
true.

?- professor_discente(Professor, Discente).
Professor = joao,
Discente = paulina ;
Professor = paula,
Discente = gabriela ;
Professor = paula,
Discente = tainara.

*/


/*
EXEMOPLO COM NUMEROS:
*/
carga_horaria(paradigmas, 60).
carga_horaria(programacao, 80).
carga_horaria(algoritmos, 75).



