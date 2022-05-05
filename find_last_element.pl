last_element([Head],X):-
	X=Head.
last_element([_|Tail],X):-
	last_element(Tail,X).
