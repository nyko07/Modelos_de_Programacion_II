padrede('Luisa','Jerson').
padrede('Luisa','Juana').
padrede('Anacelia','Jerson').
padrede('Anacelia','Juana').
padrede('Marcela','Jerson').
padrede('Marcela','Juana').

padrede('Sofia','Luis').
padrede('Margarita','Luis').
padrede('Carlos','Luis').
padrede('Victor','Luis').
padrede('Sofia','Anacelia').
padrede('Margarita','Anacelia').
padrede('Carlos','Anacelia').
padrede('Victor','Anacelia').

padrede('Sebastian','Marlen').
padrede('Daniela','Marlen').
padrede('Camilo','Marlen').
padrede('Alejandra','Marlen').
padrede('Sebastian','Victor').
padrede('Daniela','Victor').
padrede('Camilo','Victor').
padrede('Alejandra','Victor').

padrede('Kathe','Alejandra').
padrede('Valentina','Alejandra').
padrede('Kathe','Hector').
padrede('Valentina','Hector').

hijode(A,B) :- padrede(B,A).
abuelode(A,B) :- padrede(A,C), padrede(C,B).
bisabuelode(A,B) :- abuelode(A,C), padrede(C,B).
hermanode(A,B) :- padrede(C,A), padrede(C,B), A \== B.
familiarde(A,B) :-padrede(A,B).
familiarde(A,B) :- abuelode(A,B).
familiarde(A,B) :- hermanode(A,B).
casadocon(A,B) :- padrede(A,C), padrede(B,C).
feliz(A) :- casadocon(A,B).
sobrinode(A,B) :- hermanode(B,C), padrede(C,A).
tiode(A,B) :- sobrinode(B,A).
primode(A,B) :- hijode(B,C), hijode(A,D), hermanode(C,D).