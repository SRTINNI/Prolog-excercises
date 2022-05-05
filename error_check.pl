domains
name, password=symbol
predicates
getinput (name, password)
logon
user(name, password)
clauses
logon:-
clearwindow,
getinput(Name, Password),
user(Name, Password),
write(" You are now logged on."),nl.
logon:-
write("Sorry, you are not permitted access."),nl.
write(" Please enter your name: "),
logon.   
getinput(Name, Password):-
write(" Please enter your name: "),
readln(Name),nl,
write("Please enter your password: "),
readln(Password),nl.
user(john,superman).
user(sue,happy).
user(bill,bigfoot).

