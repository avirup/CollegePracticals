domains
	R,X,N=integer
predicates
	power(integer,integer,integer)
clauses
	power(_,0,1).
	power(X,N,R):- N>0,N1=N-1,power(X,N1,R1),R=X*R1.