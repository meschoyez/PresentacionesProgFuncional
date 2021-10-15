progenitor(homero, bart).
progenitor(homero, lisa).
progenitor(abraham, homero).

abuelo(X,Y):- progenitor(X,Z), progenitor(Z,Y).
