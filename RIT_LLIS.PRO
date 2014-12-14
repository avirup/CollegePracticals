domains
	L = integer*
	X,X1 = integer
predicates
	lengthlist(L,X)
	even(L)
clauses
	lengthlist([], 0).
	lengthlist([_|T],X) :- lengthlist(T, X1),X=X1+1.
	even(L) :- lengthlist(L,X), X mod 2 = 0.
	