% Fatos:
% Progenitores
progenitor(urano, cronos). progenitor(gaia, cronos). progenitor(urano, oceano). progenitor(gaia, oceano). progenitor(cronos, zeus). progenitor(reia, zeus). progenitor(cronos, poseidon). progenitor(reia, poseidon). progenitor(zeus, atena). progenitor(zeus, apolo). progenitor(hera, apolo). progenitor(zeus, artemis). progenitor(letó, artemis). progenitor(zeus, ares). progenitor(hera, ares). progenitor(zeus, hefesto). progenitor(hera, hefesto). progenitor(poseidon, tritao). progenitor(zeus, perseu). progenitor(dânae, perseu). progenitor(atena, erictônio). progenitor(cronos, hades). progenitor(reia, hades).

% Poderes e domínios
dominio(zeus, ceu). dominio(zeus, trovão). dominio(poseidon, mar). dominio(poseidon, terremoto). dominio(hades, submundo). dominio(atena, sabedoria). dominio(atena, guerra_estrategica). dominio(ares, guerra_brutal). dominio(apolo, sol). dominio(apolo, musica). dominio(artemis, caça). dominio(artemis, lua). dominio(hefesto, fogo). dominio(hefesto, forja). dominio(afrodite, beleza). dominio(afrodite, amor). dominio(cronos, tempo).

% Armas e Artefatos
arma(zeus, raio). arma(poseidon, tridente). arma(hades, elmo_escuridao). arma(atena, escudo_aegis). arma(perseu, espada_adamantina).

% Características e Títulos
caracteristica(zeus, rei). caracteristica(hera, rainha). caracteristica(hades, invisivel). caracteristica(hefesto, ferreiro). caracteristica(artemis, virgem). caracteristica(perseu, mortal).

% Relações de Aliança
aliado(zeus, poseidon). aliado(poseidon, zeus). aliado(atena, apolo). aliado(apolo, atena). aliado(ares, hades). aliado(hades, ares). aliado(hefesto, atena). aliado(atena, hefesto).

% Localização ou Assinatura
local_principal(zeus, olimpo). local_principal(poseidon, atlântida). local_principal(hades, submundo). local_principal(apolo, olimpo). local_principal(artemis, florestas).

% Regras e Exercicios:

% Exercicio 1:
divindade_olimpica(X) :-
    progenitor(cronos, X),
    (dominio(X, ceu);
    dominio(X, submundo);
    dominio(X, mar)).

% Exercício 2:
deus_maior(X) :-
    dominio(X, Y),
	dominio(X, Z),
    local_principal(X, olimpo),
    Y \= Z.

% Exercicio 3:
irmaos_germanos(X, Y) :-
    progenitor(P, X),
	progenitor(P, Y),
    X \= Y.

% Exercicio 4:
ancestral(A, D) :- progenitor(A, D).

ancestral(A, D) :-
    progenitor(A, Z),
    ancestral(Z, D).
    
% Querries:
% divindade_olimpica(X)
% deus_maior(X)
% irmaos_germanos(X, Y) 
% ancestral(X, Y)
