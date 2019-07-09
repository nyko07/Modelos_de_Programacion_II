padrede('Hernando','Alba').
padrede('Pancracia','Alba').
padrede('Karen','Marcos').
padrede('Mauricio','Marcos').
padrede('Alba','Jesus').
padrede('Marcos','Jesus').
padrede('Alba','Lucas').
padrede('Marcos','Lucas').
padrede('Alba','Matias').
padrede('Marcos','Matias').
padrede('Alba','Claudia').
padrede('Marcos','Claudia').
padrede('Lucas','Cristina').
padrede('Matias','Owen').
padrede('Claudia','Stiven').
padrede('Claudia','Melisa').


padrede('Jesus','Nicolast').
padrede('Bertilda','Nicolast').
padrede('Jesus','Orlando').
padrede('Bertilda','Orlando').
padrede('Jesus','Arturo').
padrede('Bertilda','Arturo').
padrede('Jesus','Merardo').
padrede('Bertilda','Merardo').
padrede('Jesus','Herminia').
padrede('Bertilda','Herminia').
padrede('Orlando','Juan').
padrede('Orlando','Maria').
padrede('Patricia','Juan').
padrede('Patricia','Maria').
padrede('Arturo','Ximena').
padrede('Arturo','Sandra').
padrede('Merardo','Cristian').
padrede('Merardo','Andres').
padrede('Herminia','Francy').
padrede('Herminia','Alejandro').
padrede('Nicolast','Nicolas').
padrede('Nicolast','Marcela').
padrede('Rosalba','Nicolas').
padrede('Rosalba','Marcela').


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

