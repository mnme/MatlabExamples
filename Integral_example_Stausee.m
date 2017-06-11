% Stausee aufintegrieren
clc
clear all
format shortEng
load('/Users/schuepbs/Downloads/MessdatenStausee.mat')

C = 3.852e7
dt = 0.5;
t = 0:dt:365;

f=pi/9*10^6*sin(pi*t/182.5 - pi/3);

GSum = C + dt * cumsum(messwerte);
fSum = C + dt * cumsum(f);
ISum = dt * messwerte;

% GesamtMenge
subplot(1,2,2)
plot(t(2:end),GSum, t, fSum)

% Wasser Increment
subplot(1,2,1)
plot(t(2:end), messwerte, t, f)

