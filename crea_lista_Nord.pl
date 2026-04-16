crea_lista_Nord(N,ListaR) :-
    crea_lista_Nord(N,1,ListaR).

crea_lista_Nord(N,U,[U|Resto]) :-
    U=<N,
    U1 is U+1,
    crea_lista_Nord(N,U1,Resto).
crea_lista_Nord(N,U,[]) :-
    U>N.
