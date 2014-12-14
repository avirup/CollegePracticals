domains
	X,Y,Z = integer
predicates
	xorgate(integer, integer, integer)
clauses
	xorgate(Z,X,Y) :- X=Y, Z=0.
	xorgate(Z,X,Y) :- X<>Y, Z=1.