/*-----------------------------------------------------
 concatena(?List1, ?List2, ?ListR). -> ListR=[List1|List2]
 
 concatena(+List1, +List2, -ListR).
es cierto cuando ListaR unifica con una lista
que contiene los elementos de la lista List1
en el mismo orden y seguidos de los elementos
de la lista List2 en el mismo orden.

Inducción
1. concatena([], Lista, Lista).
2. concatena([Cab|Resto], Lista, C|Res) :- concatena(Resto,Res,Lista). 


[3] [1,2]
[3]|[], Lista, [3|Res] :- [], Lista, Res entonces Res=Lista
-----------------------------------------------------*/

concatena([], Lista, Lista).
concatena([Cab|Resto], Lista, [Cab|Res]) :- concatena(Resto,Lista,Res).
