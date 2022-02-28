sumaPolinomios(Polinomio1,[],Polinomio1) :- Polinomio1 = [|].%si no hay otro polinomio con quien sumar regresa el mismo polinomio, pero identificando la cabeza y la cola. (CASO BASE 1)
sumaPolinomios([],Polinomio2,Polinomio2). %si no hay otro polinomio con quien sumar, regresa el mismo polinomio. (CASO BASE 2)
sumaPolinomios([Monomio1|Resto1], [Monomio2|Resto2], [Monomio3|Resto3]) :- %suma los elementos del polinomio con sus respectivos grados y regresa un nuevo polinomio con el resultado de la suma, además recorre la cabeza.
   Monomio3 is Monomio1+Monomio2,
   sumaPolinomios(Resto1, Resto2, Resto3). %aquí recorre la cabeza (Llamada recursiva).

multiplicaCoeficientes([],Cociente2,[]).
multiplicaCoeficientes([Coefiente1|Resto], Coeficiente2, [NuevoCoeficiente|Resto3]) :- %multiplica los coeficientes de los polinomios
   NuevoCoeficiente is Coefiente1*Coeficiente2,
   multiplicaCoeficientes(Resto, Coeficiente2, Resto3). %Recorre la cabeza del primer polinomio para que se multiplique con cada coeficiente del segundo

multiplicaPolinomios(,[],[]). %No importa cual sea el primer polinomio, sino tiene con que multiplicar regresa una lista vacia. (CASO BASE 1)
multiplicaPolinomios(Polinomio1,[Monomio|Resto], Polinomio3) :- %Multiplica el primer polinomio con el segundo, pero el segundo recorre la cabeza (primer elemento del polinomio) y regresa un nuevo polinomio resultado de la multiplicación
   multiplicaPolinomios(Polinomio1,Resto, ResultadoMP), %llamada recursiva
   multiplicaCoeficientes(Polinomio1, Monomio, ResultadoMC),%llamada a multiplicaCoeficientes
   sumaPolinomios(ResultadoMC, [0.0|ResultadoMP], Polinomio3). %llamada a sumaPolinomios