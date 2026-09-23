%facts
marks(vaishnavi,35).
marks(pranali,60).
marks(sakshi,80).
marks(rohini,50).
marks(shreya,65).
marks(siddhi,95).
marks(sanika,82).
marks(neha,44).
marks(aditi,20).
marks(mayuri,75).

%rules
pass(X):-
    marks(X,M),
    M>=40.

fail(X):-
    marks(X,M),
    M<40.

distinction(X):-
    marks(X,M),
    M>=75.


