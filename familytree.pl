female(mum).
female(kydd).
female(elizabeth).
female(margaret).
female(diana).
female(anne).
female(sarah).
female(zara).
female(beatrice).
female(eugenie).

male(george).
male(spencer).
male(philip).
male(charles).
male(mark).
male(andrew).
male(edward).
male(william).
male(harry).
male(peter).

parent(george,elizabeth).
parent(george,margaret).
parent(mum,elizabeth).
parent(mum,margareth).
parent(spencer,diana).
parent(kydd,diana).
parent(elizabeth,charles).
parent(elizabeth,anne).
parent(elizabeth,andrew).
parent(elizabeth,edward).
parent(philip,charles).
parent(philip,anne).
parent(philip,andrew).
parent(philip,edward).
parent(diana,william).
parent(diana,harry).
parent(charles,william).
parent(charles,harry).
parent(anne,peter).
parent(anne,zara).
parent(mark,peter).
parent(mark,zara).
parent(andrew,beatrice).
parent(andrew,eugenie).
parent(sarah,beatrice).
parent(sarah,eugenie).
wife(X,Y):-female(X),parent(X,Z),parent(Y,Z).
son(X,Y):-male(X),parent(Y,X).
daughter(X,Y):-female(X),parent(Y,X).
husband(X,Y):-wife(Y,X).
spouse(X,Y):-wife(X,Y);wife(Y,X).
child(X,Y):-son(X,Y);daughter(X,Y).
parent(X,Y):-son(Y,X);daughter(Y,X).
grandChild(X,Y):-parent(Z,X),parent(Y,Z).
greatGrandParent(X,Y):-parent(X,Z),parent(Z,W),parent(W,Y).
brother(X,Y):-male(X),parent(Z,X),parent(Z,Y).
sister(X,Y):-female(X),parent(Z,X),parent(Z,Y).
aunt(X,Y):-sister(X,Z),parent(Z,Y).
uncle(X,Y):-brother(X,Z),parent(Z,Y).
brotherInLaw(X,Y):-husband(Y,Z),brother(X,Z);wife(Y,Z),brother(X,Z).
sisterInLaw(X,Y):-husband(Y,Z),sister(X,Z);wife(Y,Z),sister(X,Z).
firstCousin(X,Y):-parent(Z1,X),parent(Z2,Y),parent(Z,Z1),parent(Z,Z2).
father(X,Y):-parent(X,Y),male(X).
mother(X,Y):-parent(X,Y),female(X).
