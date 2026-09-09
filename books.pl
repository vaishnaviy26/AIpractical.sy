%facts
%user define
user(vaishnavi,novel).
user(pranali,science).
user(pranjali,mystery).
user(sakshi,drama).
user(rohini,poetry).
user(aditi,adventure).
user(shrutika,travel).
user(sanvi,comedy).
user(megha,fairytale).
user(shrushti,business).

%Book database
book(the_alchemist,novel).
book(a_brief_history_of_time,science).
book(sherlok_holmes,mystery).
book(romeo_and_juliet,drama).
book(leaves_of_grass,poetry).
book(trasure_island,adventure).
book(into_the_wild,travel).
book(three_men_in_a_boat,comedy).
book(cinderella,fairytale).
book(the_lean_startup).


%rules
recommended(User,Book):-
    user(Book,Gen),
    book(User,Gen).




