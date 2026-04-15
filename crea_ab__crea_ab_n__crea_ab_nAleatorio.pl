/*
crea_ab(+ListaEtiquetas, -ArbolBinario)
	es cierto cuando arbol binario unifica con
	un arbol binario que contiene solo las 
	etiquetas de ListaEtiqutas.
	
crea_ab_nAleatorio(+N, -Arbol)
es cierto cuando Arbol unifica con un arbol binario
que contiene N valores aleatorios entre 1 y N.

crea_lista_n(+N,-ListaR)
	es cierto si ListaR unifica con una lista de tamaño N
	que contiene valores aleatorios entre 1 y N.
	
crea_ab_n(+N, -Arbol)
    es cierto si Arbol unifica con un arbol binario
    que contiene los valores del 1 al N en orden ascendente,
    distribuidos de forma equilibrada.
    Ejemplo: crea_ab_n(5, A) -> A = a(1, a(2, a(3,nil,nil), a(4,nil,nil)), a(5,nil,nil))
	
crea_lista_N(+N, -ListaR)
    es cierto si ListaR unifica con una lista de tamaño N
    que contiene los valores del 1 al N en orden ascendente.
    Ejemplo: crea_lista_N(5, L) -> L = [1,2,3,4,5]
	
*/

crea_ab([], nil).
crea_ab([Cab|Resto], a(Cab,Hi,Hd)) :- 
    length(Resto,N),
    L is N div 2,
    length(Izq,L),
    append(Izq,Der,Resto),
    crea_ab(Izq,Hi),
    crea_ab(Der,Hd).



crea_ab_nAleatorio(N, Arbol) :-
    crea_lista_n(N, N, Lista),
    crea_ab(Lista, Arbol).



crea_lista_n(0,_,[]).
crea_lista_n(N,Tam,[X|R]) :- N1 is N - 1,
    				crea_lista_n(N1,Tam,R), 
    				X is random(Tam) + 1.
 


crea_ab_n(N, Arbol) :-
    crea_lista_N(N, Lista),
    crea_ab(Lista, Arbol).

	
crea_lista_N(N,ListaR) :-
    crea_lista_N(N,1,ListaR).

crea_lista_N(N,U,[U|Resto]) :-
    U=<N,
    U1 is U+1,
    crea_lista_N(N,U1,Resto).
crea_lista_N(N,U,[]) :-
    U>N.
