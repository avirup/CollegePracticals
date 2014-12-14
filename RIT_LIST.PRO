domains
	list=integer*
	S=integer
predicates
	mem_list(list,integer)
clauses
	mem_list([],0).
	mem_list([H|_],S):-mem_list(H,S1),S=S1+H. 