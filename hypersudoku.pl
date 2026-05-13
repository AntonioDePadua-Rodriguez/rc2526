:- use_module(library(clpfd)).

sudokuhyper(Rows):-
	length(Rows,9), %Establece una lista de 9 elementos
	maplist(same_length(Rows), Rows), %Transforma cada elemento en una lista de 9 elementos consiguiendo una matriz 9x9
	append(Rows, Vs), Vs ins 1..9, %Establece el dominio de 1-9 a todas las variables
	maplist(all_distinct, Rows), %Hace que cada posicion de Rows(Lista 9 elementos) tenga valores distintos 1-9, filas
    transpose(Rows, Columns), %Cambia filas por columnas, una columna esta formada por los elementos de una posicion N de todas la filas
    maplist(all_distinct, Columns), %Hace que cada posicion de Columns(Lista 9 elementos) tenga valores distintos 1-9, columnas
    Rows = [As,Bs,Cs,Ds,Es,Fs,Gs,Hs,Is], %Nombra las Listas para poder referenciarlas, cada variable es lista 9 elementos
    blocks(As, Bs, Cs),%Bloque 3x9, 3 filas de 9 elementos
    blocks(Ds, Es, Fs),%Bloque 3x9, 3 filas de 9 elementos
    blocks(Gs, Hs, Is),%Bloque 3x9, 3 filas de 9 elementos
	Rows = [_,[_|R2],[_|R3],[_|R4],_,[_|R6],[_|R7],[_|R8],_],
	blocks_Hy(R2,R3,R4),
	blocks_Hy(R6,R7,R8).

blocks([], [], []).
blocks([N1,N2,N3|Ns1], [N4,N5,N6|Ns2], [N7,N8,N9|Ns3]) :- %De cada bloque formado por 3 filas, coge 3 elementos de la 1, 2 y 3, obtiene los bloques reales del sudoku 3x3
	all_distinct([N1,N2,N3,N4,N5,N6,N7,N8,N9]), %Hace que cada variable del bloque 3x3 sea distinta entre ellas
    blocks(Ns1, Ns2, Ns3).%Lo comprueba recursivamente

blocks_Hy([], [], []).
blocks_Hy([N1,N2,N3|Ns1], [N4,N5,N6|Ns2], [N7,N8,N9|Ns3]) :-
	all_distinct([N1,N2,N3,N4,N5,N6,N7,N8,N9]),
	Ns1 = [_|C1], Ns2 = [_|C2], Ns3 = [_|C3],
	blocks_Hy(C1,C2,C3).
	
	
hypersudoku1([[1, 2, 3, 4, 5, 6, 7, 8, 9],
[4, 5, 6, 7, 8, 9, 1, 2, 3],
[7, 8, 9, 1, 2, 3, 4, 5, 6],
[5, 3, 4, 2, 9, 7, 8, 6, 1],
[2, 1, 7, 8, 6, 5, 3, 9, 4],
[6, 9, 8, 3, 1, 4, 5, 7, 2],
[3, 4, 2, 6, 7, 8, 9, 1, 5],
[9, 7, 1, 5, 4, 2, 6, 3, 8],
[8, 6, 5, 9, 3, 1, 2, 4, 7]]).

hypersudoku2([[1, _, 3, 4, 5, 6, _, 8, 9],
[4, 5, 6, 7, 8, 9, 1, 2, 3],
[7, _, 9, 1, 2, 3, 4, 5, _],
[5, 3, 4, 2, 9, _, 8, 6, 1],
[_, 1, 7, 8, 6, 5, 3, 9, 4],
[6, 9, _, 3, 1, 4, 5, 7, 2],
[3, 4, 2, 6, 7, 8, 9, _, 5],
[9, 7, 1, 5, _, 2, 6, 3, 8],
[8, _, 5, 9, 3, 1, 2, 4, 7]]).
