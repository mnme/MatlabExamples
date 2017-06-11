%Überprüfen Lösbarkeit von Matritzen
A = [1 2 3; 2 4 16]
b = [18;-4]

% Überprüfen ob LGS Ax=b loesbar ist
rank([A,b]) == rank(A)  

% Loesung x = x_hom + x^*
% x_hom: Loesung von Ax=0 
x_hom = null(A) % Richtungsvektor [-2;1;0] ==> Falls: [0 0 0]: LGS hat eine eindeutige Lösung
x2 = null(A)

% x^*: 1 beliebige Loesung von Lgs
x_spez = A\b

% Oder lösen mit rref()
rref([A,b])

% Loesung ist 1-dimensional (im R^3), namentlich:
% g: x = [30;0;-4] + lamda [-2;1;0], lamda in R

Dimension = 3 - rank(A)