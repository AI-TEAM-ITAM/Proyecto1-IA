
%Suma de polinomios 
poly_sum(Ms,[],Ms) :- %Recibe una lista y una lista vacía 
	Ms = [_|_]. %Regresa la lista con variables anónimas 

%Llama a poly_sum
poly_sum([],Ns,Ns). 

poly_sum([M|Ms], [N|Ns], [S|Ss]) :-
   S is M+N,
   poly_sum(Ms, Ns, Ss).


scal_prod([],_Sc,[]).

scal_prod([M|Ms], Sc, [P|Ps]) :-
   P is M*Sc,
   scal_prod(Ms, Sc, Ps).

 
poly_prod(_,[],[]).

poly_prod(Ms,[N|Ns], Xs2) :-
   poly_prod(Ms,Ns, Xs1),
   scal_prod(Ms, N, Ps),
    poly_sum(Ps, [0.0|Xs1], Xs2).

% poly_prod([1,2,3,4],[5,6,7],Xs). Posibles consultas
% poly_prod([1,2,3,4],[-5,6,7],Xs).
