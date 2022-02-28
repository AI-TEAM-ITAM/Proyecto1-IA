% Suma de polinomios
sumaPolinomios(Polinomio1,[],Polinomio1).%si no hay otro polinomio con quien sumar regresa el mismo polinomio. (CASO BASE 1)
sumaPolinomios([],Polinomio2,Polinomio2). %si no hay otro polinomio con quien sumar, regresa el mismo polinomio. (CASO BASE 2)
sumaPolinomios([Monomio1|Resto1], [Monomio2|Resto2], [Monomio3|Resto3]) :- %suma los elementos del polinomio con sus respectivos grados y regresa un nuevo polinomio con el resultado de la suma, además recorre la cabeza.
   Monomio3 is Monomio1+Monomio2,
   sumaPolinomios(Resto1, Resto2, Resto3). %aquí recorre la cabeza (Llamada recursiva).

% Resta de polinomios
% se asume que al primer argumento (poliniomio) se le va a restar el segundo argumento(polinimio)
restaPolinomios(Polinomio1,[],Polinomio1).%si no hay otro polinomio con quien restar regresa el mismo polinomio. (CASO BASE 1)
restaPolinomios([],Polinomio2,Polinomio2). %si no hay otro polinomio con quien restar, regresa el mismo polinomio. (CASO BASE 2)
restaPolinomios([Monomio1|Resto1], [Monomio2|Resto2], [Monomio3|Resto3]) :- %resta los elementos del polinomio con sus respectivos grados y regresa un nuevo polinomio con el resultado de la resta, además recorre la cabeza.
   Monomio3 is Monomio1-Monomio2,
   restaPolinomios(Resto1, Resto2, Resto3). %aquí recorre la cabeza (Llamada recursiva).