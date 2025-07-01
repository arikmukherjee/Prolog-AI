list_length([], 0). 
list_length([_|T], N) :- 
list_length(T, N1), 
N is N1 + 1. 
even_or_odd(List, even) :- list_length(List, N), 0 is N mod 2. 
even_or_odd(List, odd) :- list_length(List, N), 1 is N mod 2.