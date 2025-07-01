reverselist([],[]).
reverselist([H|T],R):-
    reverselist(T,RT),
    append(RT,[H],R).