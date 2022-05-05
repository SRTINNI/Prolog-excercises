nth_member(1,[X|L],X).
nth_member(N,[Y|L],X):-
	N1 is N-1,
	nth_member(N1,L,X).