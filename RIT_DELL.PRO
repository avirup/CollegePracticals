domains
	L = integer*
	X = integer
predicates
	del(L, X, L)
	
clauses
	del ([X|T], X, T).
	del ([H|T], X, [H|T1]) :- del(T, X, T1).
	
	