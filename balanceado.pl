/*balanceado(+ArbolBinario)
es cierto si ArbolBinario unifica con un arbol
binario que PARA TODO NODO la diferencia entre
la altura del arbol izquerdo y derecho es como maximo 1*/ 
arbolNoBalanceado(a(1, a(2,a(2,nil,nil),nil ),nil)).
arbolBalanceado(a(1,a(2,nil,nil),a(3,nil,nil))).

balanceado(nil).
balanceado(a(_,Hi,Hd)) :-
    alturaAB(Hi,N1),
    alturaAB(Hd,N2),
    Dif is N1-N2,
    Abs is abs(Dif),
	Abs=<1.

alturaAB(nil,0).
alturaAB(a(_,Hi,Hd),A) :-
    alturaAB(Hi,N1),
    alturaAB(Hd,N2),
    N is max(N1,N2),
    A is N + 1.
