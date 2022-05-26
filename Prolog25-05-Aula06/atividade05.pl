/*
 mora(pessoa, bairro).

pertence(bairro, regiao).

amigo(pessoa, pessoa).

tem_carro(pessoa).

*/



mora(ana, centro).
mora(anabele, centro).
mora(ana_catarina, barril).
mora(ana_luiza, barril).
mora(beatriz, itapiranga).
mora(bianca, sao_luiz).
mora(bruna, centro).
mora(barbara, itapiranga).
mora(camila, sao_luiz).
mora(cheila, centro).
mora(celia, itapiranga).
mora(dalila, sao_luiz).

pertence(sao_luiz, norte).
pertence(centro, sul).
pertence(itapiranga, norte).
pertence(barril, sul).

amigo(ana, dalila).
amigo(camila, anabele).
amigo(bruna, bianca).
amigo(celia, barbara).
amigo(barbara, bianca).


tem_carro(ana).
tem_carro(ana_catarina).
tem_carro(beatriz).
tem_carro(bruna).
tem_carro(camila).
tem_carro(celia).

pode_dar_carona(Pessoa1, Pessoa2) :- tem_carro(Pessoa1), mora(Pessoa1, Bairro1) , mora(Pessoa2, Bairro2) , pertence(Bairro1, Regiao) , pertence(Bairro2, Regiao).
/*
?- pode_dar_carona(ana, Pessoa).
Pessoa = ana ;
Pessoa = anabele ;
Pessoa = ana_catarina ;
Pessoa = ana_luiza ;
Pessoa = bruna ;
Pessoa = cheila ;
false.

?- pode_dar_carona(celia, Pessoa).
Pessoa = beatriz ;
Pessoa = bianca ;
Pessoa = barbara ;
Pessoa = camila ;
Pessoa = celia ;
Pessoa = dalila.


*/
