/*crea_ag(+Lista, +N, -ArbolGenerico)
es cierto si ArbolGenerico unifica con una Lista de arboles que 
*/

crea_ag_lista_arboles([], []).
crea_ag_lista_arboles([Cab|Resto], [a(Cab, [])|R]) :- 
    crea_ag_lista_arboles(Resto, R).

crea_ag(N, [Cab|Resto], a(Cab, R) ) :- length(Resto,L), L < N,
    crea_ag_lista_arboles(Resto, R).

crea_ag(N, [Cab|Resto], a(Cab, R) ) :- length(Resto, L), L >= N,
    Div is L div N,
    N2 is N - 1,
    length(Lista, N2),
    maplist(my_length(Div), Lista),
    append([L1|Lista], Resto),
    maplist(crea_ag(N), [L1|Lista], R).
    
    
    
    
my_length(N, Lista) :- length(Lista, N).
