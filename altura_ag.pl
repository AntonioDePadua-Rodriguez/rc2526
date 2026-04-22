arbolg1( a(a, [a(b,[a(e,[])]), a(c,[]), a(d,[])])). 
/*
altura_ag(+ArbolGenerico, -Altura)
es cierto si Altura unifica con la altura de ArbolGenerico.
*/

%altura_ag(a(_,[]),0).
altura_ag(a(_,ListaA),A) :-
    altura_listaA(ListaA,N),
    A is N + 1.

altura_listaA([],0).
altura_listaA([Cab|Resto],A) :-
    altura_ag(Cab,D),
    altura_listaA(Resto,N),
    A is max(D,N).
