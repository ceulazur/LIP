%primeira linhagem 
    %progenitores joao
        progenitor(jose, joao).
        progenitora(maria, joao).
    %progenitores ana
        progenitor(jose, ana).
        progenitora(maria, ana).

%segunda linhagem parte 1 (ana)
    %progenitores helena
        progenitora(ana, helena).
        progenitor(desconhecido1, helena).
    %progenitores joana
        progenitora(ana, joana).
        progenitor(desconhecido2, joana).

%segunda linhagem parte 2 (joao)
    %progenitores mario
        progenitor(joao, mario).
        progenitora(desconhecida1, mario).

%terceira linhagem
    %progenitores carlos
        progenitor(mario, carlos).
        progenitora(helena, carlos).

