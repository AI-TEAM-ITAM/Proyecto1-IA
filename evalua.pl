evalua(Pol,X,Res):-
    evalua2(Pol, X, 0, 0).
evalua2([Cabeza|Cola], X, Exp, Res):-
    Res is Res+Cabeza*X^Exp,
    Exp is Exp+1,
    evalua2(Cola, X, Exp, Res).