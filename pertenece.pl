/*

pertenece(?Elem, ?Lista)
	es cierto si Elem pertenece a Lista

Inducción
1.P(n0)
2.Para toda n>n0, P(n-1) -> P(n)

1.pertenece(X,[X|_]). Esta el primero en la lista
2.pertenece(X,[_|Resto]) :- pertenece(X,Resto). Busco en el Resto

52 ?- bagof(Elem,pertenece(Elem, [1,2,3,4,5,6,7,8]),Lista).
Lista = [1, 2, 3, 4, 5, 6, 7, 8].
Esto es para hacerlo directamente sin tener que iterar, es decir
utilizo Elem en la funcion de pertenece y se guarda en Lista

*/
pertenece(X,[X|_]).
pertenece(X,[_|Resto]) :- pertenece(X,Resto).
