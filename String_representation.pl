
% Derivada de polinimios 
gradoPolinomio([],0).
gradoPolinomio([_|[]],0). % [_|[]] esto es una lista de un solo elemento
gradoPolinomio([Monomio|Resto],Grado1):-
   gradoPolinomio(Resto,Grado2),
   Grado1 is Grado2+1.

string([Monomio|Resto],[_|Resto2]):-
   gradoPolinomio([Monomio|Resto],Gr), % si tiene Resto es porque no es un monomio
   write(Monomio),
   write("x"),
   write(^),
   write(Gr),
   write("+"),
   string(Resto,Resto2). %ahora resto es el monomio

