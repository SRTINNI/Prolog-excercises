list_concat([],L,L).
list_concat([X1|L1],L2,[X1|L3]):-list_concat(L1,L2,L3).








/////////////////
out
////////////
?- list_concat([],[s,c],L).
L = [s, c].

?- list_concat([a,b],[c,d],L).
L = [a, b, c, d].

?- 