/* Temperature Convertion */

domains
	C,F = real
predicates
	toC(real, real)
	toF(real, real)
clauses
	toC(C,F) :- C = (5*(F-32)/9).
	toF(F,C) :- F = (32 + (9*C)/5).