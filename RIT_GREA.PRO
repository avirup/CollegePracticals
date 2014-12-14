domains
	R,A,B=integer
predicates
	greater(integer,integer,integer)
clauses
	greater(R,A,B):- A>B,R=A.
	greater(R,A,B):- B>A,R=B.