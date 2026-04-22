arbolg1( a(a, [a(b,[a(e,[])]), a(c,[]), a(d,[])])). 
/*
cuenta_nodos(+Arbol_generico, ?Num_nodos)
es cierto cuando Num_nodos unifica con el
numero de nodos del árbol “Arbol_generico” 
*/

cuenta_nodos( a(_, ListaArboles), R2) :-
    cuenta_nodos_lista_arboles(ListaArboles, R),
    R2 is R + 1.


/*
cuenta_nodos_lista_arboles()
*/
cuenta_nodos_lista_arboles([], 0).
cuenta_nodos_lista_arboles([Cab|Resto], Total) :-
    cuenta_nodos_lista_arboles(Resto, R),
    cuenta_nodos(Cab, RCa),
    Total is R + RCa.
