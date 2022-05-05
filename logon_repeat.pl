domains
name,password=symbol.
predicates
getinput(name,password)
logon
user(name,password)
repeat
clauses
repeat.
repeat:-
repeat.
logon:-
clearwindow,
getinput (name,password),
write("sucessful login"),nl.
logon :-
repeat,
write("sorry try logon"),
getinput(name,password).
getinput(name,password) :-
write("Enter user name :- "),
readln(name),
write("Enter Password"),
readln(password),
user(name,password).
user(xyz,abc).
user(vaishali,mastermind).