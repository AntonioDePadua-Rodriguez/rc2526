%--------------------------------------------------
% selecciona_uno(+Lista, -Elem, -Resto)
%es cierto cuando Elem unifica con cualquier
%elemento de la lista Lista y Resto unifica
%con una lista que contiene los elementos de
%Lista, en el mismo orden menos el elemento
%Elem.
%--------------------------------------------------

%selecciona_uno([X],X,[]).
%selecciona_uno([Cab|Resto], Cab, Resto).

%--------------------------------------------------
% permuta(Lista, ListaR).
%es cierto cuando ListaR unifica con una lista
%que contiene los elementos de Lista en orden
%distinto. Este predicado genera todas las
%listas posibles por backtraking.
%--------------------------------------------------

permuta([], []).
permuta([Cab|Resto], R2) :- permuta(Resto, R), insertar_todas(Cab, R, R2).


insertar_todas(Elem,List,[Elem|List]).
insertar_todas(Elem,[Cab|Resto],[Cab|RestoR]) :- insertar_todas(Elem,Resto,RestoR).

%9->[1,2,3]
%9,1,2,3

%[1]  [2,3]----9->[2,3]---[1,9,2,3]
%			[2] [3]---9->[3]--[1,2,9,3]
%						[1,2,3,9]
