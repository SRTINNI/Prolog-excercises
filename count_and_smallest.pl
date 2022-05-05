list_length([],0).
list_length([_|TAIL],N) :- 
	list_length(TAIL,N1),
	 N is N1 + 1.

list_min([L|Ls], Min) :-
    list_min(Ls, L, Min).

list_min([], Min, Min).
list_min([L|Ls], Min0, Min) :-
    Min1 is min(L, Min0),
    list_min(Ls, Min1, Min).