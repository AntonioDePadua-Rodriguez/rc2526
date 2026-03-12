/*
ordena_burbuja(+Lista, -ListaR).
es cierto cuando ListaR unifica con una lista que
contiene los mismos elementos que Lista ordenados
de menor a mayor

append(_,[E1,E2|_],[1,2,3,4,5,6,7,8]). Con este append voy cogiendo de 2 en 2.
E1 = 1,
E2 = 2 ;
E1 = 2,
E2 = 3 ;
E1 = 3,
E2 = 4 ;
E1 = 4,
E2 = 5 ;
E1 = 5,
E2 = 6 ;
E1 = 6,
E2 = 7 ;
E1 = 7,
E2 = 8 ;

1. ordena_burbuja(Lista) :- ordenada(Lista).
2. ordena_burbuja(Lista) :- append(_,[E1,E2|_], Lista), E1>E2



*/
ordena_burbuja(Lista, Lista) :- ordenada(Lista).
ordena_burbuja(Lista, RT) :- append(Ini,[E1,E2|Fin], Lista), 
    						E1>E2, 
    						append(Ini,[E2,E1|Fin], R),							
    						ordena_burbuja(R,RT).
ordena_burbuja(Lista, RT) :- append(_,[E1,E2|_], Lista), 
    						E1=<E2, 
    						ordena_burbuja(Lista,RT).
/*
ordenada(+Lista)
es cierto cuando Lista unifica con una lista
que contiene sus elementos ordenados de menor a
mayor.

1. ordenada([]).
2. ordenada([_]). Para un elemento
3. ordenada([Cab1, Cab2|Resto]) :- Cab1 =< Cab2, ordenada([Cab2|Resto]).

*/

ordenada([]).
ordenada([_]).
ordenada([Cab1, Cab2|Resto]) :- Cab1 =< Cab2, ordenada([Cab2|Resto]).


/*
ordena_burbuja(Lista, Lista) :- ordenada(Lista), !.
ordena_burbuja(Lista, RT) :- append(Ini,[E1,E2|Fin], Lista), 
    						E1>E2, 
    						append(Ini,[E2,E1|Fin], R),
							!,							
    						ordena_burbuja(R,RT).
ordena_burbuja(Lista, RT) :- append(_,[E1,E2|_], Lista), 
    						E1=<E2, 
    						ordena_burbuja(Lista,RT).
							
Con los ! evitamos que de multiples soluciones.
*/
