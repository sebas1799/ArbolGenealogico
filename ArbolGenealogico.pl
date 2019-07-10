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

padreDe('Rubiela','Wilson').
padreDe('Benedicto','Wilson').

padreDe('Raul','Rubiela').
padreDe('Marisol','Rubiela').

padreDe('','').
padreDe('','').


%Bisabuelos Maternos
padreDe('','').
padreDe('','').

padreDe('','').
padreDe('','').

%Bisabuelos Paternos
padreDe('','').
padreDe('','').

padreDe('','').
padreDe('','').


%Tios e hijos

padreDe('Nilian','Maria').
padreDe('Nilian','Yesenia').
padreDe('Nilian','Nailin').
padreDe('Yesid','Maria').
padreDe('Yesid','Yesenia').
padreDe('Yesid','Nailin').


%Reglas

hermanoDe(A,B) :-padreDe(C,A), padreDe(C,B), A \== B.

tioDe(A,B) :- hermanoDe(A,C), hijoDe(B,C).
primo(A,B) :- tioDe(C,A), hijoDe(B,C).
hijoDe(A,B) :- padreDe(B,A).
abueloDe(A,B) :-padreDe(A,C), padreDe(C,B).

casado(A,B) :- hijoDe(C,A), hijoDe(C,B), A \== B.
nietoDe(A,B) :- padreDe(B,C), padreDe(C,A).

feliz(A) :- (casado(A,B)), A \== B.
