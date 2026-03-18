%-----------------------------------------------------
% divide(+Elem, +Lista, -Menores, -Mayores)
%es cierto cuando Menores unifica con una lista que
%contiene los elemenentos de Lista que son menores
%o iguales que Elem y Mayores unifica con una lista
%que contiene los elementos de Lista que son
%mayores que Elem.
%------------------------------------------------------

divide(_,[],[],[]).
divide(Elem,[Cab|Resto],[Cab|Men],May) :- Elem > Cab, divide(Elem,Resto,Men,May).
divide(Elem,[Cab|Resto],Men,[Cab|May]) :- Elem =< Cab, divide(Elem,Resto,Men,May).

%---------------------------------------------------
% ordena_quick(+Lista, -ListaR).
%es cierto cuando ListaR unifica con una lista que
%contiene los mismos elementos que Lista ordenados
%de menor a mayor.
%--------------------------------------------------

ordena_quick([],[]).
ordena_quick([Cab|Resto],ListaR) :- divide(Cab,Resto,Men,May), ordena_quick(Men,Meno), ordena_quick(May,Mayo), append(Meno,[Cab|Mayo],ListaR).
