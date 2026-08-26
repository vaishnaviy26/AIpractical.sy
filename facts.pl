%Facts
likes(vaishnavi,pranali).
likes(pranali,vaishnavi).
likes(pranjali,shreya).

%Rules
friendship(X,Y):-
    likes(X,Y),
    likes(Y,X).


