list_delete(X,[X|L1], L1).
list_delete(X, [Y|L2], [Y|L1]) :- list_delete(X,L2,L1).

list_perm([],[]).
list_perm(L,[X|P]) :- list_delete(X,L,L1),list_perm(L1,P).




////////////////
out/////////////
?- list_perm([a,b,c,d],X).
X = [a, b, c, d] ;
X = [a, b, d, c] ;
X = [a, c, b, d] ;
X = [a, c, d, b] ;
X = [a, d, b, c] ;
X = [a, d, c, b] ;
X = [b, a, c, d] ;
X = [b, a, d, c] ;
X = [b, c, a, d] ;
X = [b, c, d, a] ;
X = [b, d, a, c] ;
X = [b, d, c, a] ;
X = [c, a, b, d] ;
X = [c, a, d, b] ;
X = [c, b, a, d] ;
X = [c, b, d, a] ;
X = [c, d, a, b] ;
X = [c, d, b, a] ;
X = [d, a, b, c] ;
X = [d, a, c, b] ;
X = [d, b, a, c] ;
X = [d, b, c, a] ;
X = [d, c, a, b] ;
X = [d, c, b, a] ;
false.
This operation will change the list item positions and generate all possible outcomes.