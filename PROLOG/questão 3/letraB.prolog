%sexo

    %linhagem 0
        sexo(feminino, maria).
        sexo(masculino, jose).

        %linhagem 1
            sexo(feminino, ana).
            sexo(masculino, joao).

            %linhagem 2 parte 1(ana)
                sexo(feminino, helena).
                sexo(feminino, joana).
             %pai(s) desconhecidos por nós
                sexo(masculino, desconhecido1).
                sexo(masculino, desconhecido2).

            %linhagem 2 parte 2 (joao)
                 sexo(masculino, mario).
             %mãe desconhecida por nós
                 sexo(feminino, desconhecida1).

                %linhagem 3
                    sexo(masculino, carlos).

%irmandade
 %para todos
    irmandade(I, E) :- (progenitor(P, I), progenitor(P, E)); (progenitora(M, I), progenitora(M, E)), I \= E.
    irma(X, Y) :- (progenitor(P, X), progenitor(P, Y)); (progenitora(M, X), progenitora(M, Y), sexo(feminino, X)), X \= Y.
    irmão(Y, X) :- (progenitor(P, Y ), progenitor(P, X)); (progenitora(M, Y), progenitora(M, X), sexo(masculino, Y)), Y \= X.

%descendente
  descendente(Z, Y) :- progenitor(Y, Z).
descendente(Z, X) :- progenitora(X, Z).
    %Recursivamente, uma pessoa Z é descendente de O se for filha de H, e H for descendente de O
      descendente(Z, O) :- (progenitor(H, Z); progenitora(H, Z)), descendente(H, O).

%mãe
  %X é mãe de Z se X for progenitora de Z e X for do sexo feminino
   mae(X, Z) :- progenitora(X, Z), sexo(feminino, X).

%pai
  %Y é pai de Z se Y for progenitor de Z e Y for do sexo masculino
   mae(Y, Z) :- progenitor(Y, Z), sexo(masculino, Y).

%avó 
 %XX é avó de Z se XX for progenitora de MP e MP for progenitor(a) de Z e XX for do sexo feminino
  avof(XX, Z) :- progenitora(XX, MP), (progenitor(MP, Z); progenitora(MP, Z)), sexo(feminino, XX).

%avô
  %XY é avÔ de Z se XY for progenitor de MP e MP for progenitor(a) de Z e XY for do sexo masculino
   avof(XY, Z) :- progenitora(XY, MP), (progenitor(MP, Z); progenitora(MP, Z)), sexo(masculino, XY).

%tia 
  %TF é tia de Z se TF for irmã do pai ou da mãe de Z e TF for do sexo feminino
   tia(TF, Z) :- 
         (progenitor(P, Z); progenitora(M, Z)), 
         (irma(TF, P); irma(TF, M)),                          
        sexo(feminino, TF).                     

%tio 
  %TM é tia de Z se TM for irmão do pai ou da mãe de Z e TM for do sexo masculino
   tia(TM, Z) :- 
         (progenitor(P, Z); progenitora(M, Z)), 
         (irmao(TM, P); irma(TM, M)),                          
        sexo(masculino, TM).                     


%AQUI COMPLICOU
%primo 
  %PR é primo de Z se o progenitor(a) de PR for irmão ou irmã do progenitor(a) de Z
   %primo(PR, Z) :- 
    %(progenitor(PP, PR); progenitora(MP, PR)),  
    %(progenitor(P, Z); progenitora(M, Z)),  
    %irmandade(P1, P2),                        
    %PR \= Z.                                  

%TENTAR DNV
% PRM é primo de Z se o ancestral comum deles for um irmão de outro ancestral
primo(PRM, Z) :- 
    antepassado(C, PRM),  
    antepassado(E, Z),  
    irmandade(C, E), 
    sexo(masculino, PRM),  
    PRM \= Z.       

        % Definição de antepassado sangue
            antepassado(A, D) :- progenitor(A, D); progenitora(A, D).
            antepassado(A, D) :- progenitor(A, H), antepassado(H, D).
            antepassado(A, D) :- progenitora(A, H), antepassado(H, D).

%prima 
% PRF é prima de Z se o ancestral comum deles for um irmão de outro ancestral
prima(PRF, Z) :- 
    antepassado(C, PRF),  
    antepassado(E, Z),  
    irmandade(C, E), 
    sexo(feminino, PRF),  
    PRF \= Z.             

        % Definição de antepassado sangue
            antepassado(A, D) :- progenitor(A, D); progenitora(A, D).
            antepassado(A, D) :- progenitor(A, H), antepassado(H, D).
            antepassado(A, D) :- progenitora(A, H), antepassado(H, D).


 