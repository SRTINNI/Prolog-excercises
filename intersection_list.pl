list_member(X,[X|_]).
list_member(X,[_|TAIL]) :- list_member(X,TAIL).

list_intersect([X|Y],Z,[X|W]) :-
   list_member(X,Z), list_intersect(Y,Z,W).
list_intersect([X|Y],Z,W) :-
   \+ list_member(X,Z), list_intersect(Y,Z,W).
list_intersect([],Z,[]).


/////////////////////
intersection
/////////////////////
?- list_intersect([a,b,c,d,e],[a,e,i,o,u],L3).
L3 = [a, e] ;
false.

?- 