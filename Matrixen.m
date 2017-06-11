%Matrixen
A = [2,1,0;3,1,-1;0,1,4]
%Auflösen nach Gaus mit rref
rref(A)
%Determinante Berechnen
det = det(A)
%Spezifisches Element der Matrixe
A(:,1) %Obereste Reihe der Elemente
A(2:3,2)    %Zweites und dritten Element der mittleren Reihe
A(2:3,end)    %Zweites und dritten Element der Untersten Reihe

% Invertieren der Matrixe
A^-1
inv(A)

%Elementares mutliplizieren jedes Werts
A.^2 %Beachte .!

%Grösse der Matrixe. X/Y
size(A)
n = null(A)