maxlist([X],X).
maxlist([H|T],Max):-
    maxlist(T,MaxT),
    (H>MaxT -> Max = H;
    Max = MaxT).