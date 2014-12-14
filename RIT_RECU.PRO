domains
	N,S=integer
predicates
	sum(integer,integer)
clauses
	sum(0,0).
	sum(N,S):-N>0, N1=N-1, sum(N1,S1), S=N+S1.