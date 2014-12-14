domains
	P,A,R = real
predicates
	area(real,real)
	peri(real,real)
clauses
	area(A,R) :- A= (22/7)*R*R.
	peri(P,R) :- P= (2*22/7)*R.