clear all
clc

f = @(x) sin(x).^2
f([0 1 pi])

I = integral(f,0,pi)
