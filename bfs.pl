% Facts: Routes between cities
route(vita, sangli).
route(sangli, pune).
route(vita, karad).
route(karad, pune).
route(pune, mumbai).

% Rule: Find connected cities
connected(X, Y) :- route(X, Y).
connected(X, Y) :- route(Y, X).

% BFS algorithm
bfs(Start, Goal, Path) :-
    search([[Start]], Goal, RevPath),
    reverse(RevPath, Path).

search([[Goal|Rest]|_], Goal, [Goal|Rest]).

search([[Current|Rest]|Queue], Goal, Path) :-
    findall([Next,Current|Rest],
        (connected(Current,Next),
         \+ member(Next,[Current|Rest])),
        NewPaths),
    append(Queue, NewPaths, NewQueue),
    search(NewQueue, Goal, Path).
