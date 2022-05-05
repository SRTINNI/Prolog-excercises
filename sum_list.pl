list_sum([],0).
list_sum([Head|Tail], Sum) :-
   list_sum(Tail,SumTemp),
   Sum is Head + SumTemp.


///////////////////
out
/////////////////
?- list_sum([5,12,69,112,48,4],Sum).

Sum = 250