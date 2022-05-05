list_even_len([]).
list_even_len([Head|Tail]) :- list_odd_len(Tail).

list_odd_len([_]).
list_odd_len([Head|Tail]) :- list_even_len(Tail).



////////////////
out
//////////////////
?- list_odd_len([a,2,b,3,c]).

true ?

yes
| ?- list_odd_len([a,2,b,3]).

no
| ?- list_even_len([a,2,b,3]).
