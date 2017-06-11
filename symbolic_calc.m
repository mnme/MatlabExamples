%Symbolisch integrieren
clc
clear all
pi = sym(pi)
sin(pi)
%%
clc
clear all
 
syms x
f = (x.^2)
i = int(f,x)

wert = subs(i, x, 10)   % Wert für X einsetzten
eval(wert)              % In die Numerische Ebene transformieren

d = diff(i,x)
d = diff(d)

%%
clc
clear all

syms x z
int(x/(1+z^2),z)
int(x/(1+z^2),x)
%% Aufgabe 9.3
% a
syms x
a = 3
b = 9
f = 4/(x^3+x)
fi = int(f,x ,a,b)

eval(fi)

% b 
syms a
a = 2
b = 3
f = x/(a+x^2)
int(f,x)
int(f,x,a,b)
%%
% c
syms x

a = sym(0)
b = sym(pi/3)
f = 1/(cos(x)^4)
int(f,x)
int(f,x,a,b)
%% d
clear all
clc
syms t x
a = sym(0);

f = log(x+2*x^2)
int(f,x)
int(f,x, 2, t)




