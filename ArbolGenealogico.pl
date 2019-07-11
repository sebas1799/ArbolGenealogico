%Padres
padrede('javier','sebastian').
padrede('amparo','sebastian').

%Abuelos Maternos

padrede('helena','amparo').
padrede('luis','amparo').
padrede('helena','teresa').
padrede('luis','teresa').
padrede('helena','janeth').
padrede('luis','janeth').
padrede('helena','lizeth').
padrede('luis','lizeth').
padrede('helena','andrea').
padrede('luis','andrea').

%Abuelo Paternos

padrede('jose','javier').
padrede('betty','javier').
padrede('jose','yuvely').
padrede('betty','yuvely').

%Bisabuelos Maternos
padrede('patrocinio','helena').
padrede('limbania','helena').
padrede('patrocinio','cecilia').
padrede('limbania','cecilia').
padrede('patrocinio','elisa').
padrede('limbania','elisa').
padrede('patrocinio','oliverio').
padrede('limbania','oliverio').
padrede('patrocinio','edelmira').
padrede('limbania','edelmira').
padrede('patrocinio','carmen').
padrede('limbania','carmen').
padrede('patrocinio','jaime').
padrede('limbania','jaime').

padrede('fidel','luis').
padrede('salud','luis').
padrede('fidel','samuel').
padrede('salud','samuel').
padrede('fidel','antonio').
padrede('salud','antonio').
padrede('fidel','anita').
padrede('salud','anita').

%Bisabuelos Paternos
padrede('tita','betty').
padrede('pedro','betty').
padrede('tita','yolanda').
padrede('pedro','yolanda').
padrede('tita','marina').
padrede('pedro','marina').

padrede('alberto','jose').
padrede('maria','jose').
padrede('alberto','oscar').
padrede('maria','oscar').
padrede('alberto','esperanza').
padrede('maria','esperanza').


%Tios y primos

padrede('yuvely','laura').
padrede('jesus','laura').
padrede('yuvely','salome').
padrede('jesus','salome').
padrede('yuvely','sara').
padrede('jesus','sara').


%Reglas
hijode(A,B) :- padrede(B,A).
abuelode(A,B) :- padrede(A,C), padrede(C,B).
hermanode(A,B) :- padrede(C,A), padrede(C,B), A \== B.
tiode(A,B) :- hermanode(A,C), hijode(B,C).
primo(A,B) :- tiode(C,A), hijode(B,C).

casado(A,B) :- hijode(C,A), hijode(C,B), A \== B.
nietode(A,B) :- padrede(B,C), padrede(C,A).

feliz(A) :- (casado(A,B)), A \== B.
