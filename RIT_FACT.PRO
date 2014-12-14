domains
	N,R=integer
predicates
	fact(integer,integer)
clauses
	fact(0,1).
	fact(N,R):- N>0,N1=N-1,fact(N1,R1),R=R1*N.
	