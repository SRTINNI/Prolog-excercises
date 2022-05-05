domains
name,password=symbol 
predicates
getentry(name,password)
logon(integer)
user(name,password)
go
clauses
go:-
logon(3),
write("\n You are now Logged on."),nl.
logon(0):- !,
write("\n Sorry, You are not permitted access."),
fail.
logon(_):-
getentry(Name,Password),
user(Name,Password),
logon(X):
write("Illegal entry"),nl.
XX=X-1,
logon(XX).
getentry(Name,Password):-
write("Name="),
readln(Name),nl,
write("Password="),
readln(Password),nl,

user(bill,bigfoot).