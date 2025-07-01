%Assume basic relation: 
parent(john, mary).  % example parent relation 
Now: 
% a. child(X, Y): X is a child of Y 
child(X, Y) :- parent(Y, X). 
% b. grandparent(X, Y): X is grandparent of Y 
grandparent(X, Y) :- parent(X, Z), parent(Z, Y). 
% c. mother(X, Y): X is mother of Y 
mother(X, Y) :- parent(X, Y), female(X). 
% d. predecessor(X, Y): X is any ancestor of Y 
predecessor(X, Y) :- parent(X, Y). 
predecessor(X, Y) :- parent(X, Z), predecessor(Z, Y). 
% e. aunt(X, Y): X is aunt of Y 
aunt(X, Y) :- 
parent(Z, Y), 
sibling(X, Z), 
female(X). 
% Supporting: sibling(X, Y) 
sibling(X, Y) :- 
parent(Z, X), 
parent(Z, Y), 
X \= Y. 
% female(X): assumed facts 
female(mary).  % example