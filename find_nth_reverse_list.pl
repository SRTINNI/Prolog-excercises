nth_member(1,[X|L],X).
nth_member(N,[Y|L],X):-
	N1 is N-1,
	nth_member(N1,L,X).
reverse_list(Inputlist,Outputlist):-
  reverse(Inputlist,[],Outputlist).
reverse([],Inputlist,Inputlist).
reverse([Head|Tail],List1,List2):-
  reverse(Tail,[Head|List1],List2).