domains
	X,Y,Z = integer
predicates
	orgate(integer, integer, integer)
clauses
	orgate(Z,X,Y) :- X=Y, Z=X.
	orgate(Z,X,Y) :- X<>Y, Z=1.