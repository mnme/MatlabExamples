clear all
clc


r = 30

dt = linspace(0,5,100);
uh = 0.7

v = zeros(1, length(dt));
x = zeros(1, length(dt));
a = zeros(1, length(dt));

v(1) = 50/3.6;
x(1) = 0;
a(1) = -sqrt(((9.81*uh).^2)+((v(1).^2)/r).^2);


fx = @(t,x,v) x+v*t;
fa = @(t,v) -sqrt(((9.81*uh).^2)+((v.^2)/r).^2);
fv = @(t,v,a) v + a*t;

for i = 2:length(dt)
    a(i) = fa(dt(i-1),v(i-1));
    v(i) = fv(dt(i-1), v(i-1), a(i-1));
    x(i) = fx(dt(i-1), x(i-1), v(i-1));
end

subplot(3,1,1)
plot(dt,-a)
ylim([0 20])
xlim([0 3])

subplot(3,1,2)
plot(dt,v)
ylim([0 20])
xlim([0 3])

subplot(3,1,3)
plot(dt,x)
ylim([0 20])
xlim([0 3])



