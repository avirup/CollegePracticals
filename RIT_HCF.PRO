domains
	A,B,C=integer
predicates
	hcf(integer,integer,integer)
clauses
	hcf(A,A,A).
	hcf(A,B,C):- A>B,B1=A-B,hcf(B,B1,C).
	hcf(A,B,C):- A<B,A1=B-A,hcf(A,A1,C).