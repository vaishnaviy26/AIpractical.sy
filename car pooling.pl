%facts
%driver database
driver(amit,vita,sangli).
driver(vaishnavi,karad,pune).

%passanger database
passenger(shubham,vita,sangli).
passenger(pranjali,karad,pune).

%rules
car_pooling(Passenger,Driver):-
    driver(Driver,From,To);
    passenger(Passenger,From,To).



