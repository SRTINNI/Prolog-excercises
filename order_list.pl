list_order([X, Y | Tail]) :- X =< Y, list_order([Y|Tail]).
list_order([X]).

///////////
out
//////////////////
?- list_order([1,2,3,4]).
true ;
false.

?-