domains
	list=integer*
	L=integer
predicates
	mem_list(list,integer)
clauses
	mem_list([],0).
	mem_list([_|T],L):-mem_list(T,L1), L=L1+1. 