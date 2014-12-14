domains
	A,B,C = real
	V,S,M = real
predicates
	avg(real,real, real, real)
	sum(real,real, real, real)
	multiply(real,real, real, real)
clauses
	avg(V,A,B,C) :- V = (A+B+C)/3.
	sum(S,A,B,C) :- S = (A+B+C).
	multiply(M,A,B,C) :- M = (A*B*C).	