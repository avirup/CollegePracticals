domains
	N=integer
predicates
	leap(integer)
clauses
	leap(N):- (N mod 100)<>0, (N mod 4)=0.
	leap(N):- (N mod 100)=0, (N mod 400)=0.