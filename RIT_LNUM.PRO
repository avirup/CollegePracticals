domains
	list = integer*
predicates
	con(list, list, list)
	add(list, integer, list)
clauses
	con([],L1,L1).
	con([X|T], L2, [X|T1]) :- con(T,L2,T1).
	add(L1, X, L):- con(L1, [X], L).
	