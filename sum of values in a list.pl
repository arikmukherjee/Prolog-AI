sumlist([],0).
sumlist([H|T],Sum):-
    sumlist(T,SumT),
    Sum is H+SumT.