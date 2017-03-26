
go:-
	write('***$PROGRAM FOR PLURALS FORMATION OF TELUGU NOUNS$***'),
nl,
	write('If your NOUN ends with the letter "A" (like amma), enter 1:'),
nl,
	write('If your NOUN ends with the letter "E" like(pette,katte), enter 2:'),
nl,
	write('If your NOUN ends with the letter "AM" (like papam,shapam), enter 3:'),
nl,
	write('If your NOUN ends with the letter "I",(like rayi,pandi), enter 4:'),
nl,
	write('If your NOUN ends with the letter "U",(like raju,goovu), enter 5:'),
nl,
	write('If your NOUN ends with the letter "MU",(like varamu,penamu), enter 6:'),
nl,
	write('If your NOUN ends with the letter "Du", enter 7:'),
nl,
	write('Please Enter your choice NUMBER:'),

read(Class),

plural(Noun,Nounplu,Class).

go(yes):-go.

go(no):-write(' THANK YOU').


/* Type 1 TELUGU NOUNS */

plural(Noun,Nounplu,1):-
	write(' Enter a TELUGU noun which ends with the letter "A":-'),
	nl,
	read(Noun),
	name(Noun,Y),
        dummy_stack(Y,X),
	concat(X,[l,u],Nounplu),
	write('THE PLURALS FORMATION OF TELUGU NOUN:'),
	atomlist_concat(Nounplu,Z),
	write(Z),
	write(.),nl,
	write('Do u want to enter one more TELUGU NOUN? (yes/no):'),nl,
	read(P),go(P).

dummy_stack([],[]).
dummy_stack([Head|Tail],[Head1|Tail1]):-
	dummy_stack(Tail,Tail1),
	name(Head1,[Head]).

concat([],List,List).	
concat([],List,List).
concat([Head|List1],List2,[Head|List3]):-
	concat(List1,List2,List3).


/* Type 2 TELUGU NOUNS */

plural(Noun,Nounplu,2):-
	write(' Enter a TELUGU noun which ends with the letter "E":-'),
	nl,
	read(Noun),
	name(Noun,Y),
        dummy_stack(Y,X),
	concat(X,[l,u],Nounplu),
	write('THE PLURALS FORMATION OF TELUGU NOUN::'),
	atomlist_concat(Nounplu,Z),
	write(Z),
	write(.),nl,
	write('Do u want to enter one more TELUGU NOUN? (yes/no):'),nl,
	read(P),go(P).

dummy_stack([],[]).
dummy_stack([Head|Tail],[Head1|Tail1]):-
	dummy_stack(Tail,Tail1),
	name(Head1,[Head]).

concat([],List,List).	
concat([],List,List).
concat([Head|List1],List2,[Head|List3]):-
	concat(List1,List2,List3).



/* Type 3 TELUGU NOUNS */


plural(Noun,Nounplu,3):-
	write(' Enter a NOUN ends with the letters "AM".'),
	nl,
	read(Noun),
	name(Noun,Y),
	dummy_stack(Y,X),
	del_last(X,Root),
	concat(Root,[a,l,u],Nounplu),
	write('THE PLURALS FORMATION OF TELUGU NOUN:'),
	atomlist_concat(Nounplu,Z),
	write(Z),
	write(.),nl,
	write('Do u want to enter one more TELUGU NOUN? (yes/no):'),nl,
	read(P),go(P).


del_last([X], []).
del_last([Head|Tail], [Head|Tail1]):-
	del_last(Tail, Tail1).


/* Type 4 TELUGU NOUNS */

plural(Noun,Nounplu,4):-
	write(' Enter a NOUN ends with the letter "I":'),
	nl,
	read(Noun),
	name(Noun,Y),
	dummy_stack(Y,X),
	del_last(X,Root),
	concat(Root,[u,l,u],Nounplu),
	write('THE PLURALS FORMATION OF TELUGU NOUN:'),
	atomlist_concat(Nounplu,Z),
	write(Z),
	write(.),nl,
        write('Do u want to enter one more TELUGU NOUN? (yes/no):'),nl,
	read(P),go(P).


/* Type 5  TELUGU NOUNS */

plural(Noun,Nounplu,5):-
	write(' Enter a NOUN ends with the letter "U"'),
	nl,
	read(Noun),
	name(Noun,Y),
	dummy_stack(Y,X),
	concat(X,[l,u],Nounplu),
	write('THE PLURALS FORMATION OF TELUGU NOUN:'),
	atomlist_concat(Nounplu,Z),
	write(Z),
	write(.),nl,
	write('Do u want to enter one more TELUGU NOUN? (yes/no):'),nl,
	read(P),go(P).


/* Type 6 TELUGU NOUNS */

plural(Noun,Nounplu,6):-
	write(' Enter a NOUN ends with this letters mu:'),
	nl,
	read(Noun),
	name(Noun,Y),
	dummy_stack(Y,X),
	del_2(X,Root),
	concat(Root,[l,l,u],Nounplu),
	write('THE PLURALS FORMATION OF TELUGU NOUN:'),
	atomlist_concat(Nounplu,Z),
	write(Z),
	write(.),nl,
        write('Do u want to enter one more TELUGU NOUN? (yes/no):'),nl,
	read(P),go(P).


del_2([_,_], []).
del_2([Head|Tail], [Head|Tail1]):-
	del_2(Tail, Tail1).

/* Type 7  TELUGU NOUNS */
plural(Noun,Nounplu,7):-
	write(' Enter a NOUN ends with this letters Du:'),
	nl,
	read(Noun),
	name(Noun,Y),
	dummy_stack(Y,X),
	del_2(X,Root),
	concat(Root,[l,l,u],Nounplu),
	write('THE PLURALS FORMATION OF TELUGU NOUN:'),
	atomlist_concat(Nounplu,Z),
	write(Z),
	write(.),nl,
        write('Do u want to enter one more TELUGU NOUN? (yes/no):'),nl,
	read(P),go(P).



