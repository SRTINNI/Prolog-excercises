domains
H=integer
T=integer*
predicates
safe(T)
solution(T)
permutation(T,T)
del(H,T,T)
noattack(H,T,H)
clauses
del(I,[I|L],L). /*to take a position from the permutation of list*/
del(I,[F|L],[F|L1]):-
del(I,L,L1).
permutation([],[]). /*to find the possible positions*/
permutation([H|T],PL):-
permutation(T,PT),\
del(H,PL,PT).
solution(Q):- /*final solution is stored in Q*/
permutation([1,2,3,4,5,6,7,8],Q),
safe(Q).
safe([]). /*Q is safe such that no queens attack each other*/
safe([Q|others]):-
safe(others),
noattack(Q,others,1).
noattack(_,[],_). /*to find if the queens are in same row, column or diagonal*/
noattack(Y,[Y1|Ydist],Xdist):-
Y1-Y<>Xdist,
Y-Y1<>Xdist,
dist1=Xdist,
noattack(Y,Ydist,dist1).