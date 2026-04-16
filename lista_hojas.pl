arbol1(a(4,a(2,a(1,nil,nil),a(3,nil,nil)),a(6,a(5,nil,nil),a(7,nil,nil)))).
 /*
Lista_hojas(+Arbol_binario, ?Lista_hojas)
es cierto cuando Lista_hojas unifica con una lista 
que contiene las etiquetas de las hojas de Arbol_binario
*/

hoja(a(_,nil,nil)).

lista_hojas(nil,[]).
lista_hojas(a(V,Hi,Hd),[V]) :- hoja(a(V,Hi,Hd)).
lista_hojas(a(V,Hi,Hd),ListaR) :-
    \+ hoja(a(V,Hi,Hd)),
    lista_hojas(Hi,LIzq),
    lista_hojas(Hd,LDer),
    append(LIzq,LDer,ListaR).
