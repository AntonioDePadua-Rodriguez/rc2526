%-----------------------------------------------------
% inserta_en_list_ord(+Elem, +Lista, -ListaR).
%es cierto cuando ListaR unifica con una lista
%que contiene los elementos de la lista ordenada
%Lista, con el elemento Elem insertado de forma
%ordenada.
%-----------------------------------------------------

/*inserta_en_list_ord(X,[],[X]).
inserta_en_list_ord(X,List,R) :- 
    append(Ini,[E1|Fin], List),
    E1>=X,
    append(Ini,[X,E1|Fin], R).
inserta_en_list_ord(X,List,R) :- 
    append(_,[E1|Fin], List),
    E1<X,
    inserta_en_list_ord(X,Fin, R1),
    append(List,R1,R).
*/

inserta_en_list_ord(X,[],[X]).
inserta_en_list_ord(X,[C1|Resto],[X,C1|Resto]) :- 
    C1 >= X.
inserta_en_list_ord(X,[C1|Resto],[C1|R]) :- 
    C1 < X,
    inserta_en_list_ord(X,Resto, R).



%-----------------------------------------------------
% ordena_insercion(+Lista, -ListaR).
%es cierto cuando ListaR unifica con una lista que
%contiene los mismos elementos que Lista ordenados
%de menor a mayor.
%-----------------------------------------------------

ordena_insercion([],[]).
ordena_insercion([Cab|Resto],ListR) :- ordena_insercion(Resto,R), inserta_en_list_ord(Cab,R,ListR).
