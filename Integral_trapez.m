
clear all
clc 
format longEng

x = linspace(0,pi,101);
f = sin(x).^2;
dx = pi/100

T=trapz(f)*dx           %Trapezregel
L = sum(f(1:end-1))*dx  %Linke Summe
R = sum(f(2:end))*dx    %Rechte Summe