%Evalúa una X en el polinomio dado un polinomio, un grado y su respuesta 

evalua(Pol, X, Resp) :- 
	evaluaPol(Pol, X, 0, 0, Resp). %Comienza con grado y contador en 0

evaluaPol([Cabeza|Cola], X, Grado, Count, Resp) :-
        RespN is (Count + Cabeza * (X**Grado)), %Actualiza respuesta; suma contador, coef. en la cabeza, eleva Xal respectivo grado 
        GradoN is Grado + 1, %actualiza grado
        evaluaPol(Cola, X, GradoN, RespN, Resp).  

%Caso base cuando se tenga la lista vacía sin importar de los demás parámetros, se detiene
evaluaPol([], _X, _Grado, Count, Count).

/* evalua([1, 2, 3], 3, X).
 * X = 34.
 */
