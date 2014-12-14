domains
	S,A,B,C,R=integer
predicates
	area(integer,integer,integer,integer,integer)
        semi(integer,integer,integer,integer)
clauses
	semi(S,A,B,C):-S=(A+B+C)/2.
	area(S,A,B,C,R):- semi(S,A,B,C),R=sqrt(S*(S-A)*(S-B)*(S-C)).
	