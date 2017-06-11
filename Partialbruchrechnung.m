%Partialbruchzerlegung

clear all
clc

p=[5 -7 11]

q=[1 0 -3 2]

roots(q)

[A,x,a] = residue(p,q)
% A = Werte über den entsprechenden Brüchen
% x = Nullstellen