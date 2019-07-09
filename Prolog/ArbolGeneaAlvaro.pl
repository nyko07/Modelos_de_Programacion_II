padrede('Bernardo','Leidy').
padrede('Laura','Leidy').
padrede('Karen','Marcos').
padrede('Mauricio','Marcos').
padrede('Leidy','Jorge').
padrede('Marcos','Jorge').
padrede('Leidy','Lucas').
padrede('Marcos','Lucas').
padrede('Leidy','Matias').
padrede('Marcos','Matias').
padrede('Leidy','Tatiana').
padrede('Marcos','Tatiana').
padrede('Lucas','Cristina').
padrede('Matias','Owen').
padrede('Tatiana','Stiven').
padrede('Tatiana','Melisa').


padrede('Jorge','Pedro').
padrede('Jorge','Edwin').
padrede('Mariela','Pedro').
padrede('Mariela','Edwin').
padrede('Cecilia','Angela').
padrede('Cecilia','Martika').
padrede('AlvaroRincon','Angela').
padrede('AlvaroRincon','Martika').
padrede('Martika','Jhon').
padrede('Martika','Diana').
padrede('Angela','Alvaro').
padrede('Pedro','Alvaro').


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

