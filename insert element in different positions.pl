% Insert at beginning 
insert_first(X, List, [X|List]). 
% Insert at end 
insert_last(X, [], [X]). 
insert_last(X, [H|T], [H|R]) :- 
insert_last(X, T, R). 
% Insert at any position (Nth) 
insert_at(X, 1, L, [X|L]). 
insert_at(X, N, [H|T], [H|R]) :- 
N > 1, 
N1 is N - 1, 
insert_at(X, N1, T, R).