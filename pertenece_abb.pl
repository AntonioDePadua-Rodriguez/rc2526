arbol1(a(4,a(2,a(1,nil,nil),a(3,nil,nil)),a(6,a(5,nil,nil),a(7,nil,nil)))).
/*
 pertenece(+Elem, +ArbolBinario)
 	es cierto si la etiqueta Elem pertenece
    a ArbolBinario de Busqueda.
	
	Si devuelve la unificacion de la variable A es cierto
 */

pertenece_abb(Elem,a(Elem,_,_)).
pertenece_abb(Elem,a(N,Hi,_)) :-
	Elem < N,
    pertenece_abb(Elem,Hi).
pertenece_abb(Elem,a(N,_,Hd)) :- 
	Elem > N,
    pertenece_abb(Elem,Hd).
