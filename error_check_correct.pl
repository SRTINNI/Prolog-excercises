domains
name,password=symbol 
predicates
getinput(name,password)
logon
user(name,password)
clauses
logon:-
clearwindow,
getinput(_,_),
write("\n You are now Logged on."),nl.
logon:-
write("\n Sorry, You are not permitted access."),nl.
getinput(Name,Password):-
write("\n Please enter your Name: "),
readln(Name),nl,
write("\n Please enter your password: "),
readln(Password),nl,
user(Name,Password).
user(john,superman).
user(sue,happy).
user(bill,bigfoot).