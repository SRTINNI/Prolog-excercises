list_member(X,[X|_]).
list_member(X,[_|TAIL]) :- list_member(X,TAIL).

list_union([X|Y],Z,W) :- list_member(X,Z),list_union(Y,Z,W).
list_union([X|Y],Z,[X|W]) :- \+ list_member(X,Z), list_union(Y,Z,W).
list_union([],Z,Z).

////////////////
out
////////////
?- list_union([a,b,c,d,e],[a,e,i,o,u],L3).L3 = [b, c, d, a, e, i, o, u] ;
false.
