fact(0,1).
fact(M,F):-
    M>0,
    M1 is M-1,
    fact(M1,F1),
    F is M * F1.

calculate(M,N,Fact):-
    fact(M,F),
    Sum is M+N,
    Fact is F/Sum.