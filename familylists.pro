%Chris Fernandez
%5/15/16
%CS 4810 Artificial Intelligence
%Assignment#5 Proglog FamilyList

:- use_module(library(lists)).

%Simpsons Family TreeListThing
family([marge, homer], [[lisa, maggie], [bart]]).
family([selma], [[ling], []]).
family([edwina, abraham], [[abbie], []]).
family([mona, abraham], [[], [homer]]).
family([gaby, abraham], [[], [herb] ]).
family([jackie, clancy], [[patty, selma, marge], []]).
family([yuma, orville], [[hortense], [hubert, abraham, cyrus, chet, tyrone, bill]]).
family([janet, jay], [[mona, kari], []]).
family([bambi, pepe], [[charlene], [clancy, jojo, chester, herman, arthur]]).
family([alvarine, ferdinand], [[gladys, jackie], []]).


%rules
father_of(F,C):- family([_,F],[Ds,Ss]), (member(C, Ds); member(C, Ss)).
mother_of(M,C):- family([M,_],[Ds,Ss]), (member(C, Ds); member(C, Ss)).
parent_of(P,X):- father_of(P,X); mother_of(P,X).
son_of(X,P):- (family([P,_], [_,Ss]); family([_,P],[_,Ss])), member(X, Ss).
daughter_of(X,P):- (family([P,_], [Ds,_]); family([_,P],[Ds,_])), member(X, Ds).
sibling_of(X,Y):- parent_of(Z,X), parent_of(Z,Y).
brother_of(X,Y):- sibling_of(X,Y), (family([_,_],[_,Ss]), member(X,Ss)).
sister_of(X,Y):- sibling_of(X,Y), (family([_,_],[Ds,_]), member(X,Ds)).
grandparent_of(G,C):- parent_of(Z,C), parent_of(G,Z).
ancestor_of(A,C):- parent_of(A,C); parent_of(P,C), ancestor_of(A,P).
oldest_son(S,P):- (family([P,_], [_,Ss]); family([_,P],[_,Ss])), ([H|_] = Ss), (S == H).
oldest_daughter(D,P):- (family([P,_], [Ds,_]); family([_,P],[Ds,_])), ([H|_] = Ds), (D == H).
