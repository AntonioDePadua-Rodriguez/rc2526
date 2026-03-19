/*
crea_lista_n(+N,-ListaR)
	es cierto si ListaR unifica con una lista de tamaño N
	que contiene valores aleatorios entre 1 y N.
	
crea_lista_n(0,[]).
crea_lista_n(N,[X|R]) :- N1 is N - 1,
    				crea_lista_n(N1,R), 
    				X is random(N) + 1.
*/

crea_lista_n(0,_,[]).
crea_lista_n(N,Tam,[X|R]) :- N1 is N - 1,
    				crea_lista_n(N1,Tam,R), 
    				X is random(Tam) + 1.
