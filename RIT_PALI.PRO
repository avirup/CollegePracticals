domains
	list = integer*
predicates
	rev(list, list)
	con(list, list, list)
	palin(list)
clauses
	rev([],[]).
	rev([H|T], RL) :- rev(T,L), con(L,[H],RL).
	con([],L1,L1).
	con([X|T], L2, [X|T1]) :- con(T,L2,T1).
	palin(L) :- rev(L,L).