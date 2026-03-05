/*

aniadir_final(+Elem, +Lista, -ListaR) que es cierto 
cuando ListaR unifica con una lista
que contiene los mismos elementos que 
la lista Lista más el elemento Elem añadido al final.

Con append

1. aniadir_final(X,[],[X]). No hace falta
2. aniadir_final(X,Lista,ListaR) :- append(Lista,[X],ListaR).

Sin append

1. aniadir_final(X,[],[X]).
2. aniadir_final(X,[Cab|Cola],[Cab|R]) :- aniadir_final(X,Cola,R). 

*/

aniadir_final(X,[],[X]).
aniadir_final(X,[Cab|Cola],[Cab|R]) :- aniadir_final(X,Cola,R).
