male(jack).
male(victor).
male(louis).
male(james).
male(norman).
male(noel).
male(andrew).
male(jorden).
male(trump).

female(taylor).
female(katy).
female(kim).
female(clara).
female(angel).
female(cara).
female(lona).
female(carol).
female(rose).
female(mimi).
female(hani).
female(lisa).

spouse(taylor,jack).
spouse(lona,norman).
spouse(kim,louis).
spouse(katy,james).
spouse(victor,angel).
spouse(noel,cara).
spouse(andrew,carol).
spouse(jorden,lisa).

parent(taylor,katy).
parent(jack,katy).
parent(kim,james).
parent(louis,james).
parent(katy,victor).
parent(james,victor).
parent(victor,clara).
parent(angel,clara).
parent(norman,cara).
parent(noel,angel).
parent(cara,angel).
parent(norman,trump).
parent(lona,trump).
parent(norman,andrew).
parent(lona,cara).
parent(lona,andrew).
parent(andrew,jorden).
parent(andrew,rose).
parent(carol,jorden).
parent(carol,rose).
parent(lisa,mimi).
parent(lisa,hani).
parent(jorden,mimi).
parent(jorden,hani).

wife(X,Y):-female(X), (spouse(X,Y); spouse(Y,X)).
husband(X,Y):-male(X), (spouse(X,Y); spouse(Y,X)).
mother(X,Y):-female(X), parent(X,Y).
father(X,Y):-male(X), parent(X,Y).
sister(X,Y):-female(X), parent(Z,X), parent(Z,Y), X\=Y.
brother(X,Y):-male(X), parent(Z,X), parent(Z,Y), X\=Y.
grandmother(X,Y):-mother(X,Z), parent(Z,Y).
grandfather(X,Y):-father(X,Z), parent(Z,Y).
father_in_law(X,Y):-father(X,Z), (spouse(Z,Y); spouse(Y,Z)).
mother_in_law(X,Y):-mother(X,Z), (spouse(Z,Y); spouse(Y,Z)).
uncle(X,Y):-brother(X,Z), parent(Z,Y), X<>Z.
aunt(X,Y):-sister(X,Z), parent(Z,Y), X\=Z.
child(X,Y):-parent(Y,X).