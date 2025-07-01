sumdigits(Number,Sum):-
    Number>=100,
    Number=<999,
    H is Number//100,
    T is (Number//10) mod 10,
    U is Number mod 10,
    Sum is H+T+U.