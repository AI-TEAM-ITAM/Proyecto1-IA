% deriv(Polynomial, variable, derivative)
% dc/dx = 0
deriv(C,X,0) :- number(C). 
% dx/dx} = 1
deriv(X,X,1).
% d(cv)/dx = c(dv/dx)
deriv(C*U,X,C*DU) :- number(C), deriv(U,X,DU).
% d(u v)/dx = u(dv/dx) + v(du/dx)
deriv(U*V,X,U*DV + V*DU) :- deriv(U,X,DU), deriv(V,X,DV).
% d(u ± v)/dx = du/dx ± dv/dx
deriv(U+V,X,DU+DV) :- deriv(U,X,DU), deriv(V,X,DV).
deriv(U-V,X,DU-DV) :- deriv(U,X,DU), deriv(V,X,DV).
% du^n/dx = nu^{n-1}(du/dx)
deriv(U^+N,X,N*U^+N1*DU) :- N1 is N-1, deriv(U,X,DU).