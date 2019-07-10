%Padres
padreDe('Javier','Sebastian').
padreDe('Amparo','Sebastian').



%Abuelos Maternos

padreDe('Helena','Amparo').
padreDe('Luis','Amparo').
padreDe('Helena','Teresa').
padreDe('Luis','Teresa').
padreDe('Helena','Janeth').
padreDe('Luis','Janeth').
padreDe('Helena','Lizeth').
padreDe('Luis','Lizeth').
padreDe('Helena','Andrea').
padreDe('Luis','Andrea').

%Abuelo Paternos

padreDe('Jose','Javier').
padreDe('Betty','Javier').
padreDe('Jose','Yuvely').
padreDe('Betty','Yuvely').

%Bisabuelos Maternos
padreDe('Patrocinio','Helena').
padreDe('Limbania','Helena').
padreDe('Patrocinio','Cecilia').
padreDe('Limbania','Cecilia').
padreDe('Patrocinio','Elisa').
padreDe('Limbania','Elisa').
padreDe('Patrocinio','Oliverio').
padreDe('Limbania','Oliverio').
padreDe('Patrocinio','Edelmira').
padreDe('Limbania','Edelmira').
padreDe('Patrocinio','Carmen').
padreDe('Limbania','Carmen').
padreDe('Patrocinio','Jaime').
padreDe('Limbania','Jaime').


padreDe('Fidel','Luis').
padreDe('Salud','Luis').
padreDe('Fidel','Samuel').
padreDe('Salud','Samuel').
padreDe('Fidel','Antonio').
padreDe('Salud','Antonio').
padreDe('Fidel','Anita').
padreDe('Salud','Anita').

%Bisabuelos Paternos
padreDe('Tita','Betty').
padreDe('Pedro','Betty').
padreDe('Tita','Yolanda').
padreDe('Pedro','Yolanda').
padreDe('Tita','Marina').
padreDe('Pedro','Marina').

padreDe('Alberto','Jose').
padreDe('Maria','Jose').
padreDe('Alberto','Oscar').
padreDe('Maria','Oscar').
padreDe('Alberto','Esperanza').
padreDe('Maria','Esperanza').



%Tios y primos

padreDe('Yuvely','Laura').
padreDe('Jesus','Laura').
padreDe('Yuvely','Salome').
padreDe('Jesus','Salome').
padreDe('Yuvely','Sara').
padreDe('Jesus','Sara').


%Reglas

hermanoDe(A,B) :-padreDe(C,A), padreDe(C,B), A \== B.

tioDe(A,B) :- hermanoDe(A,C), hijoDe(B,C).
primo(A,B) :- tioDe(C,A), hijoDe(B,C).
hijoDe(A,B) :- padreDe(B,A).
abueloDe(A,B) :-padreDe(A,C), padreDe(C,B).

casado(A,B) :- hijoDe(C,A), hijoDe(C,B), A \== B.
nietoDe(A,B) :- padreDe(B,C), padreDe(C,A).

feliz(A) :- (casado(A,B)), A \== B.
