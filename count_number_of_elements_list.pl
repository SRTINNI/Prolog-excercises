list_length([],0).
list_length([_|TAIL],N) :- 
	list_length(TAIL,N1),
	 N is N1 + 1.

max_of_two(X,Y,X) :- X >= Y.
max_of_two(X,Y,Y) :- X < Y.
list_max_elem([X],X).
list_max_elem([X,Y|Rest],Max) :-
   list_max_elem([Y|Rest],MaxRest),
   max_of_two(X,MaxRest,Max).