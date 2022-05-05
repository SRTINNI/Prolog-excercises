list_delete(X,[X],[]).
list_delete(X,[X|L1],L1).
list_delete(X,[Y|L2],[Y|L1]):-list_delete(X,L2,L1).




////////////////////
out
///////////////
?- list_delete(a,[a],L).
L = [] ;
L = [] ;
false.

?- list_delete(b,[b,c,m],L).
L = [c, m] ;
false.

?- list_delete(a,[b,c,a,d],L).
L = [b, c, d] ;
false.

?- 