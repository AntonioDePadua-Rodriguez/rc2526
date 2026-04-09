arbol1(a(1, a(2, nil, nil), a(3, nil, a(4, nil, nil)))).
/*
 pertenece(+Elem, +ArbolBinario)
 	es cierto si la etiqueta Elem pertenece
    a ArbolBinario.
	
	Si devuelve la unificacion de la variable A es cierto
	si metemos a(1, a(2, nil, nil), a(3, nil, a(4, nil, nil))) en vez
	de una variable arbol1(A) devuelve true
 */

pertenece(Elem,a(Elem,_,_)).
pertenece(Elem,a(_,Hi,_)) :- 
    pertenece(Elem,Hi).
pertenece(Elem,a(_,_,Hd)) :- 
    pertenece(Elem,Hd).
