/*

mas_veces(+Lista, -Elem, -Num)
es cierto cuando Elem unifica con el elemento
que se repite más veces en la lista Lista
y Num unifica con el número de veces que se 
repite dicho elemento.


primero ordenamos con msort.

mayor_n(+ListaComprimida, -Elem, -N).
es cierto si Elem unifica con el Elemento que se repite más veces en ListaComprimida
y N unifica con el número de veces que se repite Elem.


comprime(+Lista, -ListaR)
es cierto si ListaR unifica con una lista con
el siguiente formato:
comprime([a,a,b,b,b,c,d,d,a],R)
R = [(a,2), (b,3), (c,1), (d,2), (a,1)]

guitracer.
trace.
notrace.
*/

mayor_n([],[],0).
mayor_n([(Elem,N)|Resto],Elem,N):-
	mayor_n(Resto,_,N1),N>=N1.
mayor_n([(_,V)|Resto],E1,N1):-
	mayor_n(Resto,E1,N1),V<N1.

comprime([], []).
comprime([X],[(X,1)]).
comprime([Cab, Cab|Resto], [(Elem,N2)|R]) :-
	comprime([Cab|Resto], [(Elem,N)|R]), N2 is N + 1.
	
comprime([Cab1, Cab2|Resto], [(Cab1,1)|R]) :-
	Cab1\=Cab2, comprime(([Cab2|Resto]),R).

%mas_veces([],[],0). mas_veces no se llama a si mismo
mas_veces(Lista,Elem,N) :-
	msort(Lista,ListaO),comprime(ListaO,ListaC),mayor_n(ListaC,Elem,N).
