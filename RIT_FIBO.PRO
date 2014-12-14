domains
	A,B,C=integer
predicates
	fibo(integer,integer)
clauses
	fibo(1,0).
	fibo(2,1).
	fibo(A,B):- A>2,A1=A-1,A2=A1-1, fibo(A1,B1),fibo(A2,B2),B=B1+B2.