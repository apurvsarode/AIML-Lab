female(vaishali).
female(sheetal).
female(sudarshana).
female(shalini).
female(yutika).
female(chandrabhaga).
male(rajendra).
male(dinesh).
male(apurv).
male(rohit).
male(rihansh).
male(bala).
male(namdeorao).

parent(chandrabhaga,rajendra).
parent(chandrabhaga,dinesh).
parent(namdeorao,rajendra).
parent(namdeorao,dinesh).
parent(rajendra,apurv).
parent(rajendra,sudarshana).
parent(vaishali,apurv).
parent(vaishali,sudarshana).
parent(dinesh,rohit).
parent(dinesh,rihansh).
parent(sheetal,rohit).
parent(sheetal,rihansh).
parent(bala,yutika).
parent(shalini,yutika).
father(X,Y) :- male(X),parent(X,Y).
mother(X,Y) :- female(X),parent(X,Y).
son(X,Y) :- male(X),parent(Y,X).
daughter(X,Y) :- female(X),parent(Y,X).
grandfather(X,Y) :- male(X),parent(X,Somebody),parent(Somebody,Y).
grandmother(X,Y) :- female(X),parent(X,Somebody),parent(Somebody,Y).
sister(X,Y) :- female(X),parent(Par,X),parent(Par,Y), X \= Y.
brother(X,Y) :- male(X),parent(Par,X),parent(Par,Y), X \= Y.
aunt(X,Y) :- female(X),sister(X,Mom),mother(Mom,Y).
aunt(X,Y) :- female(X),sister(X,Dad),father(Dad,Y).
uncle(X,Y) :- male(X),brother(X,Mom),mother(Mom,Y).
uncle(X,Y) :- male(X),brother(X,Dad),father(Dad,Y).
cousin(X,Y) :- uncle(Unc,X),father(Unc,Y).
predecessor(X,Y) :- parent(X,Y).
predecessor(X,Y) :- parent(X,Somebody),parent(Somebody,Y).
successor(X,Y) :- son(X,Y).
successor(X,Y) :- daughter(X,Y).
successor(X,Y) :- son(Somebody,X),successor(Somebody,Y).
successor(X,Y) :- daughter(Somebody,X),successor(Somebody,Y).
