append_list([], L, L). 
append_list([H|T], L2, [H|R]) :- 
append_list(T, L2, R).