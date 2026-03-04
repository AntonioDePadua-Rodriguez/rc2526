/*
invertir(+Lista, -ListaR)
	es cierto cuando ListaR
	unifica con una lista que contiene los mismos
	elementos que Lista en orden inverso.

1. invertir([],[]).
2. invertir([Cabeza|Resto],ListaR) :- invertir(Resto,L), append(L,Cabeza,ListaR). 
La ListaR es la lista inversa del resto invertir(Resto,->L<-) con Cabeza al final.

append(Lista1, Lista2, Resultado).

Es cierto cuando:

Resultado es la concatenación de Lista1 seguida de Lista2.
*/

invertir([],[]).
invertir([Cabeza|Resto],ListaR) :- invertir(Resto,L), append(L,[Cabeza],ListaR).
