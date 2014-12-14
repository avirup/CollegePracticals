domains
	list=integer*
	X=integer
predicates
	mem_list(integer,list)
clauses
	mem_list(X,[X|_]).
	mem_list(X,[_|T]):- mem_list(X,T).