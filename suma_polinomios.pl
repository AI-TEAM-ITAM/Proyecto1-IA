
%Funcion que genera polinomios dado el coeficiente y grado
genera_pol :-
	polynomial(A, B),
	write(A*x^B),	
	nl, 
	fail. 

%Funcion que suma 2 polinomios (del mismo grado)
suma_pol :-
	polynomial(A, B),
       	polynomial(C, D),
	B == D,
	X is A + C,
	write(X*x^B),
       	nl,	
	fail. 			


resta_pol :-
	polynomial(A, B),
       	polynomial(C, D),
	B == D,
	X is A + C,
	write(X*x^B),
       	nl,	
	fail. 	

	
polynomial(4, 3). %4x^3
polynomial(5, 3). %5x^3
polynomial(2, 2). %2x^2
polynomial(1, 0). %1 

/* Posible consulta 
	?- poly_prod([1,2,3,4],[5,6,7],Xs).
	Xs = [5.0, 16.0, 34.0, 52, 45, 28] ;
	false.
*/
