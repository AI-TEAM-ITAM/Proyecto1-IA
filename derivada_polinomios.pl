% Derivada de polinimios 
gradoPolinomio([],0).
gradoPolinomio([_|[]],0).
gradoPolinomio([Monomio|Resto],Grado1):-
   gradoPolinomio(Resto,Grado2),
   Grado1 is Grado2+1.

% si pensamos que el polinomio 2x^2 + 3x + 1 = [2,3,1]
derivaPolinomio([],[]). % si recibe una lista vacia regresa una lista vacia.
derivaPolinomio([Monomio|Resto],[Dx|Resto2]):-
   %write('Monomio: '),write(Monomio),write(' Resto: '),write(Resto),nl,
   gradoPolinomio([Monomio|Resto],Gr), % si tiene Resto es porque no es un monomio
   %write(Gr),
   Dx is Monomio*Gr,
   %write("Derivada: "),write(Dx),
   derivaPolinomio(Resto,Resto2). %ahora resto es el monomio