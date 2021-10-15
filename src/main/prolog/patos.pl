pato(donald).
pato(daisy).
pato(tio_rico).
pato(S) :- sobrinoDe(S, T) , pato(T).
pato(P) :- plumas(P) , cuac(P).

sobrinoDe(hugo, donald).
sobrinoDe(paco, donald).
sobrinoDe(luis, donald).
sobrinoDe(donald, tio_rico).

plumas(lucas). 
plumas(claudio).
plumas(tweety).

cuac(lucas).

