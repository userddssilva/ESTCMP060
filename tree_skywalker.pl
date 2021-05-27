pai(vader, luke).
pai(vader, leia).
pai(han_solo, jaina).
pai(han_solo, jasen).
pai(han_solo, anakin_solo).
pai(luke, ben).

mae(leia, jaina).
mae(leia, jasen).
mae(leia, anakin_solo).
mae(mara, ben).

irmaos(X, Y) :- 
    pai(Z,X), pai(Z,Y), X\=Y;
    mae(Z,X), mae(Z,Y), X\=Y.

tioa(X, Y) :- 
     irmaos(Z, X), pai(Z, Y);
     irmaos(Z, X), mae(Z, Y).

avoa(X, Z) :-
    pai(X, Y), pai(Y, Z);
    mae(X, Y), mae(Y, Z).
   
