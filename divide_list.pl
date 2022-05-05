list_divide([],[],[]).
list_divide([X],[X],[]).
list_divide([X,Y|Tail], [X|List1],[Y|List2]) :-
   list_divide(Tail,List1,List2).





///////////////////
out
////////////////
?- list_divide([a,1,b,2,c,3,d,5,e],L1,L2).

L1 = [a,b,c,d,e]
L2 = [1,2,3,5] ?