list_subset([],[]).
list_subset([Head|Tail],[Head|Subset]) :- list_subset(Tail,Subset).
list_subset([Head|Tail],Subset) :- list_subset(Tail,Subset).


////////////////
out
///////////////////
?- list_subset([a,b],X).
X = [a, b] ;
X = [a] ;
X = [b] ;
X = [].

?- 


If list is empty, the subset is also empty.

Find the subset recursively by retaining the Head, and

Make another recursive call where we will remove Head.